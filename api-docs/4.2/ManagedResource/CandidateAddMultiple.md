
## Add multiple resources by hostid (Auth policies: MfaRequired, MfaRequired; roles: Admin,App)

<a id="opIdCandidateAddMultiple"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/Candidate/AddMultiple \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
{
  "hostIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c"
}
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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/ManagedResource/Candidate/AddMultiple" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/ManagedResource/Candidate/AddMultiple`

> Body parameter

<details><summary>JSON</summary>


```json
{
  "hostIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c"
}
```


</details>

<h3 id="add-multiple-resources-by-hostid-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.WebAPI.Controllers.CandidateAddMultipleAsyncRequest](../Models/sbpam.webapi.controllers.candidateaddmultipleasyncrequest.md)|false|Object containing list of ids and the service account id|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
0
```


</details>

<h3 id="add-multiple-resources-by-hostid-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|integer|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|No hosts in request payload OR error onboarding see web logs|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


