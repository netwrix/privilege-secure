
<h2 id="tocS_SbPAM.Models.OsPlatformMap">SbPAM.Models.OsPlatformMap</h2>

<a id="schemasbpam.models.osplatformmap"></a>
<a id="schema_SbPAM.Models.OsPlatformMap"></a>
<a id="tocSsbpam.models.osplatformmap"></a>
<a id="tocssbpam.models.osplatformmap"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "os": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "platform": {
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
  },
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|os|string¦null|false|none|none|
|platformId|string(uuid)|false|none|none|
|platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


