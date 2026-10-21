
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
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      }
    ],
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
  "propertyName": "string",
  "value": "string",
  "oldValue": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

This model represents a job that has been scheduled to an
    associated action queue.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this entity|
|auditRowChangeId|string(uuid)|false|none|The parent row-change record that groups column-changes together|
|auditChangeRow|[SbPAM.Models.AuditChangeRow](../Models/sbpam.models.auditchangerow.md)|false|none|This model represents a job that has been scheduled to an<br>    associated action queue.|
|propertyName|string¦null|false|none|The name of the entity model's property (not the column name)|
|value|string¦null|false|none|If this is a row change then this is the newer value. Otherwise this is<br>the current (or former) value for a new or deleted row.|
|oldValue|string¦null|false|none|If this is a row change then this is the value before save|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


