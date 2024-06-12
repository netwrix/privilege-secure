
## Set multiple NPS users with Reviewer role (Auth roles: Admin,App)

<a id="opIdAddMultipleReviewerAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/ManagedAccount/Reviewer/AddMultiple \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "entityType": "ManagedAccount",
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  }
]
"@

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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/ManagedAccount/Reviewer/AddMultiple" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/ManagedAccount/Reviewer/AddMultiple`

> Body parameter

<details><summary>JSON</summary>


```json
[
  {
    "entityType": "ManagedAccount",
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  }
]
```


</details>

<h3 id="set-multiple-nps-users-with-reviewer-role-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.ManagedAccountOrGroupId](../Models/sbpam.models.managedaccountorgroupid.md)|false|List of NPS users|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
"string"
```


</details>

<h3 id="set-multiple-nps-users-with-reviewer-role-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|string|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error setting users as Reviewers|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


