
## Search for activities that are not in the given policy. (Auth roles: Admin,UserPlus)

<a id="opIdSearchActivityCandidatesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchActivityCandidates/{accessPolicyId} \
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
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/SearchActivityCandidates/{accessPolicyId} -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/SearchActivityCandidates/{accessPolicyId}`

<h3 id="search-for-activities-that-are-not-in-the-given-policy.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|none|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|entityType|query|[SbPAM.Models.ActivityAndGroupEntityType](../models/sbpam.models.activityandgroupentitytype.md#schemasbpam.models.activityandgroupentitytype)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Activity|
|entityType|ActivityGroup|

> Example responses

> 200 Response

```
{"data":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","entityType":"Activity"}],"recordsTotal":0}
```

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "entityType": "Activity"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-activities-that-are-not-in-the-given-policy.-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ActivityAndGroupView]](../models/sbpam.models.datatable[sbpam.models.activityandgroupview].md#schemasbpam.models.datatable[sbpam.models.activityandgroupview])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


