
## Search for managed accounts in given policy. (Auth roles: Admin,UserPlus)

<a id="opIdSearchManagedAccountsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchManagedAccounts/{accessPolicyId} \
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
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/SearchManagedAccounts/{accessPolicyId} -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/SearchManagedAccounts/{accessPolicyId}`

<h3 id="search-for-managed-accounts-in-given-policy.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|none|
|filterText|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|
|entityType|query|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](../models/sbpam.models.managedaccountviewentitytypeenum.md#schemasbpam.models.managedaccountviewentitytypeenum)|false|none|

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

<h3 id="search-for-managed-accounts-in-given-policy.-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedAccountView]](../models/sbpam.models.datatable[sbpam.models.managedaccountview].md#schemasbpam.models.datatable[sbpam.models.managedaccountview])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


