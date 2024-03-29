
<h2 id="tocS_System.Security.Cryptography.X509Certificates.PublicKey">System.Security.Cryptography.X509Certificates.PublicKey</h2>

<a id="schemasystem.security.cryptography.x509certificates.publickey"></a>
<a id="schema_System.Security.Cryptography.X509Certificates.PublicKey"></a>
<a id="tocSsystem.security.cryptography.x509certificates.publickey"></a>
<a id="tocssystem.security.cryptography.x509certificates.publickey"></a>

```json
{
  "encodedKeyValue": {
    "oid": {
      "value": "string",
      "friendlyName": "string"
    },
    "rawData": "string"
  },
  "encodedParameters": {
    "oid": {
      "value": "string",
      "friendlyName": "string"
    },
    "rawData": "string"
  },
  "key": {
    "keySize": 0,
    "legalKeySizes": [
      {
        "minSize": 0,
        "maxSize": 0,
        "skipSize": 0
      }
    ],
    "signatureAlgorithm": "string",
    "keyExchangeAlgorithm": "string"
  },
  "oid": {
    "value": "string",
    "friendlyName": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|encodedKeyValue|[System.Security.Cryptography.AsnEncodedData](../Models/system.security.cryptography.asnencodeddata.md)|false|none|none|
|encodedParameters|[System.Security.Cryptography.AsnEncodedData](../Models/system.security.cryptography.asnencodeddata.md)|false|none|none|
|key|[System.Security.Cryptography.AsymmetricAlgorithm](../Models/system.security.cryptography.asymmetricalgorithm.md)|false|none|none|
|oid|[System.Security.Cryptography.Oid](../Models/system.security.cryptography.oid.md)|false|none|none|


