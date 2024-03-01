
<h2 id="tocS_SbPAM.Models.AuditChangeColumn">SbPAM.Models.AuditChangeColumn</h2>

<a id="schemasbpam.models.auditchangecolumn"></a>
<a id="schema_SbPAM.Models.AuditChangeColumn"></a>
<a id="tocSsbpam.models.auditchangecolumn"></a>
<a id="tocssbpam.models.auditchangecolumn"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "auditRowChangeId": "2e3391e4-df74-4b47-8f94-1373ce3a67ad",
  "auditChangeRow": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "timeRecordedUtc": "2019-08-24T14:15:22Z",
    "modelName": "string",
    "modelTitle": "string",
    "rowKey": "string",
    "rowTitle": "string",
    "changeType": null,
    "changedByUserId": "362d38dc-25bb-4384-bc34-bb679fb2cded",
    "changedByUserName": "string",
    "fromAction": "string",
    "changedColumns": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "auditRowChangeId": "2e3391e4-df74-4b47-8f94-1373ce3a67ad",
        "auditChangeRow": {},
        "propertyName": "string",
        "value": "string",
        "oldValue": "string",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ],
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "propertyName": "string",
  "value": "string",
  "oldValue": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|auditRowChangeId|string(uuid)|false|none|none|
|auditChangeRow|[SbPAM.Models.AuditChangeRow](../Models/sbpam.models.auditchangerow.md)|false|none|none|
|propertyName|string¦null|false|none|none|
|value|string¦null|false|none|none|
|oldValue|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


