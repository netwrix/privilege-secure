
##  (Auth policies: MfaSignin)

<a id="opIdSigninForm2faAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /signin2fa \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain'

```

```powershell
# PowerShell example
$JsonBody = @"
string
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
Invoke-RestMethod -Method POST -Url "$($Host)/signin2fa" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`POST /signin2fa`

> Body parameter

```json
"string"
```

<h3 id="-(auth-policies:-mfasignin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|extension|query|boolean|false|none|
|body|body|string|false|none|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="-(auth-policies:-mfasignin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


