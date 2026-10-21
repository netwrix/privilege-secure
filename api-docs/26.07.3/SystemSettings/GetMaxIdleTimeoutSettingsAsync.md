
## Get the Max Idle Timeout Settings (Auth roles: Admin,App)

<a id="opIdGetMaxIdleTimeoutSettingsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/SystemSettings/MaxIdleTimeoutSettings \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/SystemSettings/MaxIdleTimeoutSettings -Headers $Headers
```

`GET /api/v1/SystemSettings/MaxIdleTimeoutSettings`

> Example responses

> 200 Response

```json
{
  "maxIdleUserDays": 365
}
```

<h3 id="get-the-max-idle-timeout-settings-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.MaxIdleTimeout](../Models/sbpam.models.maxidletimeout.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


