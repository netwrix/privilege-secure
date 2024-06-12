
<h2 id="tocS_SbPAM.Models.SbPAMSamlRequest">SbPAM.Models.SbPAMSamlRequest</h2>

<a id="schemasbpam.models.sbpamsamlrequest"></a>
<a id="schema_SbPAM.Models.SbPAMSamlRequest"></a>
<a id="tocSsbpam.models.sbpamsamlrequest"></a>
<a id="tocssbpam.models.sbpamsamlrequest"></a>

<details><summary>JSON</summary>


```json
{
  "name": "string",
  "description": "string",
  "issuer": "string",
  "logoutUri": "string",
  "loginType": "SamAccountName",
  "claim": "string",
  "checkCertificate": true,
  "certificate": "string",
  "nameIdPolicy": "string"
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|issuer|string¦null|false|none|none|
|logoutUri|string¦null|false|none|none|
|loginType|[SbPAM.Models.SbPAMOpenIdLoginType](../Models/sbpam.models.sbpamopenidlogintype.md)|false|none|none|
|claim|string¦null|false|none|none|
|checkCertificate|boolean|false|none|none|
|certificate|string¦null|false|none|none|
|nameIdPolicy|string¦null|false|none|none|


