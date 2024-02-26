
## Retrieve policies by managed account group id.

<a id="opIdSearchPoliciesForAccountGroupAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccountGroup/{managedAccountGroupId} \
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

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/ManagedAccountGroup/{managedAccountGroupId}
```

`GET /api/v1/AccessControlPolicy/ManagedAccountGroup/{managedAccountGroupId}`

<h3 id="retrieve-policies-by-managed-account-group-id.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountGroupId|path|string(uuid)|true|none|
|includeLastRun|query|boolean|false|none|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|

> Example responses

> 200 Response

```
{"data":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","policyId":"2f5573e6-5ba4-48f2-a75d-df99c936463b","policyName":"string","managedAccountGroupId":"e26d71c7-3b1a-42f3-b335-0d300235f20b","latestSessionActualStartUtc":"2019-08-24T14:15:22Z"}],"recordsTotal":0}
```

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "policyName": "string",
      "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
      "latestSessionActualStartUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="retrieve-policies-by-managed-account-group-id.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable`1[[SbPAM.Models.GroupActivityCard, SbPAM.Models, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]](#schemasbpam.models.datatable`1[[sbpam.models.groupactivitycard, sbpam.models, version=1.0.0.0, culture=neutral, publickeytoken=null]])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


