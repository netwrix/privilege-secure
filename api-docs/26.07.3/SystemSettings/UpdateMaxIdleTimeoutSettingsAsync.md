
## Update the Max Idle Timeout Settings (Auth roles: Admin, Admin,App)

<a id="opIdUpdateMaxIdleTimeoutSettingsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/SystemSettings/MaxIdleTimeoutSettings \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "maxIdleUserDays": 365
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/SystemSettings/MaxIdleTimeoutSettings" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/SystemSettings/MaxIdleTimeoutSettings`

> Body parameter

```json
{
  "maxIdleUserDays": 365
}
```

<h3 id="update-the-max-idle-timeout-settings-(auth-roles:-admin,-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.MaxIdleTimeout](../Models/sbpam.models.maxidletimeout.md)|false|none|

> Example responses

> 200 Response

```json
{
  "maxIdleUserDays": 365
}
```

<h3 id="update-the-max-idle-timeout-settings-(auth-roles:-admin,-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.MaxIdleTimeout](../Models/sbpam.models.maxidletimeout.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


