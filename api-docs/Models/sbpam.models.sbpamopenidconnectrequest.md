
<h2 id="tocS_SbPAM.Models.SbPAMOpenIdConnectRequest">SbPAM.Models.SbPAMOpenIdConnectRequest</h2>

<a id="schemasbpam.models.sbpamopenidconnectrequest"></a>
<a id="schema_SbPAM.Models.SbPAMOpenIdConnectRequest"></a>
<a id="tocSsbpam.models.sbpamopenidconnectrequest"></a>
<a id="tocssbpam.models.sbpamopenidconnectrequest"></a>

```json
{
  "name": "string",
  "description": "string",
  "clientId": "string",
  "authority": "string",
  "login": "SamAccountName",
  "userIdSource": "Introspection",
  "userIdSourceField": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|clientId|string¦null|false|none|none|
|authority|string¦null|false|none|none|
|login|[SbPAM.Models.SbPAMOpenIdLoginType](../Models/sbpam.models.sbpamopenidlogintype.md)|false|none|none|
|userIdSource|[SbPAM.Models.SbPAMOpenIdUserIdSource](../Models/sbpam.models.sbpamopeniduseridsource.md)|false|none|none|
|userIdSourceField|string¦null|false|none|none|


