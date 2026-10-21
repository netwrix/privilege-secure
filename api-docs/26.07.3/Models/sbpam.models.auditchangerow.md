
<h2 id="tocS_SbPAM.Models.AuditChangeRow">SbPAM.Models.AuditChangeRow</h2>

<a id="schemasbpam.models.auditchangerow"></a>
<a id="schema_SbPAM.Models.AuditChangeRow"></a>
<a id="tocSsbpam.models.auditchangerow"></a>
<a id="tocssbpam.models.auditchangerow"></a>

```json
{
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
        "changedColumns": [],
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
  ],
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
|timeRecordedUtc|string(date-time)|false|none|When the database change occurred|
|modelName|string¦null|false|none|The name of the model changed (e.g. "HostScanJob")|
|modelTitle|string¦null|false|none|A descriptive title (e.g., "Host Scan Job") for the model|
|rowKey|string¦null|false|none|Typically the value of the "id" column for the row that was changed|
|rowTitle|string¦null|false|none|A descriptive title (e.g., "John Doe") representing the record that got changed|
|changeType|[SbPAM.Constants.ActionConstants+AuditChangeRowType](../Models/sbpam.constants.actionconstants+auditchangerowtype.md)|false|none|none|
|changedByUserId|string(uuid)¦null|false|none|Which logged-in user, if any, was responsible?|
|changedByUserName|string¦null|false|none|Which logged-in user, if any, was responsible?|
|fromAction|string¦null|false|none|Indication of what broad action (e.g., MVC controller name and action name) initiated this change|
|changedColumns|[[SbPAM.Models.AuditChangeColumn](../Models/sbpam.models.auditchangecolumn.md)]¦null|false|none|What columns changed or were added/deleted?|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


