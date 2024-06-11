
## Search candidate NPS users and groups (Auth roles: Admin,Reviewer,App)

<a id="opIdHostUserSearch"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ManagedAccount/HostUser/Search \
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
Invoke-RestMethod -Method GET -Url "$($NPSUrl)/api/v1/ManagedAccount/HostUser/Search -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ManagedAccount/HostUser/Search`

<h3 id="search-candidate-nps-users-and-groups-(auth-roles:-admin,reviewer,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterEntityType|query|[SbPAM.Models.ManagedAccountCandidateViewEntityType](../Models/sbpam.models.managedaccountcandidateviewentitytype.md)|false|Entity type filter - user/group/application/group member|
|filterText|query|string|false|Filter by text|
|excludeAccounts|query|boolean|false|Exclude managed accounts|
|orderBy|query|string|false|Sort by field|
|orderDescending|query|boolean|false|Sort descending ascending|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 100)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|filterEntityType|HostUser|
|filterEntityType|DomainGroup|
|filterEntityType|ApplicationUser|
|filterEntityType|DomainGroupMember|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "data": [
    {
      "entityType": "HostUser",
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "displayName": "string",
      "userPrincipalName": "string",
      "samAccountName": "string",
      "email": "string",
      "managed": true,
      "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
      "domainName": "string",
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d"
    }
  ],
  "recordsTotal": 0
}
```


</details>

<h3 id="search-candidate-nps-users-and-groups-(auth-roles:-admin,reviewer,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedAccountCandidateView]](../Models/sbpam.models.datatable_sbpam.models.managedaccountcandidateview.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


