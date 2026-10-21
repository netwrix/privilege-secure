
## Get the MFA registration secret and authenticatorUri (Auth policies: MfaRequired)

<a id="opIdGetMfaSecretAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/WizardState/MfaSecret \
  -H 'Accept: application/json'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/WizardState/MfaSecret -Headers $Headers
```

`GET /api/v1/WizardState/MfaSecret`

> Example responses

> 200 Response

```json
{
  "errorCode": 0,
  "errorMessage": "string",
  "errorDetails": "string",
  "authenticatorUri": "string",
  "sharedKey": "string"
}
```

<h3 id="get-the-mfa-registration-secret-and-authenticatoruri-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.WizardMfaSecretDto](../Models/sbpam.models.wizardmfasecretdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


