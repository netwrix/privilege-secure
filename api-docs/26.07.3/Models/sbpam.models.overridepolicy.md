
<h2 id="tocS_SbPAM.Models.OverridePolicy">SbPAM.Models.OverridePolicy</h2>

<a id="schemasbpam.models.overridepolicy"></a>
<a id="schema_SbPAM.Models.OverridePolicy"></a>
<a id="tocSsbpam.models.overridepolicy"></a>
<a id="tocssbpam.models.overridepolicy"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "name": "string",
  "description": "string",
  "type": "Credential",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
  "scanSchedule": {
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
  },
  "protectScheduleId": "c955773e-7378-4050-af91-002299988236",
  "protectSchedule": {
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
  },
  "rotateScheduleId": "379784bc-29b2-46de-bb99-10f680a8146c",
  "rotateSchedule": {
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
  },
  "verifyScheduleId": "2190edbf-7ff9-4763-a5b1-82aead3141b4",
  "verifySchedule": {
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
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|name|string|true|none|none|
|description|string¦null|false|none|none|
|type|[SbPAM.Models.OverridePolicyType](../Models/sbpam.models.overridepolicytype.md)|false|none|none|
|platformId|string(uuid)|false|none|none|
|scanScheduleId|string(uuid)¦null|false|none|none|
|scanSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|protectScheduleId|string(uuid)¦null|false|none|none|
|protectSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|rotateScheduleId|string(uuid)¦null|false|none|none|
|rotateSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|verifyScheduleId|string(uuid)¦null|false|none|none|
|verifySchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|


