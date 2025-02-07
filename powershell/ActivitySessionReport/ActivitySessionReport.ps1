<#
.SYNOPSIS
    Use NPS API to report on Activity Sessions for a time range filtered by user.
    
.DESCRIPTION
    See README.md

.PARAMETER NpsUrl
    Specifies the URL for the Network Policy Server (NPS). This parameter is mandatory and requires a string value.

.PARAMETER NpsAdmin
    Specifies the credentials (username and password) for the NPS administrator. This parameter is mandatory and requires a PSCredential object.

.PARAMETER MfaCode
    Specifies the Multi-Factor Authentication (MFA) code. This parameter is mandatory and requires a string value.

.PARAMETER StartDate
    Specifies the start date for the operation or query. This parameter is mandatory and requires a DateTime object.

.PARAMETER Days
    Specifies the number of days from the StartDate for the operation or query to cover. This parameter is mandatory and requires an integer value.

.PARAMETER SearchUser
    Specifies the username to search for in the operation or query. This parameter is optional.

.PARAMETER OutFile
    Specifies the path to the output file where results will be saved. This parameter is mandatory and requires a string value.  

.INPUTS
  None

.OUTPUTS
  CSV File named after OutFile. The OutFile is overwritten EVERY time.

.NOTES
  Version:        1.0
  Author:         Kevin Horvatin
  Creation Date:  Thursday, February 6, 2025
  Purpose/Change: Initial script development

.EXAMPLE
    $credential = Get-Credential
    .\ActivitySEssionReport.ps1 -NpsUrl "https://nps.example.com" -NpsAdmin $credential -MfaCode "123456" -StartDate "2023-01-01" -Days 30 -SearchUser "john.doe" -OutFile "C:\output\results.csv"
    This example runs the script with all mandatory parameters provided, including NPS URL, administrator credentials, MFA code, start date, number of days, user to search, and output file path.

.EXAMPLE
    $credential = Get-Credential
    $startDate = Get-Date -Date "2023-01-01"
    .\YourScriptName.ps1 -NpsUrl "https://nps.example.com" -NpsAdmin $credential -MfaCode "789012" -StartDate $startDate -Days 15 -SearchUser "jane.doe" -OutFile "C:\output\jane_results.csv"
    This example shows how to run the script for a specific user "jane.doe" over a 15-day period starting from January 1, 2023, illustrating how to use the `Get-Date` cmdlet to specify the start date.

.EXAMPLE
    $credential = Get-Credential
    $startDate = Get-Date -Date "2023-01-01"
    .\YourScriptName.ps1 -NpsUrl "https://nps.example.com" -NpsAdmin $credential -MfaCode "789012" -StartDate $startDate -Days 15 -OutFile "C:\output\results.csv"
    This example shows how to run the script to get all sessions over a 15-day period starting from January 1, 2023, illustrating how to use the `Get-Date` cmdlet to specify the start date.

#>


[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [string]$NpsUrl,
    [Parameter(Mandatory=$true)]
    [PSCredential]$NpsAdmin,
    [Parameter(Mandatory=$true)]
    [string]$MfaCode,
    [Parameter(Mandatory=$true)]
    [DateTime]$StartDate,
    [Parameter(Mandatory=$true)]
    [int]$Days,
    [Parameter(Mandatory=$false)]
    [string]$SearchUser,
    [Parameter(Mandatory=$true)]
    [string]$OutFile
)

Import-Module SbPAMAPI -Force

function ConvertTo-StatusString
{
    [CmdletBinding()]
    param (
        [Parameter()]
        $Status
    )

    switch ($Status)
    {
        -1 { return "Approval Required (-1)" }
        0 { return "Pending (0)" }
        1 { return "Active (1)" }
        2 { return "Cancelling (2)" }
        3 { return "Complete (3)" }
        4 { return "Failed (4)" }
        5 { return "Cancelled (5)" }
        6 { return "Approval Denied (6)" }
        7 { return "Approval Failed (7)" }
        default { return "Unknown ($($Status))" }
    }
}

function ConvertTo-ApprovalStateString
{
    [CmdletBinding()]
    param (
        [Parameter()]
        $ApprovalState
    )

    switch ($ApprovalState)
    {
        0 { return "Pending (0)" }
        1 { return "Approved (1)" }
        2 { return "Denied (2)" }
        default { return "Unknown ($($ApprovalState))" }
    }
}

function Get-User
{
    [CmdletBinding()]
    param (
        [Parameter()]
        $UserId,
        [Parameter()]
        $token,
        [Parameter()]
        $NpsUrl
    )

    if ($Global:UserIdToUser.ContainsKey($UserId))
    {
        return $Global:UserIdToUser[$UserId]
    }

    $user = Invoke-SbPAMRest -Uri "$NpsUrl/api/v1/User/$UserId" -Token $token -SkipCertificateCheck -ErrorAction Stop
    $Global:UserIdToUser[$UserId] = $user
    return $user
}

function Get-ApprovalData
{
    param(
        [Parameter()]
        $ActivitySession,
        [Parameter()]
        $approval,
        [Parameter()]
        $approver,
        [Parameter()]
        $approverUser,
        [Parameter()]
        $proxySession
    )

    $data = New-Object PsObject -Property @{
        SessionId = $($activitySession.Id)
        User = "$($activitySession.userdisplayname)"
        LoginAccount = "$($activitySession.loginAccountName)"
        Resource = "$($activitySession.managedResourceName)"
        ActivityName = "$($activitySession.activityName)"
        PolicyName = "$($activitySession.accessPolicyName)"
        Ticket = "$($activitySession.ticket)"
        Notes = "$($activitySession.note)"
        StartDateUtc = "$($activitySession.startDateTimeUtc)"
        ActualStartDateUtc = "$($activitySession.actualStartDateTimeUtc)"
        EndDateUtc = "$($ActivitySession.endDateTimeUtc)"
        ActualEndDateTimeUtc = "$($ActivitySession.ActualEndDateTimeUtc)"
        CreatedUtc = "$($activitySession.createdDateTimeUtc)"
        ModifiedUtc = "$($activitySession.modifiedDateTimeUtc)"
        Status = "$(ConvertTo-StatusString -Status $activitySession.status)"
        StatusDescription = "$($activitySession.statusDescription)"
        ProxySessionId = ""
        ProxySessionType = ""
        ProxySessionStartUtc = ""
        ProxySessionEndUtc = ""
        Approver = ""
        AproverName = ""
        ApproverEmail = ""
        ApproverUpn = ""
        ApproverSid = ""
        ApprovalState = ""
        ApprovalNotes = ""
        ApprovalCreatedUtc = ""
        ApprovalModifiedUtc = ""
        Url = "$NpsUrl/api/v1/activitysession/$($activitySession.Id)"
        ApprovalUrl = "$NpsUrl/api/v1/ApprovalWorkflow/Approval?activitySessionId=$($activitySession.Id)"
    }

    if ($null -ne $approval)
    {
        $data.ApprovalState = $(ConvertTo-ApprovalStateString -ApprovalState $approval.approvalState)
        $data.ApprovalNotes = "$($approval.approverNotes)"
        $data.ApprovalCreatedUtc = "$($approval.createdDateTimeUtc)"
        $data.ApprovalModifiedUtc = "$($approval.modifiedDateTimeUtc)"
    }
    if ($null -ne $approver)
    {
        $data.AproverName = "$($approver.name)"
        $data.ApproverSid = "$($approver.sid)"
    }
    if ($null -ne $approverUser)
    {
        $data.Approver = "$($approverUser.samAccountName)"
        $data.ApproverEmail = "$($approverUser.email)"
        $data.ApproverUpn = "$($approverUser.userPrincipalName)"
    }
    if ($null -ne $proxySession)
    {
        $data.ProxySessionId = "$($proxySession.Id)"
        $data.ProxySessionType = "$($proxySession.type)"
        $data.ProxySessionStartUtc = "$($proxySession.startDateTimeUtc)"
        $data.ProxySessionEndUtc = "$($proxySession.endDateTimeUtc)"
    }
    $data
}

function Renew-Token
{
    [CmdletBinding()]
    param (
        [string]
        $UserToken,
        [string]
        $Uri
    )
    $mfaObj = Convert-SbPAMToken $userToken
    $expiration = Get-Date -UnixTimeSeconds $mfaObj.exp
    if ($expiration -lt (Get-Date).AddMinutes(7)) {
        Write-Host "$(Get-Date) Refreshing token"
        $userToken = Invoke-SbPAMRest -Uri "$Uri/api/v1/UserToken" -Token $userToken -ErrorAction Stop -SkipCertificateCheck
    }
    return $UserToken
}

$Global:UserIdToUser = @{}

# create the web session
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
# grab the user token
Write-Host "Logging in to $NpsUrl as $($npsAdmin.UserName)"
$token = Get-SbPAMToken -Credential $npsAdmin -Uri $NpsUrl -WebSession $WebSession -SkipCertificateCheck -ErrorAction Stop
Write-Host "Getting MFA Token"
$token = Get-SbPAMMfaToken -Uri $NpsUrl -Token $token -Code $mfaCode -WebSession $WebSession -SkipCertificateCheck -ErrorAction Stop

# Get the Activity Session data
$startDateUtc = $startDate.ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ss.fffZ")
$endDateUtc = $startDate.AddDays($days).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ss.fffZ")
$skip = 0
$take = 100
$url = "$NpsUrl/api/v1/ActivitySession/SummaryByStatus/Historical?mysessions=false&UserName=$($SearchUser)&startDate=$startDateUtc&endDate=$endDateUtc&skip=$($skip)&take=0" # Initial fetch is to get the total count
Write-Host "Url: $url"
Write-Host "Getting Activity Sessions from $startDateUtc to $endDateUtc"
Write-Host "Will export to $OutFile"

$SessionData = @()
$ActivitySessions = Invoke-SbPAMRest -Uri "$url" -Token $token -SkipCertificateCheck -ErrorAction Stop
$TotalToFetch = $ActivitySessions.recordsTotal
Write-Host "Found $TotalToFetch Activity Sessions"
$Processed = 0

do
{
    $Token = Renew-Token -UserToken $Token -Uri $NpsUrl
    $url = "$NpsUrl/api/v1/ActivitySession/SummaryByStatus/Historical?mysessions=false&UserName=$($SearchUser)&startDate=$startDateUtc&endDate=$endDateUtc&skip=$($skip)&take=$($take)" 

    $ActivitySessions = Invoke-SbPAMRest -Uri "$url" -Token $token -SkipCertificateCheck -ErrorAction Stop
    $TotalFetched += $ActivitySessions.data.Count

    Write-Progress -Activity "Exporting" -Status "Found $($ActivitySessions.Data.Count) Activity Sessions ($TotalFetched of $($TotalToFetch))" -PercentComplete ($Processed / $TotalToFetch * 100)

    $ActivitySessions.Data | ForEach-Object {
        $Processed++
        # Uncomment following line to see the full JSON object
        #Write-Host "$(ConvertTo-Json $_)"
        $activitySession = $_
        $ApprovalData = Get-ApprovalData -ActivitySession $activitySession 
           
        $approvalUrl = "$NpsUrl/api/v1/ApprovalWorkflow/Approval?activitySessionId=$($activitySession.Id)"
        
        Write-Progress  -Activity "Exporting" -Status  "Getting approval history for $($activitySession.Id) $($activitySession.userdisplayname) $($activitySession.managedResourceName) $($activitySession.activityName)" -PercentComplete ($Processed / $TotalToFetch * 100)
        $approvals = Invoke-SbPAMRest -Uri $approvalUrl -Token $token -SkipCertificateCheck -ErrorAction Stop
        $GotApprovals = $false
        if ($approvals.Count -gt 0) {
            $approvals | foreach-object {
                $state = $_.approvalState
                if ($state -gt 0) {
                    $GotApprovals = $true
                    $approval = $_
                    $approver = $_.approverAccount
                    $approverUser = Get-User -UserId $approver.userId -token $token -NpsUrl $NpsUrl

                    if ($null -ne $_.proxySessions -and $_.proxySessions.Count -gt 0) {
                        $_.proxySessions | ForEach-Object {
                            $ApprovalData = Get-ApprovalData -ActivitySession $activitySession -approval $approval -approver $approver -approverUser $approverUser -proxySession $_
                            $SessionData += $ApprovalData
                        }
                    }
                    else {
                        $ApprovalData = Get-ApprovalData -ActivitySession $activitySession -approval $approval -approver $approver -approverUser $approverUser
                        $SessionData += $ApprovalData
                    }
                }
            }
        }
        else {
            if (!$GotApprovals) {
                if ($null -ne $_.proxySessions -and $_.proxySessions.Count -gt 0) {
                    $_.proxySessions | ForEach-Object {
                        $ApprovalData = Get-ApprovalData -ActivitySession $activitySession -proxySession $_
                        $SessionData += $ApprovalData
                    }
                }
                else {
                    $ApprovalData = Get-ApprovalData -ActivitySession $activitySession
                    $SessionData += $ApprovalData
                }
            }
        }
    }
    $skip += $take
}
while ($TotalFetched -lt $TotalToFetch -and $ActivitySessions.Data.Count -gt 0)

Write-Host "Exporting $($SessionData.Count) Records to $OutFile"
'"SessionId","User","LoginAccount","Resource","ActivityName","PolicyName","Ticket","Notes","StartDateUtc","ActualStartDateUtc","EndDateUtc", "ActualEndDateUtc","CreatedUtc","ModifiedUtc","Status","StatusDescription","ProxySessionId","ProxySessionType","ProxySessionStartUtc","ProxySessionEndUtc","Approver","AproverName","ApproverEmail","ApproverUpn","ApproverSid","ApprovalState","ApprovalNotes","ApprovalCreatedUtc","ApprovalModifiedUtc","Url","ApprovalUrl"' | Out-File -Path $OutFile -Encoding utf8NoBOM
$SessionData | Export-Csv -Path $OutFile -NoTypeInformation -Append -NoHeader -Force
Write-Host "Export complete"