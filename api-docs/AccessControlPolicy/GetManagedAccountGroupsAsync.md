
## Retrieve managed account groups associated with a policy. (Auth roles: Admin,UserPlus)

<a id="opIdGetManagedAccountGroupsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/{policyId}/ManagedAccountGroup \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example

$Login = @{
    Login = "User"
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/{policyId}/ManagedAccountGroup -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/{policyId}/ManagedAccountGroup`

<h3 id="retrieve-managed-account-groups-associated-with-a-policy.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```
[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","type":"Local","groupId":"eb54e96e-21b8-4f54-9cd4-80fccbd06f55","mfaConnectorId":"360d3915-9c3c-42c2-9c41-55ba84bbd9f8","isReviewer":true,"distinguishedName":"string","domain":"string","email":"string","samaccountname":"string","sid":"string","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}]
```

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
|*anonymous*|[[SbPAM.Models.ManagedAccountGroupInfo](../models/sbpam.models.managedaccountgroupinfo.md#schemasbpam.models.managedaccountgroupinfo)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» type|[SbPAM.Models.ManagedAccountGroupType](../models/sbpam.models.managedaccountgrouptype.md#schemasbpam.models.managedaccountgrouptype)(int32)|false|none|none|
|» groupId|string(uuid)¦null|false|none|none|
|» mfaConnectorId|string(uuid)¦null|false|none|none|
|» isReviewer|boolean|false|none|none|
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


