
## Add user credential to Secret Vault endpoint (Auth policies: MfaRequired, MfaRequired; roles: Admin)

<a id="opIdAddManagedUserAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/SecretVault/{vaultId}/User \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "name": "string",
  "username": "string",
  "password": "string",
  "managedType": "NotManaged",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "comment": "string"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/SecretVault/{vaultId}/User" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/SecretVault/{vaultId}/User`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "name": "string",
  "username": "string",
  "password": "string",
  "managedType": "NotManaged",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "comment": "string"
}
```

<h3 id="add-user-credential-to-secret-vault-endpoint-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|vaultId|path|string(uuid)|true|Secret Vault Id|
|body|body|[SbPAM.Models.ManagedUserCredentialDto](../Models/sbpam.models.managedusercredentialdto.md)|false|User credentials|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "name": "string",
  "username": "string",
  "password": "string",
  "managedType": "NotManaged",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "comment": "string"
}
```

<h3 id="add-user-credential-to-secret-vault-endpoint-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ManagedUserCredentialDto](../Models/sbpam.models.managedusercredentialdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


