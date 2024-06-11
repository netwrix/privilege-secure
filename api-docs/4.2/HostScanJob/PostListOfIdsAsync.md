
## Create a host scan job. (Auth roles: Admin,App)

<a id="opIdPostListOfIdsAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/HostScanJob \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "dnsHostName": "string",
    "ipAddress": "string",
    "os": "string",
    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
    "credentialName": "string",
    "platformName": "string",
    "acceptThumbprintOnFirstDiscovery": true,
    "sshTrustActionType": null,
    "certificateType": null,
    "trustedThumbprint": "string",
    "sshPort": 0,
    "source": "string"
  }
]
"@

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method POST -Url "$($NPSUrl)/api/v1/HostScanJob" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/HostScanJob`

> Body parameter

<details><summary>JSON</summary>


```json
[
  {
    "dnsHostName": "string",
    "ipAddress": "string",
    "os": "string",
    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
    "credentialName": "string",
    "platformName": "string",
    "acceptThumbprintOnFirstDiscovery": true,
    "sshTrustActionType": null,
    "certificateType": null,
    "trustedThumbprint": "string",
    "sshPort": 0,
    "source": "string"
  }
]
```


</details>

<h3 id="create-a-host-scan-job.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.HostScanJobRequest](../Models/sbpam.models.hostscanjobrequest.md)|false|none|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "status": null,
  "statusDescription": "string",
  "hostScanHostStatus": [
    {
      "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "name": "string",
      "dnsHostName": "string",
      "os": "string",
      "ipAddress": "string",
      "version": "string",
      "status": null,
      "statusDescription": "string",
      "failureReason": null
    }
  ]
}
```


</details>

<h3 id="create-a-host-scan-job.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.HostScanJobStatus](../Models/sbpam.models.hostscanjobstatus.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


