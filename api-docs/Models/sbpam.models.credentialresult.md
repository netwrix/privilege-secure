
<h2 id="tocS_SbPAM.Models.CredentialResult">SbPAM.Models.CredentialResult</h2>

<a id="schemasbpam.models.credentialresult"></a>
<a id="schema_SbPAM.Models.CredentialResult"></a>
<a id="tocSsbpam.models.credentialresult"></a>
<a id="tocssbpam.models.credentialresult"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "userName": "string",
  "displayName": "string",
  "lastVerifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "status": "string",
  "lastPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
  "nextPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
  "age": 0,
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
  "samAccountName": "string",
  "userPrincipalName": "string",
  "dependencyCount": 0,
  "managedType": "Internal",
  "rotationType": "NotManaged",
  "credentialType": "Configuration",
  "domain": "string",
  "resource": "string",
  "platform": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
  "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
  "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "passwordStatus": "Unspecified",
  "privilege": "NotSet",
  "lastLogonTimestamp": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|userName|string¦null|false|none|none|
|displayName|string¦null|false|none|none|
|lastVerifiedDateTimeUtc|string(date-time)¦null|false|none|none|
|status|string¦null|false|none|none|
|lastPasswordChangeDateTimeUtc|string(date-time)¦null|false|none|none|
|nextPasswordChangeDateTimeUtc|string(date-time)¦null|false|none|none|
|age|integer(int32)|false|none|none|
|userId|string(uuid)¦null|false|none|none|
|managedUserId|string(uuid)¦null|false|none|none|
|samAccountName|string¦null|false|none|none|
|userPrincipalName|string¦null|false|none|none|
|dependencyCount|integer(int32)|false|none|none|
|managedType|[SbPAM.Models.ManagedType](../Models/sbpam.models.managedtype.md)|false|none|none|
|rotationType|[SbPAM.Models.ManagedUserType](../Models/sbpam.models.managedusertype.md)|false|none|none|
|credentialType|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)|false|none|none|
|domain|string¦null|false|none|none|
|resource|string¦null|false|none|none|
|platform|string¦null|false|none|none|
|platformId|string(uuid)¦null|false|none|none|
|managedResourceId|string(uuid)¦null|false|none|none|
|secretVaultId|string(uuid)¦null|false|none|none|
|websiteId|string(uuid)¦null|false|none|none|
|azureAdTenantId|string(uuid)¦null|false|none|none|
|domainConfigId|string(uuid)¦null|false|none|none|
|passwordStatus|[SbPAM.Models.VerificationScanStatus](../Models/sbpam.models.verificationscanstatus.md)|false|none|none|
|privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)|false|none|none|
|lastLogonTimestamp|string(date-time)¦null|false|none|none|


