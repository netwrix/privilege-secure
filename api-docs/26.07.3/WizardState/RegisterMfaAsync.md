
## Register the MFA authenticator

<a id="opIdRegisterMfaAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/WizardState/MfaRegister \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "code": "string"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/WizardState/MfaRegister" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/WizardState/MfaRegister`

> Body parameter

```json
{
  "code": "string"
}
```

<h3 id="register-the-mfa-authenticator-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|setupLater|query|boolean|false|Whether to setup MFA later|
|body|body|[SbPAM.Models.MfaRegister](../Models/sbpam.models.mfaregister.md)|false|Initial MFA Code|

> Example responses

> 200 Response

```json
{
  "errorCode": 0,
  "errorMessage": "string",
  "errorDetails": "string",
  "recoveryCodes": [
    "string"
  ],
  "token": "string"
}
```

<h3 id="register-the-mfa-authenticator-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.WizardMfaRegistrationDto](../Models/sbpam.models.wizardmfaregistrationdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


