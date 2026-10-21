
## Get a specific group or role by ID (Auth roles: Admin,App)

<a id="opIdGet"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/GroupRole/{id} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/GroupRole/{id} -Headers $Headers
```

`GET /api/v1/GroupRole/{id}`

<h3 id="get-a-specific-group-or-role-by-id-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|The group or role ID|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "type": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "platformName": "string",
  "context": "string",
  "additionalInfo": "string",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "tenantId": "f97df110-f4de-492e-8849-4a6af68026b0"
}
```

<h3 id="get-a-specific-group-or-role-by-id-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.WebAPI.Controllers.GroupRoleCandidate](../Models/sbpam.webapi.controllers.grouprolecandidate.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


