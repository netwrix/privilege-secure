
<h2 id="tocS_SbPAM.Models.ActionJobSchedule">SbPAM.Models.ActionJobSchedule</h2>

<a id="schemasbpam.models.actionjobschedule"></a>
<a id="schema_SbPAM.Models.ActionJobSchedule"></a>
<a id="tocSsbpam.models.actionjobschedule"></a>
<a id="tocssbpam.models.actionjobschedule"></a>

```json
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

```

DTO for Action Job Schedule.
Combines the ActionQueue and ActionJob class

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|SbPAM.Models.ActionJobActionJob<br>             Id|
|name|string¦null|false|none|Name of the ActionGroup that is associated with the ActionJob|
|actionQueueId|string(uuid)¦null|false|none|Id of ActionQueue associated with it.|
|recurrenceType|[SbPAM.Constants.ActionConstants+RecurrenceType](../Models/sbpam.constants.actionconstants+recurrencetype.md)|false|none|none|
|hour|integer(int32)|false|none|none|
|minute|integer(int32)|false|none|none|
|dayOfWeek|[System.DayOfWeek](../Models/system.dayofweek.md)|false|none|none|
|recurrenceCount|integer(int32)|false|none|none|
|disabled|boolean|false|none|none|
|lastRunId|string(uuid)¦null|false|none|none|
|lastRunTimeUtc|string(date-time)¦null|false|none|none|
|lastRunStatus|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|nextStartTimeUtc|string(date-time)|false|none|none|
|recurrenceInterval|integer(int32)|false|none|none|
|dayOfMonth|integer(int32)|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|isRecurring|boolean|false|none|none|
|recurrence|string¦null|false|none|none|


