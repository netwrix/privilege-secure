
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
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


