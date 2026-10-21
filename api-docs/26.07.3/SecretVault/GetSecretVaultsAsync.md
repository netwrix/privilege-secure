
## Get All endpoint (Auth policies: MfaRequired, MfaRequired; roles: Admin,App)

<a id="opIdGetSecretVaultsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/SecretVault \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/SecretVault -Headers $Headers
```

`GET /api/v1/SecretVault`

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
    "name": "string",
    "description": "string",
    "policyIds": [
      "497f6eca-6276-4993-bfeb-53cbbbba6f08"
    ]
  }
]
```

<h3 id="get-all-endpoint-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="get-all-endpoint-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.SecretVaultDto](../Models/sbpam.models.secretvaultdto.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» managedResourceId|string(uuid)|false|none|none|
|» platformId|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» description|string¦null|false|none|none|
|» policyIds|[string]¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


