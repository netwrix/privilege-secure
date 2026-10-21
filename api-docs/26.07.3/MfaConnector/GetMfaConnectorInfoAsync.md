
##  (Auth policies: MfaSignin)

<a id="opIdGetMfaConnectorInfoAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/MfaConnector/User/{userId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/MfaConnector/User/{userId} -Headers $Headers
```

`GET /api/v1/MfaConnector/User/{userId}`

<h3 id="-(auth-policies:-mfasignin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "dialogTitle": "string",
  "loginText": "string",
  "autoResponse": true,
  "autoResponseText": "string",
  "responsePrefix": "string"
}
```

<h3 id="-(auth-policies:-mfasignin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Identity.Models.MfaConnectorInfo](../Models/sbpam.identity.models.mfaconnectorinfo.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


