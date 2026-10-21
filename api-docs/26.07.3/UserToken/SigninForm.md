
## Get a token

<a id="opIdSigninForm"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /signin \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: text/plain'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "Login": "string",
  "Password": "string"
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
Invoke-RestMethod -Method POST -Url "$($Host)/signin" -ContentType "multipart/form-data" -Body $JsonBody -Headers $Headers
```

`POST /signin`

> Body parameter

```yaml
Login: string
Password: string

```

<h3 id="get-a-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|false|none|
|» Login|body|string|false|none|
|» Password|body|string|false|none|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="get-a-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


