
## Create IP Address Rule (ManagedAccount or ActivityConfiguration). (Auth roles: Admin,App)

<a id="opIdCreateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/IPAddressRule \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "address": "string",
  "allowed": true,
  "ipAddressRuleType": "Standard",
  "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/IPAddressRule" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/IPAddressRule`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "address": "string",
  "allowed": true,
  "ipAddressRuleType": "Standard",
  "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="create-ip-address-rule-(managedaccount-or-activityconfiguration).-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.IPAddressRule](../Models/sbpam.models.ipaddressrule.md)|false|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "address": "string",
  "allowed": true,
  "ipAddressRuleType": "Standard",
  "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="create-ip-address-rule-(managedaccount-or-activityconfiguration).-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.IPAddressRule](../Models/sbpam.models.ipaddressrule.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


