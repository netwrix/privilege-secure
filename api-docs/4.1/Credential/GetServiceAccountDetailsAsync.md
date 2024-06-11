
## Get details for a service account (Auth policies: MfaRequired; roles: Admin,UserPlus)

<a id="opIdGetServiceAccountDetailsAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/Credential/Details/{id}/ServiceAccount \
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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/Credential/Details/{id}/ServiceAccount -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/Credential/Details/{id}/ServiceAccount`

<h3 id="get-details-for-a-service-account-(auth-policies:-mfarequired;-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|Credential id|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
  "resourceName": "string",
  "samaccountName": "string",
  "platformName": "string",
  "passwordStatus": "Unspecified",
  "passwordLastCheckedUtc": "2019-08-24T14:15:22Z",
  "passwordLastChangedUtc": "2019-08-24T14:15:22Z",
  "passwordNextChangeUtc": "2019-08-24T14:15:22Z",
  "rotationStatus": "Queued",
  "rollbackStatus": "Queued",
  "dependencyCount": 0,
  "age": 0,
  "passwordStatusName": "string",
  "rotationStatusName": "string",
  "rollbackStatusName": "string"
}
```


</details>

<h3 id="get-details-for-a-service-account-(auth-policies:-mfarequired;-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.ServiceAccountDetailsView](../Models/sbpam.models.serviceaccountdetailsview.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error has occurred, see web log for details|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User or credential not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


