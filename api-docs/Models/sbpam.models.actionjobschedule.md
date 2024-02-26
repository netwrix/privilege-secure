
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
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "status": null,
  "isRecurring": true,
  "recurrence": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|actionQueueId|string(uuid)¦null|false|none|none|
|recurrenceType|[SbPAM.Constants.ActionConstants+RecurrenceType](#schemasbpam.constants.actionconstants+recurrencetype)|false|none|none|
|hour|integer(int32)|false|none|none|
|minute|integer(int32)|false|none|none|
|dayOfWeek|[System.DayOfWeek](#schemasystem.dayofweek)|false|none|none|
|recurrenceCount|integer(int32)|false|none|none|
|disabled|boolean|false|none|none|
|lastRunId|string(uuid)¦null|false|none|none|
|lastRunTimeUtc|string(date-time)¦null|false|none|none|
|lastRunStatus|[SbPAM.Constants.ActionConstants+ActionStatus](#schemasbpam.constants.actionconstants+actionstatus)|false|none|none|
|nextStartTimeUtc|string(date-time)|false|none|none|
|recurrenceInterval|integer(int32)|false|none|none|
|dayOfMonth|integer(int32)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](#schemasbpam.constants.actionconstants+actionstatus)|false|none|none|
|isRecurring|boolean|false|none|none|
|recurrence|string¦null|false|none|none|


