
<h2 id="tocS_SbPAM.Models.ActionParameter">SbPAM.Models.ActionParameter</h2>

<a id="schemasbpam.models.actionparameter"></a>
<a id="schema_SbPAM.Models.ActionParameter"></a>
<a id="tocSsbpam.models.actionparameter"></a>
<a id="tocssbpam.models.actionparameter"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "value": "string",
  "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
  "actionTemplateParameter": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "displayName": "string",
    "description": "string",
    "sortOrder": 0,
    "required": true,
    "type": null,
    "multiline": true,
    "defaultValue": "string",
    "shouldSerialize_ValueSet": true,
    "_ValueSet": "string",
    "valueSet": [
      "string"
    ],
    "limitToValueSet": true,
    "helperText": "string",
    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

This model represents a parameter statically associated with an action.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|value|string¦null|false|none|Value for this parameter.|
|actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


