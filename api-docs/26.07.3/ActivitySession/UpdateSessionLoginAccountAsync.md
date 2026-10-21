
## Updates a Activity Session Login Account (Auth policies: MfaRequired; roles: App)

<a id="opIdUpdateSessionLoginAccountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ActivitySession/{sessionId}/loginAccount \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string"
}
"@

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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ActivitySession/{sessionId}/loginAccount" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ActivitySession/{sessionId}/loginAccount`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string"
}
```

<h3 id="updates-a-activity-session-login-account-(auth-policies:-mfarequired;-roles:-app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sessionId|path|string(uuid)|true|SessionId of Session to update Login Account|
|body|body|[SbPAM.Models.NameAndId](../Models/sbpam.models.nameandid.md)|false|The Login Account paired with the SessionId|

> Example responses

> 200 Response

```json
"string"
```

<h3 id="updates-a-activity-session-login-account-(auth-policies:-mfarequired;-roles:-app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|string|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


