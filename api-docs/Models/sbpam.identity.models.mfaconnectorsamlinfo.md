
<h2 id="tocS_SbPAM.Identity.Models.MfaConnectorSamlInfo">SbPAM.Identity.Models.MfaConnectorSamlInfo</h2>

<a id="schemasbpam.identity.models.mfaconnectorsamlinfo"></a>
<a id="schema_SbPAM.Identity.Models.MfaConnectorSamlInfo"></a>
<a id="tocSsbpam.identity.models.mfaconnectorsamlinfo"></a>
<a id="tocssbpam.identity.models.mfaconnectorsamlinfo"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "isExclusive": true,
  "isDefault": true,
  "issuer": "string",
  "logoutUri": "string",
  "loginType": "SamAccountName",
  "claim": "string",
  "checkCertificate": true,
  "certificate": "string",
  "nameIdPolicy": "string",
  "useRemoteAccessGateway": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|isExclusive|boolean|false|none|none|
|isDefault|boolean|false|none|none|
|issuer|string¦null|false|none|none|
|logoutUri|string¦null|false|none|none|
|loginType|[SbPAM.Identity.Models.OpenIdLoginType](#schemasbpam.identity.models.openidlogintype)|false|none|none|
|claim|string¦null|false|none|none|
|checkCertificate|boolean|false|none|none|
|certificate|string¦null|false|none|none|
|nameIdPolicy|string¦null|false|none|none|
|useRemoteAccessGateway|boolean|false|none|none|


