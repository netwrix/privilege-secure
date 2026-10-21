
## OpenIdConnectSignin

<a id="opIdOpenIdConnectSignin"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /oidcSignin/{connectorId} \
  -H 'Content-Type: application/json-patch+json'

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
Invoke-RestMethod -Method PUT -Url "$($Host)/oidcSignin/{connectorId}" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`PUT /oidcSignin/{connectorId}`

> Body parameter

```json
"string"
```

<h3 id="openidconnectsignin-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|connectorId|path|string(uuid)|true|none|
|body|body|string|false|none|

<h3 id="openidconnectsignin-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


