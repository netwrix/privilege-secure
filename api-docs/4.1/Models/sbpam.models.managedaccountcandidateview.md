
<h2 id="tocS_SbPAM.Models.ManagedAccountCandidateView">SbPAM.Models.ManagedAccountCandidateView</h2>

<a id="schemasbpam.models.managedaccountcandidateview"></a>
<a id="schema_SbPAM.Models.ManagedAccountCandidateView"></a>
<a id="tocSsbpam.models.managedaccountcandidateview"></a>
<a id="tocssbpam.models.managedaccountcandidateview"></a>

```json
{
  "entityType": "HostUser",
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "displayName": "string",
  "userPrincipalName": "string",
  "samAccountName": "string",
  "email": "string",
  "managed": true,
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "domainName": "string",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|entityType|[SbPAM.Models.ManagedAccountCandidateViewEntityType](../Models/sbpam.models.managedaccountcandidateviewentitytype.md)|false|none|none|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|displayName|string¦null|false|none|none|
|userPrincipalName|string¦null|false|none|none|
|samAccountName|string¦null|false|none|none|
|email|string¦null|false|none|none|
|managed|boolean|false|none|none|
|domainConfigId|string(uuid)¦null|false|none|none|
|domainName|string¦null|false|none|none|
|managedAccountId|string(uuid)¦null|false|none|ManagedAccount.Id or ManagedAccountGroup.Id, if this entity is managed by SbPAM|


