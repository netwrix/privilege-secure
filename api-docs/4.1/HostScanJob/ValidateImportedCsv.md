
## Validate host scan requests to generate host scan jobs (Auth roles: Admin,App)

<a id="opIdValidateImportedCsv"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/HostScanJob/ValidateImportedCSV \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/HostScanJob/ValidateImportedCSV" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/HostScanJob/ValidateImportedCSV`

> Body parameter

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

<h3 id="validate-host-scan-requests-to-generate-host-scan-jobs-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.HostScanJobRequest](../Models/sbpam.models.hostscanjobrequest.md)|false|none|

> Example responses

> 200 Response

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

<h3 id="validate-host-scan-requests-to-generate-host-scan-jobs-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="validate-host-scan-requests-to-generate-host-scan-jobs-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.HostScanJobResponse](../Models/sbpam.models.hostscanjobresponse.md)]|false|none|none|
|» dnsHostName|string¦null|false|none|DNS hostname.|
|» ipAddress|string¦null|false|none|IP Address to use if DNS resolution fails|
|» os|string¦null|false|none|Default OS value if scan fails|
|» credentialId|string(uuid)|false|none|Id of credentials for host.|
|» credentialName|string¦null|false|none|Name of credentials for host.|
|» platformName|string¦null|false|none|none|
|» acceptThumbprintOnFirstDiscovery|boolean|false|none|Accept thumbprint on first discovery will allow the scan to complete and store the found thumbprint as trusted|
|» sshTrustActionType|any|false|none|none|
|» certificateType|any|false|none|none|
|» trustedThumbprint|string¦null|false|none|Trusted thumbprint|
|» sshPort|integer(int32)¦null|false|none|SSH Port|
|» source|string¦null|false|none|none|
|» credentialNameError|string¦null|false|none|none|
|» platformNameError|string¦null|false|none|none|
|» ipAddressError|string¦null|false|none|none|
|» dnsHostNameError|string¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


