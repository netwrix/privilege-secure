
<h2 id="tocS_SbPAM.Models.GennixCommandResultAction">SbPAM.Models.GennixCommandResultAction</h2>

<a id="schemasbpam.models.gennixcommandresultaction"></a>
<a id="schema_SbPAM.Models.GennixCommandResultAction"></a>
<a id="tocSsbpam.models.gennixcommandresultaction"></a>
<a id="tocssbpam.models.gennixcommandresultaction"></a>

```json
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

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|commandId|string(uuid)|false|none|none|
|expectedResult|string¦null|false|none|none|
|expectedResultIsSuffix|boolean|false|none|none|
|expectedResultIsPrefix|boolean|false|none|none|
|isRegex|boolean|false|none|none|
|isTermBreak|boolean|false|none|none|
|isForceTermBreak|boolean|false|none|none|
|isError|boolean|false|none|none|
|continueOnError|boolean|false|none|none|
|executionOrder|integer(int32)|false|none|none|
|jumpToCommandId|string(uuid)¦null|false|none|none|
|jumpToCommandSetId|string(uuid)¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


