
<h2 id="tocS_SbPAM.Models.ReplayMetadata">SbPAM.Models.ReplayMetadata</h2>

<a id="schemasbpam.models.replaymetadata"></a>
<a id="schema_SbPAM.Models.ReplayMetadata"></a>
<a id="tocSsbpam.models.replaymetadata"></a>
<a id="tocssbpam.models.replaymetadata"></a>

```json
{
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

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string¦null|false|none|none|
|nid|string¦null|false|none|none|
|size|integer(int32)|false|none|none|
|startTimestamp|string(date-time)|false|none|none|
|endTimestamp|string(date-time)¦null|false|none|none|
|recordingStartTimestamp|string(date-time)¦null|false|none|none|
|recordingEndTimestamp|string(date-time)¦null|false|none|none|
|records|[[SbPAM.Models.MetadataRecord](../Models/sbpam.models.metadatarecord.md)]¦null|false|none|none|


