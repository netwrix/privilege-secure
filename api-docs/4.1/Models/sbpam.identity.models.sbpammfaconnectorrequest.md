
<h2 id="tocS_SbPAM.Identity.Models.SbPAMMfaConnectorRequest">SbPAM.Identity.Models.SbPAMMfaConnectorRequest</h2>

<a id="schemasbpam.identity.models.sbpammfaconnectorrequest"></a>
<a id="schema_SbPAM.Identity.Models.SbPAMMfaConnectorRequest"></a>
<a id="tocSsbpam.identity.models.sbpammfaconnectorrequest"></a>
<a id="tocssbpam.identity.models.sbpammfaconnectorrequest"></a>

```json
{
  "name": "string",
  "description": "string",
  "remoteHost": "string",
  "remotePort": 0,
  "sendNasIdentifier": true,
  "sharedSecret": "string",
  "timeout": 0,
  "maxRetries": 0,
  "authType": "MSCHAPv2",
  "dialogTitle": "string",
  "loginText": "string",
  "autoResponse": true,
  "autoResponseText": "string",
  "responsePrefix": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|remoteHost|string¦null|false|none|none|
|remotePort|integer(int32)|false|none|none|
|sendNasIdentifier|boolean|false|none|none|
|sharedSecret|string¦null|false|none|none|
|timeout|integer(int32)|false|none|none|
|maxRetries|integer(int32)|false|none|none|
|authType|[Stealthbits.Radius.RadiusAuthType](../Models/stealthbits.radius.radiusauthtype.md)|false|none|none|
|dialogTitle|string¦null|false|none|none|
|loginText|string¦null|false|none|none|
|autoResponse|boolean|false|none|none|
|autoResponseText|string¦null|false|none|none|
|responsePrefix|string¦null|false|none|none|


