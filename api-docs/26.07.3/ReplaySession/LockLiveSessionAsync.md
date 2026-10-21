
## Lock live session by session id (Auth policies: MfaRequired, MfaRequired; roles: Admin,UserPlus,AuditingAndReporting)

<a id="opIdLockLiveSessionAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ReplaySession/live/{proxySessionId}/lock \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "68b52dae-db25-4504-b0cb-e169d0eabeb4",
  "activitySessionIds": [
    "13d65e9a-6d12-46a8-a2fa-a9aa0453ff4c"
  ],
  "lockMessage": "Your session has been temporarily locked, please see a Netwrix Privilege Secure administrator for more information.",
  "lockTitle": "Netwrix Privilege Secure",
  "locked": true,
  "lockActivity": true,
  "lockResource": false,
  "lockUser": true
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ReplaySession/live/{proxySessionId}/lock" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ReplaySession/live/{proxySessionId}/lock`

> Body parameter

```json
{
  "id": "68b52dae-db25-4504-b0cb-e169d0eabeb4",
  "activitySessionIds": [
    "13d65e9a-6d12-46a8-a2fa-a9aa0453ff4c"
  ],
  "lockMessage": "Your session has been temporarily locked, please see a Netwrix Privilege Secure administrator for more information.",
  "lockTitle": "Netwrix Privilege Secure",
  "locked": true,
  "lockActivity": true,
  "lockResource": false,
  "lockUser": true
}
```

<h3 id="lock-live-session-by-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|proxySessionId|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.LiveSessionRequest](../Models/sbpam.models.livesessionrequest.md)|false|none|

> Example responses

> 200 Response

```json
{
  "id": "68b52dae-db25-4504-b0cb-e169d0eabeb4",
  "activitySessionIds": [
    "13d65e9a-6d12-46a8-a2fa-a9aa0453ff4c"
  ],
  "lockMessage": "Your session has been temporarily locked, please see a Netwrix Privilege Secure administrator for more information.",
  "lockTitle": "Netwrix Privilege Secure",
  "locked": true,
  "lockActivity": true,
  "lockResource": false,
  "lockUser": true
}
```

<h3 id="lock-live-session-by-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.LiveSessionRequest](../Models/sbpam.models.livesessionrequest.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


