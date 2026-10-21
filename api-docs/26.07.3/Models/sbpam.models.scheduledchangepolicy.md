
<h2 id="tocS_SbPAM.Models.ScheduledChangePolicy">SbPAM.Models.ScheduledChangePolicy</h2>

<a id="schemasbpam.models.scheduledchangepolicy"></a>
<a id="schema_SbPAM.Models.ScheduledChangePolicy"></a>
<a id="tocSsbpam.models.scheduledchangepolicy"></a>
<a id="tocssbpam.models.scheduledchangepolicy"></a>

```json
{
  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
  "name": "Every 2 hours",
  "description": "Every 2 hours",
  "frequency": null,
  "periodValue": 60,
  "daysOfWeek": "SmtwTfs",
  "dayNumber": 1,
  "localTime": "20240101T05:07:08.555",
  "utcTime": "20240101T05:07:08.555Z",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

Represents a scheduled change policy for a node.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|The unique identifier of the scheduled change policy.|
|name|string¦null|false|none|The name of the scheduled change policy.|
|description|string¦null|false|none|The description of the scheduled change policy.|
|frequency|[SbPAM.Models.ScheduledChangePolicy+FrequencyType](../Models/sbpam.models.scheduledchangepolicy+frequencytype.md)|false|none|none|
|periodValue|integer(int32)|false|none|The period value of the scheduled change.|
|daysOfWeek|string¦null|false|none|The days of the week on which the scheduled change occurs.|
|dayNumber|integer(int32)|false|none|The day of the month on which the scheduled change occurs.|
|localTime|string(date-time)|false|none|The local time at which the scheduled change occurs.|
|utcTime|string(date-time)¦null|false|none|The UTC time at which the scheduled change occurs.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


