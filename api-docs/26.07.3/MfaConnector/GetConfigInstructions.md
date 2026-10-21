
##  (Auth roles: Admin)

<a id="opIdGetConfigInstructions"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/MfaConnector/Oidc/Instructions/{type}

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/MfaConnector/Oidc/Instructions/{type} -Headers $Headers
```

`GET /api/v1/MfaConnector/Oidc/Instructions/{type}`

<h3 id="-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|type|path|[SbPAM.Identity.Models.SbPAMMfaConnectorType](../Models/sbpam.identity.models.sbpammfaconnectortype.md)|true|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|type|MFAConnector|
|type|OpenIdConnect|
|type|Saml|
|type|MFANotRequired|

<h3 id="-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


