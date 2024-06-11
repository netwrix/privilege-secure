
## IsTaskEnabled check appsettings.json for the property (bool) and returns the value (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdIsTaskEnabled"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/IsTaskEnabled/{taskName} \
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
Invoke-RestMethod -Method GET -Url "$($NPSUrl)/api/v1/ManagedResource/IsTaskEnabled/{taskName} -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ManagedResource/IsTaskEnabled/{taskName}`

Introduced NPS 4.2

<h3 id="istaskenabled-check-appsettings.json-for-the-property-(bool)-and-returns-the-value-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|taskName|path|string|true|Task name|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
true
```


</details>

<h3 id="istaskenabled-check-appsettings.json-for-the-property-(bool)-and-returns-the-value-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|boolean|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|An error has occurred, please see web log|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


