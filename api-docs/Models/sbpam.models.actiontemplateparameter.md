
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|displayName|string¦null|false|none|none|
|description|string¦null|false|none|none|
|sortOrder|integer(int32)|false|none|none|
|required|boolean|false|none|none|
|type|[SbPAM.Constants.ActionConstants+ActionParameterType](#schemasbpam.constants.actionconstants+actionparametertype)|false|none|none|
|multiline|boolean|false|none|none|
|defaultValue|string¦null|false|none|none|
|shouldSerialize_ValueSet|boolean|false|read-only|none|
|_ValueSet|string¦null|false|none|none|
|valueSet|[string]¦null|false|none|none|
|limitToValueSet|boolean|false|none|none|
|helperText|string¦null|false|none|none|
|actionTemplateId|string(uuid)¦null|false|none|none|
|actionPackId|string(uuid)¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


