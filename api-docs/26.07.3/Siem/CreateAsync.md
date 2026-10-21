
## Creates an siem record (Auth roles: Admin,App)

<a id="opIdCreateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/Siem \
  -H 'Content-Type: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "sent": true,
  "sentTime": "2019-08-24T14:15:22Z",
  "eventMessageId": "736da6af-c8bf-4071-b045-b78373b87820",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/Siem" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/Siem`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "sent": true,
  "sentTime": "2019-08-24T14:15:22Z",
  "eventMessageId": "736da6af-c8bf-4071-b045-b78373b87820",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="creates-an-siem-record-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|test|query|boolean|false|none|
|body|body|[SbPAM.Models.Siem](../Models/sbpam.models.siem.md)|false|none|

<h3 id="creates-an-siem-record-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


