
##  (Auth roles: Admin)

<a id="opIdSetPasswordOptions"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/PasswordOptions \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "requiredLength": 0,
  "requiredUniqueChars": 0,
  "requireNonAlphanumeric": true,
  "requireLowercase": true,
  "requireUppercase": true,
  "requireDigit": true,
  "passwordExpirationInDays": 0,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/PasswordOptions" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/PasswordOptions`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "requiredLength": 0,
  "requiredUniqueChars": 0,
  "requireNonAlphanumeric": true,
  "requireLowercase": true,
  "requireUppercase": true,
  "requireDigit": true,
  "passwordExpirationInDays": 0,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}
```

<h3 id="-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Identity.Models.PasswordOptions](../Models/sbpam.identity.models.passwordoptions.md)|false|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "requiredLength": 0,
  "requiredUniqueChars": 0,
  "requireNonAlphanumeric": true,
  "requireLowercase": true,
  "requireUppercase": true,
  "requireDigit": true,
  "passwordExpirationInDays": 0,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}
```

<h3 id="-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Identity.Models.PasswordOptions](../Models/sbpam.identity.models.passwordoptions.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


