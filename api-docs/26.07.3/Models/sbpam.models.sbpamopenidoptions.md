
<h2 id="tocS_SbPAM.Models.SbPAMOpenIdOptions">SbPAM.Models.SbPAMOpenIdOptions</h2>

<a id="schemasbpam.models.sbpamopenidoptions"></a>
<a id="schema_SbPAM.Models.SbPAMOpenIdOptions"></a>
<a id="tocSsbpam.models.sbpamopenidoptions"></a>
<a id="tocssbpam.models.sbpamopenidoptions"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "clientId": "string",
  "authority": "string",
  "login": "SamAccountName",
  "userIdSource": "Introspection",
  "userIdSourceField": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|clientId|string¦null|false|none|Application client Id from the provider|
|authority|string¦null|false|none|Uri for provider authorization|
|login|[SbPAM.Models.SbPAMOpenIdLoginType](../Models/sbpam.models.sbpamopenidlogintype.md)|false|none|none|
|userIdSource|[SbPAM.Models.SbPAMOpenIdUserIdSource](../Models/sbpam.models.sbpamopeniduseridsource.md)|false|none|none|
|userIdSourceField|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


