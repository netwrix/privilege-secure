[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string]
    $Username,
    # Parameter help description
    [Parameter(Mandatory = $true)]
    [SecureString]
    $Password,
    [Parameter(Mandatory = $true)]
    [string]
    $Code,
    [Parameter(Mandatory = $false)]
    [string]
    $SbPAMUrl = $null,
    [Parameter(Mandatory)]
    [string]
    $SbPAMProxy,
    [string]
    $UserToExport,
    [switch]
    $GroupByActivity,
    [switch]
    $GroupByPolicy
)
Import-Module SbPAMAPI
if ($null -ne $SbPAMUrl)
{
    $SbPAMUrl = "https://$($SbPAMProxy):6500"
}

function Invoke-Export
{
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $Username,
        # Parameter help description
        [Parameter(Mandatory = $true)]
        [securestring]
        $Password,
        [Parameter(Mandatory = $true)]
        [string]
        $Code,
        [Parameter(Mandatory)]
        [string]
        $SbPAMUrl,
        [Parameter(Mandatory)]
        [string]
        $SbPAMProxy,
        [string]
        $UserToExport
    )

    $userCred = New-Object PSCredential $userName, $Password

    $WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession

    $jwt = Get-SbPAMToken -Credential $userCred -Uri $SbPAMUrl -WebSession $WebSession -ErrorAction Stop -SkipCertificateCheck
    if ($null -eq $jwt) {
        Write-Error "Unable to get JWT from SbPAM."
        return
    }

    $jwt = Get-SbPAMMfaToken -Uri $SbPAMUrl -WebSession $WebSession -ErrorAction Stop -Token $jwt -Code $Code -SkipCertificateCheck
    if ($null -eq $jwt) {
        Write-Error "Unable to get JWT from SbPAM."
        return
    }
    $jwtObj = Convert-SbPAMToken -Token $jwt

    if ($null -eq $UserToExport -or "" -eq $UserToExport)
    {
        Write-Host "Exporting activities for $($jwtObj.sub)"
        Export-ActivityCsv -Uri $SbPAMUrl -ManagedAccountId $jwtObj.ManagedAccountId -Username $jwtObj.sub -Token $jwt
    }
    else {
        if ($jwtObj."http://stealthbits.com/pam/roles" -match "admin")
        {
            $User = Get-SbPAMUser -Token $jwt -Uri $SbPAMUrl -User $UserToExport -SkipCertificateCheck
            if ($null -eq $User -or $User.Count -le 0) {
                Write-Error "Unable to find user $UserToExport"
                exit
            }
            Export-ActivityCsv -Username $User.SamAccountname -Token $jwt -Uri $SbPAMUrl -ManagedAccountId $User.Id
        }
        else
        {
            Write-Error "Need to be Admin to export activities for other users."
            exit
        }
    }
}

function Get-CardResources {
    param (
        $ActivityId,
        $PolicyId,
        $Uri,
        $Token
    )
    $SearchUrl = "$($Uri)/api/v1/AccessControlPolicy/ActivitySessionResources"
    $Resources = @()
    $Take = 100
    $Skip = 0
    do {
        $PageUrl = "$($SearchUrl)?skip=$($Skip)&take=$($Take)&activityId=$($ActivityId)&policyId=$($PolicyId)"
        #Write-Host $PageUrl
        $result = Invoke-SbPAMRest -Uri $PageUrl -Token $token -SkipCertificateCheck
        #Write-Host "Found $($result.Data.Count)"
        $result.Data | foreach-object { 
            $Resource = @{ PlatformName = $_.resource.PlatformName; DnsHostName = $_.resource.DnsHostName }
            #Write-Host (ConvertTo-Json $Resource)
            $Resources += $Resource
        }
        $Skip += $Take
    }
    while ($result.Data.Count -ge $Take)
    $Resources
}

function Export-ActivityCsv
{
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $Username,
        [Parameter()]
        [string]
        $ManagedAccountId,
        [Parameter()]
        [string]
        $Token,
        [Parameter()]
        [string]
        $Uri
    )
    $cards = Invoke-SbPAMRest -Uri "$($Uri)/api/v1/AccessControlPolicy/ActivityCardWithPolicies?groupbyPolicy=false" -Token $Token -SkipCertificateCheck
    $Items = @()
    $cards.data | ForEach-Object {
        $Card = $_
        #Write-Host (ConvertTo-Json $Card)
        if ($Card.ActivityType -eq 2) { Write-Host "Skipping task automation activity: $($Card.Name)"}
        else {
            Get-CardResources -Activity $Card.Id -Policy $Card.PolicyId -Uri $Uri -Token $Token | ForEach-Object {
                $Items += @{
                    Policy = $Card.PolicyName
                    Platform = $_.PlatformName
                    Resource = $_.DnsHostName
                    Activity = $Card.Name
                    Description = $Card.Description
                }
            }
        }
    }
    $Items
}

function Get-SbPAMUser
{
    param
    (
        $Token, 
        $Uri,
        $User
    )
    $UserPart = [System.Web.HttpUtility]::UrlEncode($User)

    $SearchResult = Invoke-SbPAMRest -Uri "$($Uri)/api/v1/ManagedAccount/Search?filterText=$UserPart" -Token $Token -WebSession $WebSession -SkipCertificateCheck
    return $SearchResult.Data
}

# Create the list of folders
# Maps a property of the item to a list of folders
# Activity, Policy, Resource
function New-Folders
{
    param(
        $FolderSelector,
        $Items,
        $ParentFolder,
        $FolderSelector2
    )
    $Folders = @()
    $Items | ForEach-Object {
        $Item = $_
        $FolderName = $Item."$FolderSelector"
        Write-Host "Looking for $FolderName ($FolderSelector)"
        if ($null -eq $FolderName) {
            Write-Host (ConvertTo-Json $Item)
            exit
        }
        $FolderMap = $Folders | Where-Object { $_.Name -eq $FolderName }
        if ($null -eq $FolderMap) {
            Write-Host "Creating $FolderName"
            $FolderMap = @{
                Name = $FolderName
                Folder = New-RoyalObject -Type RoyalFolder -Folder $ParentFolder -Name $FolderName -ErrorAction Stop
            }
            $Folders += $FolderMap
        }
        if ($FolderSelector2) {
            $SubFolderName = $Item."$FolderSelector2"
            $SubFolderMap = $Folders | Where-Object { $_.Name -eq "$($FolderName)/$($SubFolderName)" }
            if ($null -eq $SubFolderMap) {
                Write-Host "Creating $FolderName / $SubFolderName"
                $Folders += @{
                    Name = "$($FolderName)/$($SubFolderName)"
                    Folder = New-RoyalObject -Type RoyalFolder -Folder $FolderMap.Folder -Name $SubFolderName -ErrorAction Stop
                }
            }
        }
    }

    return $Folders
}

function New-Export 
{
    param(
        $Items,
        $SbPAMProxy,
        $Username,
        [Switch]
        $GroupbyActivity,
        [Switch]
        $GroupbyPolicy
    )

    Install-Module -Name RoyalDocument.PowerShell

    #create a RoyalStore in memory
    $RoyalStore = New-RoyalStore -UserName $uSERNAME
    
    #Check to see if you have a Royal Document saved
    $RoyalDocName = "RoyalConnections"
    $homeDir = $env:USERPROFILE
    if ($null -eq $homeDir) {
        $homeDir = $env:HOME
    }
    $RoyalDocPath = Join-Path -Path $homeDir -ChildPath "Desktop/$($RoyalDocName).rtsz"
    $RoyalDocCheck = Test-Path $RoyalDocPath
    $idx = 0
    while ($RoyalDocCheck)
    {
        $idx++
        $RoyalDocPath = Join-Path -Path $homeDir -ChildPath "Desktop/$($RoyalDocName)_$($idx).rtsz"
        $RoyalDocCheck = Test-Path $RoyalDocPath        
    }
    Write-Host "Exporting to $RoyalDocPath"

    $royalDocument = New-RoyalDocument -Name $RoyalDocName -FileName $RoyalDocPath -Store $RoyalStore -ErrorAction Stop
    $Folders = @()
    if ($null -ne $royalDocument) {
        if ($GroupbyActivity.IsPresent) {
            $FolderSelector = "Activity"
            $Folders = New-Folders -FolderSelector $FolderSelector -Items $Items -ParentFolder $royalDocument 
        }
        elseif ($GroupbyPolicy.IsPresent) {
            $FolderSelector = "Policy"
            $FolderSelector2 = "Activity"
            $Folders = New-Folders -FolderSelector $FolderSelector -Items $Items -ParentFolder $royalDocument -FolderSelector2 $FolderSelector2
        }
        else {
            $Folders = @(
                @{
                    Name = "Windows"
                    Folder = New-RoyalObject -Type RoyalFolder -Folder $royalDocument -Name "RdpConnections" -Description "Folder for RSP Connections" -ErrorAction Stop
                },
                @{
                    Name = "Linux"
                    $Folder = New-RoyalObject -Type RoyalFolder -Folder $royalDocument -Name "SshConnections" -Description "Folder for SSH Connectioins" -ErrorAction Stop
                })
            $FolderSelector = "Platform"
        }
        $Items | ForEach-Object {
            $Item = $_
            #get the necessary information from each object in the csv file 
            $SessionHost = $SbPAMProxy
            $SshPort = "4422"
            $RdpPort = "4489"
            $Activity = $Item.Activity
            $Resource = $Item.Resource
            $Platform = $Item.Platform
            $Description = $Item.Description
            #Manipulate elements of the csv file to create  configuration strings
            $ConnectionName = $Username + "+" + $Activity + "+" + $Resource 
            $ConnectionName = $ConnectionName -replace(" ","_")
            $FolderName = $Item."$FolderSelector"
            if ($null -ne $FolderSelector2) {
                $FolderName = "$FolderName/$($Item."$FolderSelector2")"
            }
            $Folder = $Folders | Where-Object { $_.Name -eq $FolderName } | Select-Object -First 1
            if($null -ne $Folder){
                $Name = "$Resource $Activity"
                if ($GroupbyActivity.IsPresent -or $GroupbyPolicy.IsPresent)
                {
                    $Name = $Resource
                }
                if($Platform -eq "Linux"){
                    $SSH = New-RoyalObject -Type RoyalSSHConnection -Folder $Folder.Folder -Name $ConnectionName -Description $Description -ErrorAction Stop
                    $SSH.Name = $Name
                    $SSH.CredentialUsername = $ConnectionName
                    $SSH.URI = $SessionHost
                    $SSH.Port = $SshPort
                    $SSH.CredentialMode = "2"
                    $SSH.CredentialAutologon = "False"
                    $SSH.ConnectionType = "ssh;SSH Connection"  
                }
                eLseif($Platform -eq "Windows"){
                    $rds = New-RoyalObject -Type RoyalRDSConnection -Folder $Folder.Folder -Name $ConnectionName -Description $Description -ErrorAction Stop
                    $rds.URI = $SessionHost
                    $rds.CredentialUsername = $ConnectionName
                    $rds.Name = $Name
                    $rds.RDPPort = $RdpPort
                    $rds.CredentialMode = "2"
                }
                else {
                    Write-Verbose "Skipping $Activity for $Resource unhandled platform $Platform"
                }
            }
            else {
                Write-Host "Unable to find folder for $($FolderName)"
            }
        }
        
        Out-RoyalDocument -Document $royalDocument | Out-Null
        Close-RoyalDocument -Document $royalDocument | Out-Null
    }
}

$Items = Invoke-Export -Username $Username -Password $Password -Code $Code -UserToExport $UserToExport  -SbPAMUrl $SbPAMUrl -SbPAMProxy $SbPAMProxy
New-Export -Items $Items -SbPAMProxy $SbPAMProxy -Username $Username -GroupbyPolicy:$GroupByPolicy.IsPresent -GroupbyActivity:$GroupByActivity.IsPresent
