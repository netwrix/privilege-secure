
## Get the session counts by status (Auth policies: MfaRequired, MfaRequired; roles: App)

<a id="opIdGetActivitySessionCountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/Count \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActivitySession/Count -Headers $Headers
```

`GET /api/v1/ActivitySession/Count`

<h3 id="get-the-session-counts-by-status-(auth-policies:-mfarequired,-mfarequired;-roles:-app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|status|query|string|false|Status used to get session count|
|targetId|query|string(uuid)|false|Target Id to get session count|
|targetUserId|query|string(uuid)|false|Target User Id to get session count|

> Example responses

> 200 Response

```json
0
```

<h3 id="get-the-session-counts-by-status-(auth-policies:-mfarequired,-mfarequired;-roles:-app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|integer|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Internal service call only|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


