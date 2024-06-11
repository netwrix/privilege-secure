
<h2 id="tocS_SbPAM.Models.CredentialPolicyCredentialView">SbPAM.Models.CredentialPolicyCredentialView</h2>

<a id="schemasbpam.models.credentialpolicycredentialview"></a>
<a id="schema_SbPAM.Models.CredentialPolicyCredentialView"></a>
<a id="tocSsbpam.models.credentialpolicycredentialview"></a>
<a id="tocssbpam.models.credentialpolicycredentialview"></a>

<details><summary>JSON</summary>


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


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|username|string¦null|false|none|none|
|name|string¦null|false|none|none|
|domain|string¦null|false|none|none|
|userId|string(uuid)¦null|false|none|none|
|policyId|string(uuid)|false|none|none|
|os|string¦null|false|none|none|
|activeSessionCount|integer(int32)|false|none|none|
|entityType|[SbPAM.Models.CredentialOrHostUser](../Models/sbpam.models.credentialorhostuser.md)|false|none|none|


