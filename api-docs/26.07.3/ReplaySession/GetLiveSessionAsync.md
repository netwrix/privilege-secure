
## Retrieve Live Proxy Session by replay session id (Auth policies: MfaRequired, MfaRequired; roles: Admin,UserPlus,AuditingAndReporting)

<a id="opIdGetLiveSessionAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReplaySession/live/{sessionId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReplaySession/live/{sessionId} -Headers $Headers
```

`GET /api/v1/ReplaySession/live/{sessionId}`

<h3 id="retrieve-live-proxy-session-by-replay-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sessionId|path|string(uuid)|true|none|
|refresh|query|boolean|false|When true, skips emitting the "viewed" audit event (used for SignalR-driven refreshes)|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "record": true,
  "type": "string",
  "active": true,
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "key": "string",
  "locked": true,
  "lockedMessage": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
  "sessionMetadata": {
    "id": "string",
    "nid": "string",
    "size": 0,
    "startTimestamp": "2019-08-24T14:15:22Z",
    "endTimestamp": "2019-08-24T14:15:22Z",
    "recordingStartTimestamp": "2019-08-24T14:15:22Z",
    "recordingEndTimestamp": "2019-08-24T14:15:22Z",
    "records": [
      {
        "type": null,
        "timestamp": 0,
        "entries": [
          "string"
        ]
      }
    ]
  }
}
```

<h3 id="retrieve-live-proxy-session-by-replay-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ProxySession](../Models/sbpam.models.proxysession.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


