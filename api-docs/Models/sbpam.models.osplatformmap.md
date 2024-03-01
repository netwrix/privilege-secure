
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
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "description": "string",
    "builtInAccount": "string",
    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
    "passwordComplexityPolicy": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
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
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
      "type": "Password"
    },
    "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
    "scheduledChangePolicy": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "frequency": null,
      "periodValue": 0,
      "daysOfWeek": "string",
      "dayNumber": 0,
      "localTime": "2019-08-24T14:15:22Z",
      "utcTime": "2019-08-24T14:15:22Z",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
    "protectionPolicySchedule": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "frequency": null,
      "periodValue": 0,
      "daysOfWeek": "string",
      "dayNumber": 0,
      "localTime": "2019-08-24T14:15:22Z",
      "utcTime": "2019-08-24T14:15:22Z",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
    "scanSchedule": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "frequency": null,
      "periodValue": 0,
      "daysOfWeek": "string",
      "dayNumber": 0,
      "localTime": "2019-08-24T14:15:22Z",
      "utcTime": "2019-08-24T14:15:22Z",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
    "verificationSchedule": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "frequency": null,
      "periodValue": 0,
      "daysOfWeek": "string",
      "dayNumber": 0,
      "localTime": "2019-08-24T14:15:22Z",
      "utcTime": "2019-08-24T14:15:22Z",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "resetOnMismatch": true,
    "icon": "string",
    "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
    "type": "Unspecified",
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|os|string¦null|false|none|none|
|platformId|string(uuid)|false|none|none|
|platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


