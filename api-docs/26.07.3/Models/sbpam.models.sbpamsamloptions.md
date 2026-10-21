
<h2 id="tocS_SbPAM.Models.SbPAMSamlOptions">SbPAM.Models.SbPAMSamlOptions</h2>

<a id="schemasbpam.models.sbpamsamloptions"></a>
<a id="schema_SbPAM.Models.SbPAMSamlOptions"></a>
<a id="tocSsbpam.models.sbpamsamloptions"></a>
<a id="tocssbpam.models.sbpamsamloptions"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "issuer": "string",
  "logoutUri": "string",
  "loginType": "SamAccountName",
  "claim": "string",
  "checkCertificate": true,
  "certificate": "string",
  "nameIdPolicy": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|issuer|string¦null|false|none|none|
|logoutUri|string¦null|false|none|none|
|loginType|[SbPAM.Models.SbPAMOpenIdLoginType](../Models/sbpam.models.sbpamopenidlogintype.md)|false|none|none|
|claim|string¦null|false|none|none|
|checkCertificate|boolean|false|none|none|
|certificate|string¦null|false|none|none|
|nameIdPolicy|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


