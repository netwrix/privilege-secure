
<h2 id="tocS_SbPAM.Models.GennixCommandPlan">SbPAM.Models.GennixCommandPlan</h2>

<a id="schemasbpam.models.gennixcommandplan"></a>
<a id="schema_SbPAM.Models.GennixCommandPlan"></a>
<a id="tocSsbpam.models.gennixcommandplan"></a>
<a id="tocssbpam.models.gennixcommandplan"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "name": "string",
  "description": "string",
  "permanent": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "commandSets": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "commandPlanId": "379448c2-4217-4597-8f65-2c958fd0f39c",
      "name": "string",
      "description": "string",
      "executionOrder": 0,
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
      "commands": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "commandSetId": "e8c8a103-3a07-4419-8d37-aa37616deb52",
          "commandToSend": "string",
          "executionOrder": 0,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
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
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ]
        }
      ]
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|platformId|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|permanent|boolean|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|commandSets|[[SbPAM.Models.GennixCommandSet](../Models/sbpam.models.gennixcommandset.md)]¦null|false|none|none|


