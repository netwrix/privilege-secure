
<h2 id="tocS_SbPAM.Models.ProxySession">SbPAM.Models.ProxySession</h2>

<a id="schemasbpam.models.proxysession"></a>
<a id="schema_SbPAM.Models.ProxySession"></a>
<a id="tocSsbpam.models.proxysession"></a>
<a id="tocssbpam.models.proxysession"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "record": true,
  "type": "string",
  "active": true,
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "key": "string",
  "locked": true,
  "lockedMessage": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "sessionMetadata": {
    "id": "string",
    "nid": "string",
    "size": 0,
    "startTimestamp": "2019-08-24T14:15:22Z",
    "endTimestamp": "2019-08-24T14:15:22Z",
    "recordingStartTimestamp": "2019-08-24T14:15:22Z",
    "recordingEndTimestamp": "2019-08-24T14:15:22Z",
    "records": [
      {
        "type": null,
        "timestamp": 0,
        "entries": [
          "string"
        ]
      }
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|activitySessionId|string(uuid)|false|none|none|
|record|boolean|false|none|none|
|type|string¦null|false|none|none|
|active|boolean|false|none|none|
|startDateTimeUtc|string(date-time)|false|none|none|
|endDateTimeUtc|string(date-time)|false|none|none|
|key|string¦null|false|none|none|
|locked|boolean|false|none|none|
|lockedMessage|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|sessionMetadata|[SbPAM.Models.ReplayMetadata](../Models/sbpam.models.replaymetadata.md)|false|none|none|


