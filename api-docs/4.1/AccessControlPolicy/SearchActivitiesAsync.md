
## Search for activities that are in the given policy. (Auth policies: MfaRequired; roles: Admin,UserPlus)

<a id="opIdSearchActivitiesAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchActivities/{accessPolicyId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/AccessControlPolicy/SearchActivities/{accessPolicyId} -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/AccessControlPolicy/SearchActivities/{accessPolicyId}`

<h3 id="search-for-activities-that-are-in-the-given-policy.-(auth-policies:-mfarequired;-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|AccessControlPolicy Id|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|entityType|query|[SbPAM.Models.ActivityAndGroupEntityType](../Models/sbpam.models.activityandgroupentitytype.md)|false|Activity or ActivityGroup|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Activity|
|entityType|ActivityGroup|

> Example responses

> 200 Response

<details><summary>JSON</summary>


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


</details>

<h3 id="search-for-activities-that-are-in-the-given-policy.-(auth-policies:-mfarequired;-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ActivityAndGroupView]](../Models/sbpam.models.datatable_sbpam.models.activityandgroupview.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Access policy not defined on request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Admin or does not have access via Access Policy custom role|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


