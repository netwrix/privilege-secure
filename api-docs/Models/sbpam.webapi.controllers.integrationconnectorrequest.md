
<h2 id="tocS_SbPAM.WebAPI.Controllers.IntegrationConnectorRequest">SbPAM.WebAPI.Controllers.IntegrationConnectorRequest</h2>

<a id="schemasbpam.webapi.controllers.integrationconnectorrequest"></a>
<a id="schema_SbPAM.WebAPI.Controllers.IntegrationConnectorRequest"></a>
<a id="tocSsbpam.webapi.controllers.integrationconnectorrequest"></a>
<a id="tocssbpam.webapi.controllers.integrationconnectorrequest"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "settings": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "value": "string",
      "required": true,
      "defaultValue": "string",
      "type": "Uri",
      "displayOrder": 0,
      "advanced": true
    }
  ],
  "connectorTemplateId": "5434828d-4b09-4271-b749-170dedf7f68a",
  "connectorConfigurationId": "a5468742-db00-4969-b437-badd97e00c25"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|settings|[[SbPAM.WebAPI.Controllers.IntegrationConnectorSettingValue](#schemasbpam.webapi.controllers.integrationconnectorsettingvalue)]¦null|false|none|none|
|connectorTemplateId|string(uuid)|false|none|none|
|connectorConfigurationId|string(uuid)|false|none|none|


