
<h2 id="tocS_SbPAM.Models.SiemServer">SbPAM.Models.SiemServer</h2>

<a id="schemasbpam.models.siemserver"></a>
<a id="schema_SbPAM.Models.SiemServer"></a>
<a id="tocSsbpam.models.siemserver"></a>
<a id="tocssbpam.models.siemserver"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "serverType": "string",
  "name": "string",
  "host": "string",
  "enabled": true,
  "port": 0,
  "siemTemplateId": "3e1329df-d143-4eb0-a857-d8ee6ea08765",
  "protocol": "string",
  "useSsl": true,
  "enabledTime": "2019-08-24T14:15:22Z",
  "maxEventCreationTime": "2019-08-24T14:15:22Z",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|serverType|string¦null|false|none|none|
|name|string¦null|false|none|none|
|host|string¦null|false|none|none|
|enabled|boolean|false|none|none|
|port|integer(int32)|false|none|none|
|siemTemplateId|string(uuid)|false|none|none|
|protocol|string¦null|false|none|none|
|useSsl|boolean|false|none|none|
|enabledTime|string(date-time)¦null|false|none|none|
|maxEventCreationTime|string(date-time)¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


