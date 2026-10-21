
## Retrieve filtered list of live sessions based on user permissions
Supports "mine" and "all" filter modes for Auditors (Auth policies: MfaRequired, MfaRequired; roles: Admin,UserPlus,AuditingAndReporting)

<a id="opIdGetFilteredLiveSessionsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReplaySession/live \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReplaySession/live -Headers $Headers
```

`GET /api/v1/ReplaySession/live`

<h3 id="retrieve-filtered-list-of-live-sessions-based-on-user-permissions
supports-"mine"-and-"all"-filter-modes-for-auditors-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filter|query|string|false|Filter mode: "mine" (sessions where user is the account) or "all" (all authorized sessions)|

> Example responses

> 200 Response

```json
[
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
]
```

<h3 id="retrieve-filtered-list-of-live-sessions-based-on-user-permissions
supports-"mine"-and-"all"-filter-modes-for-auditors-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="retrieve-filtered-list-of-live-sessions-based-on-user-permissions
supports-"mine"-and-"all"-filter-modes-for-auditors-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ProxySession](../Models/sbpam.models.proxysession.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» activitySessionId|string(uuid)|false|none|none|
|» record|boolean|false|none|none|
|» type|string¦null|false|none|none|
|» active|boolean|false|none|none|
|» startDateTimeUtc|string(date-time)|false|none|none|
|» endDateTimeUtc|string(date-time)|false|none|none|
|» key|string¦null|false|none|none|
|» locked|boolean|false|none|none|
|» lockedMessage|string¦null|false|none|none|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» sessionMetadata|[SbPAM.Models.ReplayMetadata](../Models/sbpam.models.replaymetadata.md)|false|none|none|
|»» id|string¦null|false|none|none|
|»» nid|string¦null|false|none|none|
|»» size|integer(int32)|false|none|none|
|»» startTimestamp|string(date-time)|false|none|none|
|»» endTimestamp|string(date-time)¦null|false|none|none|
|»» recordingStartTimestamp|string(date-time)¦null|false|none|none|
|»» recordingEndTimestamp|string(date-time)¦null|false|none|none|
|»» records|[[SbPAM.Models.MetadataRecord](../Models/sbpam.models.metadatarecord.md)]¦null|false|none|none|
|»»» type|any|false|none|none|
|»»» timestamp|integer(int64)|false|none|none|
|»»» entries|[string]¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


