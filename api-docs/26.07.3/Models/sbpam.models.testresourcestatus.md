
<h2 id="tocS_SbPAM.Models.TestResourceStatus">SbPAM.Models.TestResourceStatus</h2>

<a id="schemasbpam.models.testresourcestatus"></a>
<a id="schema_SbPAM.Models.TestResourceStatus"></a>
<a id="tocSsbpam.models.testresourcestatus"></a>
<a id="tocssbpam.models.testresourcestatus"></a>

```json
{
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
      "testResourceStatus": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
        "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
        "status": "Pending",
        "startedDateTimeUtc": "2019-08-24T14:15:22Z",
        "finishedDateTimeUtc": "2019-08-24T14:15:22Z",
        "errorMessage": "string",
        "steps": [],
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "stepName": "string",
      "index": 0,
      "status": "Pending",
      "errorMessage": "string",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    }
  ],
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|managedResourceId|string(uuid)¦null|false|none|none|
|hostId|string(uuid)¦null|false|none|none|
|status|[SbPAM.Models.TestStepStatus](../Models/sbpam.models.teststepstatus.md)|false|none|none|
|startedDateTimeUtc|string(date-time)|false|none|none|
|finishedDateTimeUtc|string(date-time)|false|none|none|
|errorMessage|string¦null|false|none|none|
|steps|[[SbPAM.Models.TestResourceStatusStep](../Models/sbpam.models.testresourcestatusstep.md)]¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


