
<h2 id="tocS_SbPAM.Models.ReplaySession">SbPAM.Models.ReplaySession</h2>

<a id="schemasbpam.models.replaysession"></a>
<a id="schema_SbPAM.Models.ReplaySession"></a>
<a id="tocSsbpam.models.replaysession"></a>
<a id="tocssbpam.models.replaysession"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "streamId": "22cb260b-fac8-4ce4-8488-8f1949304300",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "proxySessionId": "051aae55-c135-4dbb-884f-3eba8672f47b",
  "viewingKey": "b3f10e8a-fc6f-48c3-8bbf-421d4699ba4a",
  "sessionType": "string",
  "createdFromIPV4Address": "string",
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "startOffset": 0,
  "endOffset": 0,
  "recordingStartDateTimeUtc": "2019-08-24T14:15:22Z",
  "recordingEndDateTimeUtc": "2019-08-24T14:15:22Z",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Id|
|streamId|string(uuid)|false|none|none|
|activitySessionId|string(uuid)|false|none|ActivitySession for replay|
|proxySessionId|string(uuid)|false|none|ProxySession for replay|
|viewingKey|string(uuid)¦null|false|none|ProxySession for replay|
|sessionType|string¦null|false|none|RDP or SSH|
|createdFromIPV4Address|string¦null|false|none|IPv4 Address where this was created from|
|startDateTimeUtc|string(date-time)|false|none|When the user started viewing the replay|
|endDateTimeUtc|string(date-time)|false|none|When the user stopped viewing the replay|
|startOffset|integer(int32)|false|none|Specifics about the recording|
|endOffset|integer(int32)|false|none|none|
|recordingStartDateTimeUtc|string(date-time)|false|none|none|
|recordingEndDateTimeUtc|string(date-time)|false|none|none|
|createdBy|string(uuid)¦null|false|none|Id of user that created this collection.|
|nodeId|string(uuid)|false|none|Create date time in UTC|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


