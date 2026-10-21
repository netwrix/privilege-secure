
## Revoke a one time use token.

<a id="opIdRevokeOneTimeUseToken"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/UserToken/RevokeOneTimeUseToken

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/UserToken/RevokeOneTimeUseToken -Headers $Headers
```

`POST /api/v1/UserToken/RevokeOneTimeUseToken`

<h3 id="revoke-a-one-time-use-token.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessToken|query|string(uuid)|false|none|

<h3 id="revoke-a-one-time-use-token.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


