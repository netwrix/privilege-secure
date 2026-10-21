
## GetConfig

<a id="opIdGetConfig"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Config/prebootstrap \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Config/prebootstrap -Headers $Headers
```

`GET /api/v1/Config/prebootstrap`

> Example responses

> 200 Response

```json
{
  "eula": {
    "enabled": true
  },
  "toggles": {
    "accessManagement": true
  },
  "sso": {
    "enabled": true,
    "entrypoint": "string",
    "url": "string",
    "ssoFlow": "string"
  },
  "web": {
    "uiBranding": {
      "headerBackgroundColor": "string",
      "hasCustomHeaderLogo": "string"
    },
    "sessionStorage": true,
    "restrictDashboard": true,
    "restrictInsight": true,
    "restrictBulkActionJita": true,
    "enableInsightUser": true,
    "restrictGettingStarted": true,
    "hideModes": true,
    "defaultPage": "string"
  }
}
```

<h3 id="getconfig-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.BootstrapConfig](../Models/sbpam.models.bootstrapconfig.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


