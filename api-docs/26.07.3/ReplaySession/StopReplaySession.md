
## Stop session replay by session id (Auth policies: MfaRequired, MfaRequired; roles: Admin,UserPlus,AuditingAndReporting)

<a id="opIdStopReplaySession"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/ReplaySession/{id} \
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
Invoke-RestMethod -Method DELETE -Url "$($Host)/api/v1/ReplaySession/{id} -Headers $Headers
```

`DELETE /api/v1/ReplaySession/{id}`

<h3 id="stop-session-replay-by-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "streamId": "22cb260b-fac8-4ce4-8488-8f1949304300",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "proxySessionId": "051aae55-c135-4dbb-884f-3eba8672f47b",
  "viewingKey": "b3f10e8a-fc6f-48c3-8bbf-421d4699ba4a",
  "sessionType": "string",
  "createdFromIPV4Address": "string",
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "startOffset": 0,
  "endOffset": 0,
  "recordingStartDateTimeUtc": "2019-08-24T14:15:22Z",
  "recordingEndDateTimeUtc": "2019-08-24T14:15:22Z",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="stop-session-replay-by-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ReplaySession](../Models/sbpam.models.replaysession.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


