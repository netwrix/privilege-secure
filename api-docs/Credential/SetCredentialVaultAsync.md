
## Set vault for credential (Auth roles: Admin,App)

<a id="opIdSetCredentialVaultAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Credential/SetVault/{vaultName}/{userName} \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Credential/SetVault/{vaultName}/{userName} -Headers $Headers
```

`GET /api/v1/Credential/SetVault/{vaultName}/{userName}`

<h3 id="set-vault-for-credential-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|vaultName|path|string|true|none|
|userName|path|string|true|none|
|vaultUser|query|boolean|false|none|

> Example responses

> 200 Response

```
true
```

```json
true
```

<h3 id="set-vault-for-credential-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|boolean|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


