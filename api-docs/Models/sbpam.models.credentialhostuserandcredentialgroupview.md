
<h2 id="tocS_SbPAM.Models.CredentialHostUserAndCredentialGroupView">SbPAM.Models.CredentialHostUserAndCredentialGroupView</h2>

<a id="schemasbpam.models.credentialhostuserandcredentialgroupview"></a>
<a id="schema_SbPAM.Models.CredentialHostUserAndCredentialGroupView"></a>
<a id="tocSsbpam.models.credentialhostuserandcredentialgroupview"></a>
<a id="tocssbpam.models.credentialhostuserandcredentialgroupview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "displayName": "string",
  "domain": "string",
  "passwordStatus": "Unspecified",
  "managedType": "Internal",
  "rotationType": "NotManaged",
  "credentialType": "Configuration",
  "privilege": "NotSet",
  "entityType": "Credential"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|displayName|string¦null|false|none|none|
|domain|string¦null|false|none|none|
|passwordStatus|[SbPAM.Models.VerificationScanStatus](../Models/sbpam.models.verificationscanstatus.md)|false|none|none|
|managedType|[SbPAM.Models.ManagedType](../Models/sbpam.models.managedtype.md)|false|none|none|
|rotationType|[SbPAM.Models.ManagedUserType](../Models/sbpam.models.managedusertype.md)|false|none|none|
|credentialType|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)|false|none|none|
|privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)|false|none|none|
|entityType|[SbPAM.Models.CredentialOrHostUser](../Models/sbpam.models.credentialorhostuser.md)|false|none|none|


