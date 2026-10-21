
## Update Host Scan Services for Managed Resource Group (Auth roles: Admin,App)

<a id="opIdRemoveRegisteredServicesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/ManagedResourceGroup/RegisteredServices \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
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
Invoke-RestMethod -Method DELETE -Url "$($Host)/api/v1/ManagedResourceGroup/RegisteredServices" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`DELETE /api/v1/ManagedResourceGroup/RegisteredServices`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="update-host-scan-services-for-managed-resource-group-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceGroupId|query|string(uuid)|false|Managed Resource Group ID|
|body|body|array[string]|false|Registered Services IDs to remove|

> Example responses

> 200 Response

```json
{
  "passed": 0,
  "failed": 0,
  "report": [
    "string"
  ]
}
```

<h3 id="update-host-scan-services-for-managed-resource-group-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.PassFailReportDto](../Models/sbpam.models.passfailreportdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


