
<h2 id="tocS_System.Security.Claims.ClaimsPrincipal">System.Security.Claims.ClaimsPrincipal</h2>

<a id="schemasystem.security.claims.claimsprincipal"></a>
<a id="schema_System.Security.Claims.ClaimsPrincipal"></a>
<a id="tocSsystem.security.claims.claimsprincipal"></a>
<a id="tocssystem.security.claims.claimsprincipal"></a>

```json
{
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
        "claims": [
          {}
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
  ],
  "identities": [
    {
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
    }
  ],
  "identity": {
    "name": "string",
    "authenticationType": "string",
    "isAuthenticated": true
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|claims|[[System.Security.Claims.Claim](../Models/system.security.claims.claim.md)]¦null|false|read-only|none|
|identities|[[System.Security.Claims.ClaimsIdentity](../Models/system.security.claims.claimsidentity.md)]¦null|false|read-only|none|
|identity|[System.Security.Principal.IIdentity](../Models/system.security.principal.iidentity.md)|false|none|none|


