
## Schedules a test job for the specified managed resource (Auth roles: Admin)

<a id="opIdScanResourceAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/WizardState/ScanResource/{resourceId} \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/WizardState/ScanResource/{resourceId} -Headers $Headers
```

`POST /api/v1/WizardState/ScanResource/{resourceId}`

<h3 id="schedules-a-test-job-for-the-specified-managed-resource-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|resourceId|path|string(uuid)|true|Id of Managed Resource to test|
|platformDetectionOnly|query|boolean|false|When true, the scan only detects and persists the host platform/OS and skips the full enumeration scan.|

> Example responses

> 200 Response

```json
{
  "errorCode": 0,
  "errorMessage": "string",
  "errorDetails": "string",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "success": true
}
```

<h3 id="schedules-a-test-job-for-the-specified-managed-resource-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.WizardDomainSyncDto](../Models/sbpam.models.wizarddomainsyncdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


