
<h2 id="tocS_SbPAM.Models.SshFormInfo">SbPAM.Models.SshFormInfo</h2>

<a id="schemasbpam.models.sshforminfo"></a>
<a id="schema_SbPAM.Models.SshFormInfo"></a>
<a id="tocSsbpam.models.sshforminfo"></a>
<a id="tocssbpam.models.sshforminfo"></a>

```json
{
  "authenticationMethod": "Password",
  "credentialType": "Configuration",
  "autoGenPassphrase": true,
  "passphrase": "string",
  "privateKey": "string",
  "publicKey": "string",
  "keyGenAlgorithm": "string",
  "keyLength": 0
}

```

Model for authentication when using SSH

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|authenticationMethod|[SbPAM.Models.AuthenticationMethodType](../Models/sbpam.models.authenticationmethodtype.md)|false|none|none|
|credentialType|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)|false|none|none|
|autoGenPassphrase|boolean|false|none|Set to autogenerate the private key passphrase|
|passphrase|string¦null|false|none|Passphrase of existing private key|
|privateKey|string¦null|false|none|Private key (must have passphrase if key is provided)|
|publicKey|string¦null|false|none|Public key for private key|
|keyGenAlgorithm|string¦null|false|none|Supported algorithms can be fetched from `/api/v1/Credential/SSHKeyGenAlgorithms`|
|keyLength|integer(int32)|false|none|Supported KeyLengths can be fetched from `/api/v1/Credential/SSHKeyGenAlgorithms`|


