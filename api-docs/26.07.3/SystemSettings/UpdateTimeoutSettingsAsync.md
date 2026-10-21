
## Update the Timeout Settings (Auth roles: Admin, Admin,App)

<a id="opIdUpdateTimeoutSettingsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/SystemSettings/TimeoutSettings \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "timeoutMinutes": 0
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/SystemSettings/TimeoutSettings" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/SystemSettings/TimeoutSettings`

> Body parameter

```json
{
  "timeoutMinutes": 0
}
```

<h3 id="update-the-timeout-settings-(auth-roles:-admin,-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.TimeoutSettings](../Models/sbpam.models.timeoutsettings.md)|false|Values to update Timeout Settings|

> Example responses

> 200 Response

```json
{
  "timeoutMinutes": 0
}
```

<h3 id="update-the-timeout-settings-(auth-roles:-admin,-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.TimeoutSettings](../Models/sbpam.models.timeoutsettings.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


