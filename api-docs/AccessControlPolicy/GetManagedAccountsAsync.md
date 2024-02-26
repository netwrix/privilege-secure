
## Retrieve managed accounts directly associated with a policy.

<a id="opIdGetManagedAccountsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/{accessControlPolicyId}/ManagedAccount \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell

$Login = @{
    Login = "User",
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/{accessControlPolicyId}/ManagedAccount
```

`GET /api/v1/AccessControlPolicy/{accessControlPolicyId}/ManagedAccount`

<h3 id="retrieve-managed-accounts-directly-associated-with-a-policy.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessControlPolicyId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```
[{"entityType":"ManagedAccount","id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","hostUserId":"f49f66da-8e90-4a2e-90ba-36f4d97bfbe9","name":"string","displayName":"string","samAccountName":"string","department":"string","userPrincipalName":"string","email":"string","domainConfigId":"0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e","domainName":"string","lastLogonTimestamp":"2019-08-24T14:15:22Z","activeSessionCount":0,"scheduledSessionCount":0,"accessPolicyCount":0,"certificateSerialNumber":"string","locked":true,"lockoutEnd":"2019-08-24T14:15:22Z","isReviewer":true}]
```

```json
[
  {
    "entityType": "ManagedAccount",
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
    "name": "string",
    "displayName": "string",
    "samAccountName": "string",
    "department": "string",
    "userPrincipalName": "string",
    "email": "string",
    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
    "domainName": "string",
    "lastLogonTimestamp": "2019-08-24T14:15:22Z",
    "activeSessionCount": 0,
    "scheduledSessionCount": 0,
    "accessPolicyCount": 0,
    "certificateSerialNumber": "string",
    "locked": true,
    "lockoutEnd": "2019-08-24T14:15:22Z",
    "isReviewer": true
  }
]
```

<h3 id="retrieve-managed-accounts-directly-associated-with-a-policy.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="retrieve-managed-accounts-directly-associated-with-a-policy.-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ManagedAccountView](#schemasbpam.models.managedaccountview)]|false|none|none|
|» entityType|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](#schemasbpam.models.managedaccountviewentitytypeenum)(int32)|false|none|none|
|» id|string(uuid)|false|none|none|
|» hostUserId|string(uuid)¦null|false|none|none|
|» name|string¦null|false|none|none|
|» displayName|string¦null|false|none|none|
|» samAccountName|string¦null|false|none|none|
|» department|string¦null|false|none|none|
|» userPrincipalName|string¦null|false|none|none|
|» email|string¦null|false|none|none|
|» domainConfigId|string(uuid)¦null|false|none|none|
|» domainName|string¦null|false|none|none|
|» lastLogonTimestamp|string(date-time)¦null|false|none|none|
|» activeSessionCount|integer(int32)|false|none|none|
|» scheduledSessionCount|integer(int32)|false|none|none|
|» accessPolicyCount|integer(int32)|false|none|none|
|» certificateSerialNumber|string¦null|false|none|none|
|» locked|boolean|false|none|none|
|» lockoutEnd|string(date-time)¦null|false|none|none|
|» isReviewer|boolean¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|entityType|ManagedAccount|
|entityType|ManagedAccountGroup|
|entityType|Application|
|entityType|Collection|
|entityType|Local|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


