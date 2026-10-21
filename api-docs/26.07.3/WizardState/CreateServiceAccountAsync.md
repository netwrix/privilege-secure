
## Creates a service account from the login info and the Wizard state (Auth roles: Admin)

<a id="opIdCreateServiceAccountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/WizardState/ServiceAccount \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "login": "string",
  "password": "string"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/WizardState/ServiceAccount" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/WizardState/ServiceAccount`

> Body parameter

```json
{
  "login": "string",
  "password": "string"
}
```

<h3 id="creates-a-service-account-from-the-login-info-and-the-wizard-state-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.LoginFormInfo](../Models/sbpam.models.loginforminfo.md)|false|Login and password|

> Example responses

> 200 Response

```json
{
  "errorCode": 0,
  "errorMessage": "string",
  "errorDetails": "string",
  "success": true,
  "usingSsl": true
}
```

<h3 id="creates-a-service-account-from-the-login-info-and-the-wizard-state-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.WizardServiceAccountDto](../Models/sbpam.models.wizardserviceaccountdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


