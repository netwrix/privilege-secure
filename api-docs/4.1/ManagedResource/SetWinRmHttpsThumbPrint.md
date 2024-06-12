
## Set the expected WinRmHttpsThumbprint (Auth policies: MfaRequired; roles: App)

<a id="opIdSetWinRmHttpsThumbPrint"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X PUT /api/v1/ManagedResource/WinRmHttps/{managedResourceId} \
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
Invoke-RestMethod -Method PUT -Uri "$($NPSUrl)/api/v1/ManagedResource/WinRmHttps/{managedResourceId}" -Headers $Headers -ContentType "application/json"
```


</details>

`PUT /api/v1/ManagedResource/WinRmHttps/{managedResourceId}`

<h3 id="set-the-expected-winrmhttpsthumbprint-(auth-policies:-mfarequired;-roles:-app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceId|path|string(uuid)|true|Managed resource id|
|thumbPrint|query|string|false|Certificate thumbprint|

> Example responses

> 403 Response

<details><summary>JSON</summary>


```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```


</details>

<h3 id="set-the-expected-winrmhttpsthumbprint-(auth-policies:-mfarequired;-roles:-app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Managed resource does not exist|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


