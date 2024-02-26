
## Search for users and groups that are not a part of the policy.

<a id="opIdSearchManagedAccountCandidatesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchManagedAccountCandidates/{accessPolicyId} \
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

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/SearchManagedAccountCandidates/{accessPolicyId}
```

`GET /api/v1/AccessControlPolicy/SearchManagedAccountCandidates/{accessPolicyId}`

<h3 id="search-for-users-and-groups-that-are-not-a-part-of-the-policy.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|none|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|entityType|query|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](#schemasbpam.models.managedaccountviewentitytypeenum)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|ManagedAccount|
|entityType|ManagedAccountGroup|
|entityType|Application|
|entityType|Collection|
|entityType|Local|

> Example responses

> 200 Response

```
{"data":[{"entityType":"ManagedAccount","id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","hostUserId":"f49f66da-8e90-4a2e-90ba-36f4d97bfbe9","name":"string","displayName":"string","samAccountName":"string","department":"string","userPrincipalName":"string","email":"string","domainConfigId":"0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e","domainName":"string","lastLogonTimestamp":"2019-08-24T14:15:22Z","activeSessionCount":0,"scheduledSessionCount":0,"accessPolicyCount":0,"certificateSerialNumber":"string","locked":true,"lockoutEnd":"2019-08-24T14:15:22Z","isReviewer":true}],"recordsTotal":0}
```

```json
{
  "data": [
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
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-users-and-groups-that-are-not-a-part-of-the-policy.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable`1[[SbPAM.Models.ManagedAccountView, SbPAM.Models, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]](#schemasbpam.models.datatable`1[[sbpam.models.managedaccountview, sbpam.models, version=1.0.0.0, culture=neutral, publickeytoken=null]])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


