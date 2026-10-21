
<h2 id="tocS_SbPAM.Models.Platform">SbPAM.Models.Platform</h2>

<a id="schemasbpam.models.platform"></a>
<a id="schema_SbPAM.Models.Platform"></a>
<a id="tocSsbpam.models.platform"></a>
<a id="tocssbpam.models.platform"></a>

```json
{
  "id": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
  "name": "Linux",
  "description": "Linux",
  "builtInAccount": "root",
  "passwordComplexityPolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
  "passwordComplexityPolicy": {
    "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "name": "ComplexityName",
    "description": "ComplexityDescription",
    "lowerCase": true,
    "upperCase": true,
    "specialCharacter": true,
    "space": true,
    "numeric": true,
    "mustEndWith": "None",
    "mustStartWith": "None",
    "length": 0,
    "maxConsecutive": 0,
    "charsToExclude": "string",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
    "type": "Password"
  },
  "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
  "scheduledChangePolicy": {
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
  "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
  "protectionPolicySchedule": {
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
  "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
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
  "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
  "verificationSchedule": {
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
  "resetOnMismatch": true,
  "icon": "string",
  "basePlatformId": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
  "os": "string",
  "type": "Unspecified",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
  "showCommandPlans": true,
  "permanent": true
}

```

This model represents an platform on which a particular activity can be performed.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique identifier for this platform.|
|name|string¦null|false|none|Name for this platform.|
|description|string¦null|false|none|Description for this platform.|
|builtInAccount|string¦null|false|none|Built-in account for this platform.|
|passwordComplexityPolicyId|string(uuid)¦null|false|none|Password complexity policy Id for this platform.|
|passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|Password complexity model|
|scheduledChangePolicyId|string(uuid)¦null|false|none|Password change schedule policy Id for this platform.|
|scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|protectionPolicyScheduleId|string(uuid)¦null|false|none|Protection policy schedule Id for this platform.|
|protectionPolicySchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|scanScheduleId|string(uuid)¦null|false|none|Scan schedule Id for this platform.|
|scanSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|verificationScheduleId|string(uuid)¦null|false|none|Password verification schedule Id for this platform.|
|verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|resetOnMismatch|boolean|false|none|Password reset on mismatch.|
|icon|string(byte)¦null|false|none|Icon for this platform.|
|basePlatformId|string(uuid)¦null|false|none|Base platform ID for this platform.|
|os|string¦null|false|none|OS is the list of operating systems returned by uname - this is for custom platform support|
|type|[SbPAM.Models.PlatformTypeEnum](../Models/sbpam.models.platformtypeenum.md)|false|none|Platform types|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|showCommandPlans|boolean|false|none|Indicates to show command plans.|
|permanent|boolean|false|none|Permanent is set true for base platforms that cannot be deleted|


