
<h2 id="tocS_SbPAM.Models.TestResourceStatusStep">SbPAM.Models.TestResourceStatusStep</h2>

<a id="schemasbpam.models.testresourcestatusstep"></a>
<a id="schema_SbPAM.Models.TestResourceStatusStep"></a>
<a id="tocSsbpam.models.testresourcestatusstep"></a>
<a id="tocssbpam.models.testresourcestatusstep"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "testResourceStatusId": "d44f170a-5b59-4773-9908-5b3939496cdd",
  "testResourceStatus": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
    "status": "Pending",
    "startedDateTimeUtc": "2019-08-24T14:15:22Z",
    "finishedDateTimeUtc": "2019-08-24T14:15:22Z",
    "errorMessage": "string",
    "steps": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "testResourceStatusId": "d44f170a-5b59-4773-9908-5b3939496cdd",
        "testResourceStatus": {},
        "stepName": "string",
        "index": 0,
        "status": "Pending",
        "errorMessage": "string",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ],
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "stepName": "string",
  "index": 0,
  "status": "Pending",
  "errorMessage": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|testResourceStatusId|string(uuid)|false|none|none|
|testResourceStatus|[SbPAM.Models.TestResourceStatus](../Models/sbpam.models.testresourcestatus.md)|false|none|none|
|stepName|string¦null|false|none|none|
|index|integer(int32)|false|none|none|
|status|[SbPAM.Models.TestStepStatus](../Models/sbpam.models.teststepstatus.md)|false|none|none|
|errorMessage|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


