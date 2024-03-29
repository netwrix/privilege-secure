
<h2 id="tocS_System.Security.Cryptography.X509Certificates.X509Certificate2">System.Security.Cryptography.X509Certificates.X509Certificate2</h2>

<a id="schemasystem.security.cryptography.x509certificates.x509certificate2"></a>
<a id="schema_System.Security.Cryptography.X509Certificates.X509Certificate2"></a>
<a id="tocSsystem.security.cryptography.x509certificates.x509certificate2"></a>
<a id="tocssystem.security.cryptography.x509certificates.x509certificate2"></a>

```json
{
  "handle": {},
  "issuer": "string",
  "subject": "string",
  "archived": true,
  "extensions": [
    {
      "oid": {
        "value": "string",
        "friendlyName": "string"
      },
      "rawData": "string",
      "critical": true
    }
  ],
  "friendlyName": "string",
  "hasPrivateKey": true,
  "privateKey": {
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
  "issuerName": {
    "oid": {
      "value": "string",
      "friendlyName": "string"
    },
    "rawData": "string",
    "name": "string"
  },
  "notAfter": "2019-08-24T14:15:22Z",
  "notBefore": "2019-08-24T14:15:22Z",
  "publicKey": {
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
  },
  "rawData": "string",
  "serialNumber": "string",
  "signatureAlgorithm": {
    "value": "string",
    "friendlyName": "string"
  },
  "subjectName": {
    "oid": {
      "value": "string",
      "friendlyName": "string"
    },
    "rawData": "string",
    "name": "string"
  },
  "thumbprint": "string",
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|handle|[System.IntPtr](../Models/system.intptr.md)|false|none|none|
|issuer|string¦null|false|read-only|none|
|subject|string¦null|false|read-only|none|
|archived|boolean|false|none|none|
|extensions|[[System.Security.Cryptography.X509Certificates.X509Extension](../Models/system.security.cryptography.x509certificates.x509extension.md)]¦null|false|read-only|none|
|friendlyName|string¦null|false|none|none|
|hasPrivateKey|boolean|false|read-only|none|
|privateKey|[System.Security.Cryptography.AsymmetricAlgorithm](../Models/system.security.cryptography.asymmetricalgorithm.md)|false|none|none|
|issuerName|[System.Security.Cryptography.X509Certificates.X500DistinguishedName](../Models/system.security.cryptography.x509certificates.x500distinguishedname.md)|false|none|none|
|notAfter|string(date-time)|false|read-only|none|
|notBefore|string(date-time)|false|read-only|none|
|publicKey|[System.Security.Cryptography.X509Certificates.PublicKey](../Models/system.security.cryptography.x509certificates.publickey.md)|false|none|none|
|rawData|string(byte)¦null|false|read-only|none|
|serialNumber|string¦null|false|read-only|none|
|signatureAlgorithm|[System.Security.Cryptography.Oid](../Models/system.security.cryptography.oid.md)|false|none|none|
|subjectName|[System.Security.Cryptography.X509Certificates.X500DistinguishedName](../Models/system.security.cryptography.x509certificates.x500distinguishedname.md)|false|none|none|
|thumbprint|string¦null|false|read-only|none|
|version|integer(int32)|false|read-only|none|


