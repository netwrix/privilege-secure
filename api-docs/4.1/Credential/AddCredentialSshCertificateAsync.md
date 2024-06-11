
## Add SSH Certificates (by credential id) (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdAddCredentialSshCertificateAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/Credential/AddCredentialSSHCertificate/{credentialId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/Credential/AddCredentialSSHCertificate/{credentialId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/Credential/AddCredentialSSHCertificate/{credentialId}`

> Body parameter

<details><summary>JSON</summary>


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


</details>

<h3 id="add-ssh-certificates-(by-credential-id)-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credentialId|path|string(uuid)|true|Credential Id|
|body|body|[SbPAM.Models.SshFormInfo](../Models/sbpam.models.sshforminfo.md)|false|none|

> Example responses

> 403 Response

<details><summary>JSON</summary>


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


</details>

<h3 id="add-ssh-certificates-(by-credential-id)-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


