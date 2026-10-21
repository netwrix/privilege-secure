
## Change speed of session replay by session id (Auth policies: MfaRequired, MfaRequired; roles: Admin,UserPlus,AuditingAndReporting)

<a id="opIdChangeSpeed"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ReplaySession/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "replayId": "cb643877-b874-4830-ab12-0f507ec20dfd",
  "speed": 0,
  "next": 0,
  "offset": 0
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ReplaySession/{id}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ReplaySession/{id}`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "replayId": "cb643877-b874-4830-ab12-0f507ec20dfd",
  "speed": 0,
  "next": 0,
  "offset": 0
}
```

<h3 id="change-speed-of-session-replay-by-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.ReplayStreamRequest](../Models/sbpam.models.replaystreamrequest.md)|false|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "index": 0,
  "metadata": {
    "property1": "string",
    "property2": "string"
  },
  "offset": 0,
  "replayId": "cb643877-b874-4830-ab12-0f507ec20dfd",
  "sessionType": "string",
  "speed": 0
}
```

<h3 id="change-speed-of-session-replay-by-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ReplayStream](../Models/sbpam.models.replaystream.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


