
<h2 id="tocS_SbPAM.Models.EmailTemplate">SbPAM.Models.EmailTemplate</h2>

<a id="schemasbpam.models.emailtemplate"></a>
<a id="schema_SbPAM.Models.EmailTemplate"></a>
<a id="tocSsbpam.models.emailtemplate"></a>
<a id="tocssbpam.models.emailtemplate"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "emailSettingsId": "f97b605c-a258-4007-967b-14f8a52c230d",
  "emailSettings": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "description": "string",
    "type": "Generic",
    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
    "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "isDefault": true,
    "isDeleted": true,
    "isUserModified": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "activityConfigurationSettings": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "key": "string",
        "value": "string",
        "type": "String",
        "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ]
  },
  "htmlTemplate": "string",
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
|description|string¦null|false|none|none|
|emailSettingsId|string(uuid)¦null|false|none|none|
|emailSettings|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|none|
|htmlTemplate|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


