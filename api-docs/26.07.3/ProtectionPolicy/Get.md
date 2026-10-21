
## Retrieve a policy by policy id. (Auth roles: Admin,App)

<a id="opIdGet"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ProtectionPolicy/{protectionPolicyId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ProtectionPolicy/{protectionPolicyId} -Headers $Headers
```

`GET /api/v1/ProtectionPolicy/{protectionPolicyId}`

<h3 id="retrieve-a-policy-by-policy-id.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|protectionPolicyId|path|string(uuid)|true|none|
|ignoreStatus|query|boolean|false|If true get policy, ignoring deleted/disabled status|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "groupMonitorInterval": 0,
  "managedResourceIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "managedResourceGroupIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "groupMembers": [
    {
      "groupName": "string",
      "groupMember": "string"
    }
  ]
}
```

<h3 id="retrieve-a-policy-by-policy-id.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.SimpleProtectionPolicy](../Models/sbpam.models.simpleprotectionpolicy.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


