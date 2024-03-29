
<h2 id="tocS_SbPAM.Models.CredentialPolicyCandidateView">SbPAM.Models.CredentialPolicyCandidateView</h2>

<a id="schemasbpam.models.credentialpolicycandidateview"></a>
<a id="schema_SbPAM.Models.CredentialPolicyCandidateView"></a>
<a id="tocSsbpam.models.credentialpolicycandidateview"></a>
<a id="tocssbpam.models.credentialpolicycandidateview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "username": "string",
  "name": "string",
  "description": "string",
  "domain": "string",
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "os": "string",
  "activeSessionCount": 0,
  "entityType": "Credential",
  "vaultConnectorId": "da5bc90a-dbcd-442c-91be-be4204003524"
}

```

Credential Policy Credentials by Policy Id

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Credential Id|
|username|string¦null|false|none|Credential username|
|name|string¦null|false|none|Credential name|
|description|string¦null|false|none|Credential group description|
|domain|string¦null|false|none|Credential domain/resource|
|userId|string(uuid)¦null|false|none|Credential user id|
|os|string¦null|false|none|Credential resource operating system or domain functional level|
|activeSessionCount|integer(int32)|false|none|Number of active sessions for credential|
|entityType|[SbPAM.Models.CredentialOrHostUser](../Models/sbpam.models.credentialorhostuser.md)|false|none|none|
|vaultConnectorId|string(uuid)¦null|false|none|none|


