
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
  "resourceName": "string",
  "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
  "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
  "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
  "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
  "os": "string",
  "activeSessionCount": 0,
  "entityType": "Credential",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23"
}

```

Credential Policy Credentials by Policy Id

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Credential Id|
|username|string¦null|false|none|Credential username|
|name|string¦null|false|none|Credential name|
|resourceName|string¦null|false|none|Credential resource name|
|resourceId|string(uuid)¦null|false|none|Credential resource id|
|domainId|string(uuid)¦null|false|none|Credential domain id|
|azureAdTenantId|string(uuid)¦null|false|none|Credential azure ad tenant id|
|managedDatabaseId|string(uuid)¦null|false|none|Credential database id|
|websiteId|string(uuid)¦null|false|none|Credential website id|
|secretVaultId|string(uuid)¦null|false|none|Credential secret vault id|
|userId|string(uuid)¦null|false|none|Credential user id|
|policyId|string(uuid)|false|none|Policy Id to which the credential is assigned|
|os|string¦null|false|none|Credential resource operating system or domain functional level|
|activeSessionCount|integer(int32)|false|none|Number of active sessions for credential|
|entityType|[SbPAM.Models.CredentialOrHostUser](../Models/sbpam.models.credentialorhostuser.md)|false|none|none|
|platformId|string(uuid)¦null|false|none|none|


