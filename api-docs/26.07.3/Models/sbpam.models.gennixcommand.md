
<h2 id="tocS_SbPAM.Models.GennixCommand">SbPAM.Models.GennixCommand</h2>

<a id="schemasbpam.models.gennixcommand"></a>
<a id="schema_SbPAM.Models.GennixCommand"></a>
<a id="tocSsbpam.models.gennixcommand"></a>
<a id="tocssbpam.models.gennixcommand"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "commandSetId": "e8c8a103-3a07-4419-8d37-aa37616deb52",
  "commandToSend": "string",
  "commandScript": "string",
  "executionOrder": 0,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
  "resultActions": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "commandId": "9e2dd63c-3478-489f-86d3-8c292a65a0aa",
      "expectedResult": "string",
      "expectedResultIsSuffix": true,
      "expectedResultIsPrefix": true,
      "isRegex": true,
      "isTermBreak": true,
      "isForceTermBreak": true,
      "isError": true,
      "continueOnError": true,
      "executionOrder": 0,
      "jumpToCommandId": "e6afe95c-7046-47ad-b239-73a4a0d32867",
      "jumpToCommandSetId": "50df31f2-0987-4271-a608-c721a9b005bc",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|commandSetId|string(uuid)|false|none|none|
|commandToSend|string¦null|false|none|none|
|commandScript|string¦null|false|none|none|
|executionOrder|integer(int32)|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|resultActions|[[SbPAM.Models.GennixCommandResultAction](../Models/sbpam.models.gennixcommandresultaction.md)]¦null|false|none|none|


