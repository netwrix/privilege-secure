
## Search for resources for the given policy id. (Auth roles: Admin,UserPlus)

<a id="opIdSearchResourcesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchResources/{accessPolicyId} \
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
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/SearchResources/{accessPolicyId} -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/SearchResources/{accessPolicyId}`

<h3 id="search-for-resources-for-the-given-policy-id.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|none|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|entityType|query|[SbPAM.Models.ManagedResourceAndGroupEntityType](../models/sbpam.models.managedresourceandgroupentitytype.md#schemasbpam.models.managedresourceandgroupentitytype)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Resource|
|entityType|ResourceGroup|
|entityType|SecretVault|

> Example responses

> 200 Response

```
{"data":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","platformId":"32a6e381-64f4-4911-86b6-3bf681b64d23","websiteId":"eee0b185-ac19-4fd6-bb45-58b59a8988e9","secretVaultId":"db0fd85f-8294-44b7-b903-b86ddd322de8","azureAdTenantId":"108c7400-79f1-4372-be73-ac37f4e8912c","databaseId":"d0f4f849-8ecf-4909-96bf-7953790e45f9","dnsHostName":"string","activeSessionCount":0,"os":"string","entityType":"Resource"}],"recordsTotal":0}
```

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
      "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
      "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
      "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
      "dnsHostName": "string",
      "activeSessionCount": 0,
      "os": "string",
      "entityType": "Resource"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-resources-for-the-given-policy-id.-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceAndGroupView]](../models/sbpam.models.datatable[sbpam.models.managedresourceandgroupview].md#schemasbpam.models.datatable[sbpam.models.managedresourceandgroupview])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


