
<h2 id="tocS_SbPAM.Models.ActionTemplateParameter">SbPAM.Models.ActionTemplateParameter</h2>

<a id="schemasbpam.models.actiontemplateparameter"></a>
<a id="schema_SbPAM.Models.ActionTemplateParameter"></a>
<a id="tocSsbpam.models.actiontemplateparameter"></a>
<a id="tocssbpam.models.actiontemplateparameter"></a>

```json
{
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
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

This model represents a template for a parameter associated with an action group action.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|name|string¦null|false|none|Name for this parameter.|
|displayName|string¦null|false|none|Long name for this parameter.|
|description|string¦null|false|none|Human readable description for this parameter.|
|sortOrder|integer(int32)|false|none|The order these will appear in lists and reports|
|required|boolean|false|none|True if parameter is required.|
|type|[SbPAM.Constants.ActionConstants+ActionParameterType](../Models/sbpam.constants.actionconstants+actionparametertype.md)|false|none|none|
|multiline|boolean|false|none|Tell UI to make this multiline|
|defaultValue|string¦null|false|none|Default value.|
|shouldSerialize_ValueSet|boolean|false|read-only|Allowed values (if restricted).|
|_ValueSet|string¦null|false|none|none|
|valueSet|[string]¦null|false|none|none|
|limitToValueSet|boolean|false|none|If true (default) and .ValueSet is given then the user may not enter something off that list|
|helperText|string¦null|false|none|none|
|actionTemplateId|string(uuid)¦null|false|none|Id of action template which contains this parameter.|
|actionPackId|string(uuid)¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


