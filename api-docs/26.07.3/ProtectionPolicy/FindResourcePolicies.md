
## Retrieve policies by managed resource id. (Auth roles: Admin,App)

<a id="opIdFindResourcePolicies"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ProtectionPolicy/ManagedResource/{managedResourceId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ProtectionPolicy/ManagedResource/{managedResourceId} -Headers $Headers
```

`GET /api/v1/ProtectionPolicy/ManagedResource/{managedResourceId}`

<h3 id="retrieve-policies-by-managed-resource-id.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceId|path|string(uuid)|true|none|
|directOnly|query|boolean|false|none|

> Example responses

> 200 Response

```json
[
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
]
```

<h3 id="retrieve-policies-by-managed-resource-id.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="retrieve-policies-by-managed-resource-id.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.SimpleProtectionPolicy](../Models/sbpam.models.simpleprotectionpolicy.md)]|false|none|none|
|» id|string(uuid)|false|none|Unique id and DB key for this item.|
|» name|string¦null|false|none|Name of this policy.|
|» description|string¦null|false|none|Human readable description of this policy.|
|» groupMonitorInterval|integer(int32)|false|none|Protected group monitor interval in minutes. Note: 0 means no monitoring.|
|» managedResourceIds|[string]¦null|false|none|Managed resources which are assigned to this policy.|
|» managedResourceGroupIds|[string]¦null|false|none|Managed resource groups which are assigned to this policy.|
|» groupMembers|[[SbPAM.Models.ProtectedGroupMemberInfo](../Models/sbpam.models.protectedgroupmemberinfo.md)]¦null|false|none|Protected groups which are allowed to be members of this group|
|»» groupName|string¦null|false|none|Name of the group to be protected|
|»» groupMember|string¦null|false|none|Name of the group member allowed to be a member of the group|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


