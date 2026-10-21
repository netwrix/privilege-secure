
## Get activities for role (Auth roles: Admin)

<a id="opIdSearchActivitiesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/RolesRole/{roleId}/SearchActivities \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/RolesRole/{roleId}/SearchActivities -Headers $Headers
```

`GET /api/v1/RolesRole/{roleId}/SearchActivities`

<h3 id="get-activities-for-role-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|roleId|path|string(uuid)|true|none|
|entityType|query|[SbPAM.Models.ActivityAndGroupEntityType](../Models/sbpam.models.activityandgroupentitytype.md)|false|none|
|Skip|query|integer(int32)|false|Start at this item (default: 0)|
|Take|query|integer(int32)|false|Return this number of items (default: 100)|
|OrderBy|query|string|false|Property name to order results by|
|OrderDescending|query|boolean|false|Use descending sort order (default: false)|
|FilterText|query|string|false|Filter by entries that contain this text. Properties match vary by endpoint.|
|FilterColumns|query|array[string]|false|Columns to include in filter|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Activity|
|entityType|ActivityGroup|

> Example responses

> 200 Response

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

<h3 id="get-activities-for-role-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.ActivityAndGroupView]](../Models/sbpam.models.datatable_sbpam.models.activityandgroupview.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


