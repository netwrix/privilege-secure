
## Get a user token

<a id="opIdSigninBody"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /signinBody \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "login": "string",
  "password": "string"
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
Invoke-RestMethod -Method POST -Url "$($Host)/signinBody" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`POST /signinBody`

> Body parameter

```json
{
  "login": "string",
  "password": "string"
}
```

<h3 id="get-a-user-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.LoginFormInfo](../Models/sbpam.models.loginforminfo.md)|false|The value.|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="get-a-user-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


