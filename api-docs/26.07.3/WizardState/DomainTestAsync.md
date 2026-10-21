
## Test the specified domain name

<a id="opIdDomainTestAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/WizardState/DomainTest \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
string
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/WizardState/DomainTest" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/WizardState/DomainTest`

> Body parameter

```json
"string"
```

<h3 id="test-the-specified-domain-name-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|string|false|Domain name to test|

> Example responses

> 200 Response

```json
{
  "errorCode": 0,
  "errorMessage": "string",
  "errorDetails": "string",
  "netbios": "string",
  "fqdn": "string"
}
```

<h3 id="test-the-specified-domain-name-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.WizardDomainTestDto](../Models/sbpam.models.wizarddomaintestdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


