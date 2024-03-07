
## Generate SSH Certificates for credential (Auth roles: Admin,App)

<a id="opIdGenerateCredentialSshCertificateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/Credential/GenerateCredentialSSHCertificate/{credentialId} \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "authenticationMethod": "Password",
  "credentialType": "Configuration",
  "autoGenPassphrase": true,
  "passphrase": "string",
  "privateKey": "string",
  "publicKey": "string",
  "keyGenAlgorithm": "string",
  "keyLength": 0
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/Credential/GenerateCredentialSSHCertificate/{credentialId}" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/Credential/GenerateCredentialSSHCertificate/{credentialId}`

> Body parameter

```json
{
  "authenticationMethod": "Password",
  "credentialType": "Configuration",
  "autoGenPassphrase": true,
  "passphrase": "string",
  "privateKey": "string",
  "publicKey": "string",
  "keyGenAlgorithm": "string",
  "keyLength": 0
}
```

<h3 id="generate-ssh-certificates-for-credential-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credentialId|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.SshFormInfo](../Models/sbpam.models.sshforminfo.md)|false|none|

<h3 id="generate-ssh-certificates-for-credential-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


