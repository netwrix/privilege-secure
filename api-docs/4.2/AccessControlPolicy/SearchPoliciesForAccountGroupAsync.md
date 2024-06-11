
## Retrieve policies by managed account group id. (Auth policies: MfaRequired; roles: Admin)

<a id="opIdSearchPoliciesForAccountGroupAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccountGroup/{managedAccountGroupId} \
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
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url "$($NPSUrl)/api/v1/AccessControlPolicy/ManagedAccountGroup/{managedAccountGroupId} -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/AccessControlPolicy/ManagedAccountGroup/{managedAccountGroupId}`

<h3 id="retrieve-policies-by-managed-account-group-id.-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountGroupId|path|string(uuid)|true|Managed account group id|
|includeLastRun|query|boolean|false|Include last run of activity, this is an expensive operation|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|

> Example responses

> 200 Response

<details><summary>JSON</summary>


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


</details>

<h3 id="retrieve-policies-by-managed-account-group-id.-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.GroupActivityCard]](../Models/sbpam.models.datatable_sbpam.models.groupactivitycard.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|No group supplied|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


