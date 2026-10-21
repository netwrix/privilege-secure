
## Get Data Retention Settings (Auth roles: Admin,App)

<a id="opIdGetDataRetentionSettingsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/SystemSettings/DataRetentionSettings \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/SystemSettings/DataRetentionSettings -Headers $Headers
```

`GET /api/v1/SystemSettings/DataRetentionSettings`

> Example responses

> 200 Response

```json
{
  "enableSiemRetention": true,
  "siemRetentionDays": 1,
  "enableEmailRetention": true,
  "emailRetentionDays": 1,
  "enableIoLogRetention": true,
  "ioLogRetentionDays": 1
}
```

<h3 id="get-data-retention-settings-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataRetentionSettings](../Models/sbpam.models.dataretentionsettings.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


