
<h2 id="tocS_System.Security.Claims.ClaimsIdentity">System.Security.Claims.ClaimsIdentity</h2>

<a id="schemasystem.security.claims.claimsidentity"></a>
<a id="schema_System.Security.Claims.ClaimsIdentity"></a>
<a id="tocSsystem.security.claims.claimsidentity"></a>
<a id="tocssystem.security.claims.claimsidentity"></a>

```json
{
  "authenticationType": "string",
  "isAuthenticated": true,
  "actor": {
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
  "bootstrapContext": null,
  "claims": [
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
        "claims": [],
        "label": "string",
        "name": "string",
        "nameClaimType": "string",
        "roleClaimType": "string"
      },
      "type": "string",
      "value": "string",
      "valueType": "string"
    }
  ],
  "label": "string",
  "name": "string",
  "nameClaimType": "string",
  "roleClaimType": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|authenticationType|string¦null|false|read-only|none|
|isAuthenticated|boolean|false|read-only|none|
|actor|[System.Security.Claims.ClaimsIdentity](../Models/system.security.claims.claimsidentity.md)|false|none|none|
|bootstrapContext|any|false|none|none|
|claims|[[System.Security.Claims.Claim](../Models/system.security.claims.claim.md)]¦null|false|read-only|none|
|label|string¦null|false|none|none|
|name|string¦null|false|read-only|none|
|nameClaimType|string¦null|false|read-only|none|
|roleClaimType|string¦null|false|read-only|none|


