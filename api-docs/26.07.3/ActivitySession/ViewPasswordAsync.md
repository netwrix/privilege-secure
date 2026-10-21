
## Check whether the active session user can view password (Auth policies: MfaRequired)

<a id="opIdViewPasswordAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/{sessionId}/CanViewPassword \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActivitySession/{sessionId}/CanViewPassword -Headers $Headers
```

`GET /api/v1/ActivitySession/{sessionId}/CanViewPassword`

<h3 id="check-whether-the-active-session-user-can-view-password-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sessionId|path|string(uuid)|true|SessionId for viewing password|

> Example responses

> 200 Response

```json
true
```

<h3 id="check-whether-the-active-session-user-can-view-password-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|boolean|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


