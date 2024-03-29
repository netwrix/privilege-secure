
<h2 id="tocS_SbPAM.Models.CredentialPolicyCredentialView">SbPAM.Models.CredentialPolicyCredentialView</h2>

<a id="schemasbpam.models.credentialpolicycredentialview"></a>
<a id="schema_SbPAM.Models.CredentialPolicyCredentialView"></a>
<a id="tocSsbpam.models.credentialpolicycredentialview"></a>
<a id="tocssbpam.models.credentialpolicycredentialview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "username": "string",
  "name": "string",
  "domain": "string",
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
  "os": "string",
  "activeSessionCount": 0,
  "entityType": "Credential"
}

```

Credential Policy Credentials by Policy Id

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Credential Id|
|username|string¦null|false|none|Credential username|
|name|string¦null|false|none|Credential name|
|domain|string¦null|false|none|Credential domain/resource|
|userId|string(uuid)¦null|false|none|Credential user id|
|policyId|string(uuid)|false|none|Policy Id to which the credential is assigned|
|os|string¦null|false|none|Credential resource operating system or domain functional level|
|activeSessionCount|integer(int32)|false|none|Number of active sessions for credential|
|entityType|[SbPAM.Models.CredentialOrHostUser](../Models/sbpam.models.credentialorhostuser.md)|false|none|none|


