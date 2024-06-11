
## Generate SSH Certificates for credential (Auth roles: Admin,App)

<a id="opIdGenerateCredentialSshCertificateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/Credential/GenerateCredentialSSHCertificate/{credentialId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/Credential/GenerateCredentialSSHCertificate/{credentialId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
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
|credentialId|path|string(uuid)|true|Credential Id|
|body|body|[SbPAM.Models.SshFormInfo](../Models/sbpam.models.sshforminfo.md)|false|none|

> Example responses

> 403 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="generate-ssh-certificates-for-credential-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


