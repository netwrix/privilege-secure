
##  (Auth policies: MfaRequired, MfaRequired; roles: Admin,App, App)

<a id="opIdGetSinceAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActionJob/Since/{modifiedAfter} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActionJob/Since/{modifiedAfter} -Headers $Headers
```

`GET /api/v1/ActionJob/Since/{modifiedAfter}`

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app,-app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|modifiedAfter|path|string(date-time)|true|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
    "recurrenceType": null,
    "hour": 0,
    "minute": 0,
    "dayOfWeek": "Sunday",
    "recurrenceCount": 0,
    "disabled": true,
    "lastRunId": "729b3d52-1129-42f2-a449-e698e495bcd0",
    "lastRunTimeUtc": "2019-08-24T14:15:22Z",
    "lastRunStatus": null,
    "nextStartTimeUtc": "2019-08-24T14:15:22Z",
    "recurrenceInterval": 0,
    "dayOfMonth": 0,
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
    "status": null,
    "isRecurring": true,
    "recurrence": "string"
  }
]
```

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app,-app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app,-app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ActionJobSchedule](../Models/sbpam.models.actionjobschedule.md)]|false|none|[DTO for Action Job Schedule.<br>Combines the ActionQueue and ActionJob class]|
|» id|string(uuid)|false|none|SbPAM.Models.ActionJobActionJob<br>             Id|
|» name|string¦null|false|none|Name of the ActionGroup that is associated with the ActionJob|
|» actionQueueId|string(uuid)¦null|false|none|Id of ActionQueue associated with it.|
|» recurrenceType|any|false|none|none|
|» hour|integer(int32)|false|none|none|
|» minute|integer(int32)|false|none|none|
|» dayOfWeek|[System.DayOfWeek](../Models/system.dayofweek.md)(int32)|false|none|none|
|» recurrenceCount|integer(int32)|false|none|none|
|» disabled|boolean|false|none|none|
|» lastRunId|string(uuid)¦null|false|none|none|
|» lastRunTimeUtc|string(date-time)¦null|false|none|none|
|» lastRunStatus|any|false|none|none|
|» nextStartTimeUtc|string(date-time)|false|none|none|
|» recurrenceInterval|integer(int32)|false|none|none|
|» dayOfMonth|integer(int32)|false|none|none|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» status|any|false|none|none|
|» isRecurring|boolean|false|none|none|
|» recurrence|string¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|dayOfWeek|Sunday|
|dayOfWeek|Monday|
|dayOfWeek|Tuesday|
|dayOfWeek|Wednesday|
|dayOfWeek|Thursday|
|dayOfWeek|Friday|
|dayOfWeek|Saturday|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


