
## Retrieve managed account groups associated with a policy. (Auth roles: Admin,UserPlus)

<a id="opIdGetManagedAccountGroupsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/{policyId}/ManagedAccountGroup \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessControlPolicy/{policyId}/ManagedAccountGroup -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/{policyId}/ManagedAccountGroup`

<h3 id="retrieve-managed-account-groups-associated-with-a-policy.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|Access control policy id|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "type": "Local",
    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
    "mfaConnectorId": "360d3915-9c3c-42c2-9c41-55ba84bbd9f8",
    "isReviewer": true,
    "distinguishedName": "string",
    "domain": "string",
    "email": "string",
    "samaccountname": "string",
    "sid": "string",
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="retrieve-managed-account-groups-associated-with-a-policy.-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="retrieve-managed-account-groups-associated-with-a-policy.-(auth-roles:-admin,userplus)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ManagedAccountGroupInfo](../Models/sbpam.models.managedaccountgroupinfo.md)]|false|none|[This model represents a group of managed accounts.]|
|» id|string(uuid)|false|none|Unique id and DB key for this group.|
|» name|string¦null|false|none|Name of this group.|
|» type|[SbPAM.Models.ManagedAccountGroupType](../Models/sbpam.models.managedaccountgrouptype.md)(int32)|false|none|none|
|» groupId|string(uuid)¦null|false|none|AD group id if this is an active directory group|
|» mfaConnectorId|string(uuid)¦null|false|none|Alternate MFA provider for members of this group. Override this at the User level.|
|» isReviewer|boolean|false|none|Is assigned reviewer role (for AccessCertification)|
|» distinguishedName|string¦null|false|none|none|
|» domain|string¦null|false|none|none|
|» email|string¦null|false|none|none|
|» samaccountname|string¦null|false|none|none|
|» sid|string¦null|false|none|none|
|» nodeId|string(uuid)|false|none|none|
|» createdDateTimeUtc|string(date-time)|false|none|none|
|» modifiedDateTimeUtc|string(date-time)|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|Local|
|type|ActiveDirectory|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


