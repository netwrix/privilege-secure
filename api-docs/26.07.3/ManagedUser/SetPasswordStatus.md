
##  (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdSetPasswordStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedUser/{id}/PasswordStatus \
  -H 'Content-Type: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
Unspecified
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedUser/{id}/PasswordStatus" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedUser/{id}/PasswordStatus`

> Body parameter

```json
"Unspecified"
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.VerificationScanStatus](../Models/sbpam.models.verificationscanstatus.md)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|body|Unspecified|
|body|Verified|
|body|Pending|
|body|Changed|
|body|Failed|
|body|Mismatch|

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


