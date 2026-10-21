
## Gets individual IP Address Rules by Id (Auth roles: Admin,App)

<a id="opIdGetIPAddressRuleAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/IPAddressRule/{ipAddressRuleId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/IPAddressRule/{ipAddressRuleId} -Headers $Headers
```

`GET /api/v1/IPAddressRule/{ipAddressRuleId}`

<h3 id="gets-individual-ip-address-rules-by-id-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|ipAddressRuleId|path|string(uuid)|true|none|

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

<h3 id="gets-individual-ip-address-rules-by-id-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.IPAddressRule](../Models/sbpam.models.ipaddressrule.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


