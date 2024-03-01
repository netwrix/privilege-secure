
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
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|clientId|string¦null|false|none|none|
|authority|string¦null|false|none|none|
|login|[SbPAM.Models.SbPAMOpenIdLoginType](../Models/sbpam.models.sbpamopenidlogintype.md)|false|none|none|
|userIdSource|[SbPAM.Models.SbPAMOpenIdUserIdSource](../Models/sbpam.models.sbpamopeniduseridsource.md)|false|none|none|
|userIdSourceField|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


