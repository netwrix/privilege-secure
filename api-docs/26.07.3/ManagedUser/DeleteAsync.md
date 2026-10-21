
## Delete user and optionally delete associated host user (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdDeleteAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/ManagedUser/{id} \
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
Invoke-RestMethod -Method DELETE -Url "$($Host)/api/v1/ManagedUser/{id} -Headers $Headers
```

`DELETE /api/v1/ManagedUser/{id}`

<h3 id="delete-user-and-optionally-delete-associated-host-user-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|User id to delete|
|deleteHostUser|query|boolean|false|Also delete host user if true|
|ignoreNotFound|query|boolean|false|Return 200 on not found|

> Example responses

> 200 Response

```json
"497f6eca-6276-4993-bfeb-53cbbbba6f08"
```

<h3 id="delete-user-and-optionally-delete-associated-host-user-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|string|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User was not found and ignoreNotFound is false|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|An error has occurred, please see web logs|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


