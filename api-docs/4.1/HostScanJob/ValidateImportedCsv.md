
## Validate host scan requests to generate host scan jobs (Auth roles: Admin,App)

<a id="opIdValidateImportedCsv"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/HostScanJob/ValidateImportedCSV \
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
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/HostScanJob/ValidateImportedCSV" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/HostScanJob/ValidateImportedCSV`

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

<h3 id="validate-host-scan-requests-to-generate-host-scan-jobs-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.HostScanJobRequest](../Models/sbpam.models.hostscanjobrequest.md)|false|none|

> Example responses

> 200 Response

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
    "source": "string",
    "credentialNameError": "string",
    "platformNameError": "string",
    "ipAddressError": "string",
    "dnsHostNameError": "string"
  }
]
```


</details>

<h3 id="validate-host-scan-requests-to-generate-host-scan-jobs-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="validate-host-scan-requests-to-generate-host-scan-jobs-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.HostScanJobResponse](../Models/sbpam.models.hostscanjobresponse.md)]|false|none|none|
|» dnsHostName|string¦null|false|none|none|
|» ipAddress|string¦null|false|none|none|
|» os|string¦null|false|none|none|
|» credentialId|string(uuid)|false|none|none|
|» credentialName|string¦null|false|none|none|
|» platformName|string¦null|false|none|none|
|» acceptThumbprintOnFirstDiscovery|boolean|false|none|none|
|» sshTrustActionType|any|false|none|none|
|» certificateType|any|false|none|none|
|» trustedThumbprint|string¦null|false|none|none|
|» sshPort|integer(int32)¦null|false|none|none|
|» source|string¦null|false|none|none|
|» credentialNameError|string¦null|false|none|none|
|» platformNameError|string¦null|false|none|none|
|» ipAddressError|string¦null|false|none|none|
|» dnsHostNameError|string¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


