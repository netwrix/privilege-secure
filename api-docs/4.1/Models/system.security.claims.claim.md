
<h2 id="tocS_System.Security.Claims.Claim">System.Security.Claims.Claim</h2>

<a id="schemasystem.security.claims.claim"></a>
<a id="schema_System.Security.Claims.Claim"></a>
<a id="tocSsystem.security.claims.claim"></a>
<a id="tocssystem.security.claims.claim"></a>

```json
{
  "issuer": "string",
  "originalIssuer": "string",
  "properties": {
    "property1": "string",
    "property2": "string"
  },
  "subject": {
    "authenticationType": "string",
    "isAuthenticated": true,
    "actor": {},
    "bootstrapContext": null,
    "claims": [
      {
        "issuer": "string",
        "originalIssuer": "string",
        "properties": {
          "property1": "string",
          "property2": "string"
        },
        "subject": {},
        "type": "string",
        "value": "string",
        "valueType": "string"
      }
    ],
    "label": "string",
    "name": "string",
    "nameClaimType": "string",
    "roleClaimType": "string"
  },
  "type": "string",
  "value": "string",
  "valueType": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|issuer|string¦null|false|read-only|none|
|originalIssuer|string¦null|false|read-only|none|
|properties|object¦null|false|read-only|none|
|» **additionalProperties**|string|false|none|none|
|subject|[System.Security.Claims.ClaimsIdentity](../Models/system.security.claims.claimsidentity.md)|false|none|none|
|type|string¦null|false|read-only|none|
|value|string¦null|false|read-only|none|
|valueType|string¦null|false|read-only|none|


