
## Search for resources by policy that can be accessed. (Auth policies: MfaRequired)

<a id="opIdActivitySessionCandidateResources"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ActivitySessionResources \
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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/AccessControlPolicy/ActivitySessionResources -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/AccessControlPolicy/ActivitySessionResources`

<h3 id="search-for-resources-by-policy-that-can-be-accessed.-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|activityId|query|string(uuid)|false|Activity id|
|policyId|query|string(uuid)|false|Access control policy id|
|managedAccountId|query|string(uuid)|false|Managed account id|

> Example responses

> 200 Response

<details><summary>JSON</summary>


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


</details>

<h3 id="search-for-resources-by-policy-that-can-be-accessed.-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.AccessPolicyObject]](../Models/sbpam.models.datatable_sbpam.models.accesspolicyobject.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|AccountId was not specified in the request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User has requested a userid that does not match their userid and they are not an Admin|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


