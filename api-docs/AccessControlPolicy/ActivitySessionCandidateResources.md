
## Search for resources by policy that can be accessed. (Auth)

<a id="opIdActivitySessionCandidateResources"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ActivitySessionResources \
  -H 'Accept: application/json' \
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
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/ActivitySessionResources -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/ActivitySessionResources`

<h3 id="search-for-resources-by-policy-that-can-be-accessed.-(auth)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|activityId|query|string(uuid)|false|none|
|policyId|query|string(uuid)|false|Access control policy id|
|managedAccountId|query|string(uuid)|false|Managed account id|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "policyType": "Resource",
      "activityPolicies": [
        {
          "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
          "activityName": "string",
          "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
          "policyName": "string",
          "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
          "isDeleted": true,
          "notesRequired": true,
          "ticketRequired": true,
          "maxSessionLength": 0
        }
      ],
      "name": "string",
      "os": "string",
      "platform": "string"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-resources-by-policy-that-can-be-accessed.-(auth)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.AccessPolicyObject]](../Models/sbpam.models.datatable[sbpam.models.accesspolicyobject].md#schemasbpam.models.datatable[sbpam.models.accesspolicyobject])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


