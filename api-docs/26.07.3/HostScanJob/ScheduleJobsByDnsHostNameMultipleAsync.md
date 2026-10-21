
## Schedule host scans for hosts auto-onboarded by OU (Auth roles: Admin,App)

<a id="opIdScheduleJobsByDnsHostNameMultipleAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/HostScanJob/OuMapping/{credentialId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "string"
]
"@

$Host = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($Host)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebRequestSession $WebSession
$Token = Invoke-RestMethod -Url "$($Host)/sigin2fa" -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"} -WebRequestSession $WebSession

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/HostScanJob/OuMapping/{credentialId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/HostScanJob/OuMapping/{credentialId}`

> Body parameter

```json
[
  "string"
]
```

<h3 id="schedule-host-scans-for-hosts-auto-onboarded-by-ou-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credentialId|path|string(uuid)|true|Service account id|
|body|body|array[string]|false|List of FQDN host names|

> Example responses

> 200 Response

```json
{
  "id": "9c711ab3-8fc1-4d66-88d4-08f85117f32e",
  "status": null,
  "statusDescription": "Running.",
  "hostScanHostStatus": []
}
```

<h3 id="schedule-host-scans-for-hosts-auto-onboarded-by-ou-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.HostScanJobStatus](../Models/sbpam.models.hostscanjobstatus.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


