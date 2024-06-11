
<h2 id="tocS_SbPAM.Models.ActionParameter">SbPAM.Models.ActionParameter</h2>

<a id="schemasbpam.models.actionparameter"></a>
<a id="schema_SbPAM.Models.ActionParameter"></a>
<a id="tocSsbpam.models.actionparameter"></a>
<a id="tocssbpam.models.actionparameter"></a>

<details><summary>JSON</summary>


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
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|value|string¦null|false|none|none|
|actionTemplateParameterId|string(uuid)|false|none|none|
|actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|none|
|actionId|string(uuid)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


