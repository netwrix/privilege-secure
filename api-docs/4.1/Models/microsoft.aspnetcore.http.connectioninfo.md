
<h2 id="tocS_Microsoft.AspNetCore.Http.ConnectionInfo">Microsoft.AspNetCore.Http.ConnectionInfo</h2>

<a id="schemamicrosoft.aspnetcore.http.connectioninfo"></a>
<a id="schema_Microsoft.AspNetCore.Http.ConnectionInfo"></a>
<a id="tocSmicrosoft.aspnetcore.http.connectioninfo"></a>
<a id="tocsmicrosoft.aspnetcore.http.connectioninfo"></a>

```json
{
  "id": "string",
  "remoteIpAddress": {
    "addressFamily": "Unspecified",
    "scopeId": 0,
    "isIPv6Multicast": true,
    "isIPv6LinkLocal": true,
    "isIPv6SiteLocal": true,
    "isIPv6Teredo": true,
    "isIPv6UniqueLocal": true,
    "isIPv4MappedToIPv6": true,
    "address": 0
  },
  "remotePort": 0,
  "localIpAddress": {
    "addressFamily": "Unspecified",
    "scopeId": 0,
    "isIPv6Multicast": true,
    "isIPv6LinkLocal": true,
    "isIPv6SiteLocal": true,
    "isIPv6Teredo": true,
    "isIPv6UniqueLocal": true,
    "isIPv4MappedToIPv6": true,
    "address": 0
  },
  "localPort": 0,
  "clientCertificate": {
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
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string¦null|false|none|none|
|remoteIpAddress|[System.Net.IPAddress](../Models/system.net.ipaddress.md)|false|none|none|
|remotePort|integer(int32)|false|none|none|
|localIpAddress|[System.Net.IPAddress](../Models/system.net.ipaddress.md)|false|none|none|
|localPort|integer(int32)|false|none|none|
|clientCertificate|[System.Security.Cryptography.X509Certificates.X509Certificate2](../Models/system.security.cryptography.x509certificates.x509certificate2.md)|false|none|none|


