
## Delete multiple user credentials from Secret Vault endpoint (Auth policies: MfaRequired, MfaRequired; roles: Admin)

<a id="opIdDeleteManagedUserMultipleAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/SecretVault/{vaultId}/User/DeleteMultiple \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/SecretVault/{vaultId}/User/DeleteMultiple" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/SecretVault/{vaultId}/User/DeleteMultiple`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="delete-multiple-user-credentials-from-secret-vault-endpoint-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|vaultId|path|string(uuid)|true|Secret Vault Id|
|body|body|array[string]|false|List of user credential Ids to delete|

> Example responses

> 200 Response

```json
0
```

<h3 id="delete-multiple-user-credentials-from-secret-vault-endpoint-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|integer|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


