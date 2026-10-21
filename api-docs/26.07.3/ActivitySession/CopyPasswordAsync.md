
## Display password to be copied to clipboard (Auth policies: MfaRequired)

<a id="opIdCopyPasswordAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/{sessionId}/Password \
  -H 'Accept: text/plain'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActivitySession/{sessionId}/Password -Headers $Headers
```

`GET /api/v1/ActivitySession/{sessionId}/Password`

<h3 id="display-password-to-be-copied-to-clipboard-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sessionId|path|string(uuid)|true|SessionId for copying password|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="display-password-to-be-copied-to-clipboard-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|string|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


