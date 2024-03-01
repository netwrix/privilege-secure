
<h2 id="tocS_SbPAM.Models.ManagedResourceLocalUserView">SbPAM.Models.ManagedResourceLocalUserView</h2>

<a id="schemasbpam.models.managedresourcelocaluserview"></a>
<a id="schema_SbPAM.Models.ManagedResourceLocalUserView"></a>
<a id="tocSsbpam.models.managedresourcelocaluserview"></a>
<a id="tocssbpam.models.managedresourcelocaluserview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "displayName": "string",
  "email": "string",
  "managed": true,
  "managedType": "Internal",
  "rotationType": "NotManaged",
  "title": "string",
  "department": "string",
  "samAccountName": "string",
  "userPrincipalName": "string",
  "distinguishedName": "string",
  "enabled": true,
  "unixId": 0,
  "privilege": "NotSet",
  "lastLogonUtc": "2019-08-24T14:15:22Z",
  "passwordChangedUtc": "2019-08-24T14:15:22Z",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "domainConfigName": "string",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostName": "string",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "managedAccountName": "string",
  "appUserType": null,
  "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
  "scheduleId": "b7b4f318-018f-4d71-ac1a-f61e4bfaefbe",
  "scheduleName": "string",
  "passwordComplexityId": "fae1d72a-2085-4283-a7b1-627c4535a6d9",
  "passwordComplexityName": "string",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "dependencyCount": 0,
  "passwordStatus": "Unspecified",
  "passwordLastCheckedUtc": "2019-08-24T14:15:22Z",
  "passwordNextChangeUtc": "2019-08-24T14:15:22Z",
  "changeOnCheckout": true,
  "changeOnRelease": true,
  "age": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|displayName|string¦null|false|none|none|
|email|string¦null|false|none|none|
|managed|boolean|false|none|none|
|managedType|[SbPAM.Models.ManagedType](../Models/sbpam.models.managedtype.md)|false|none|none|
|rotationType|[SbPAM.Models.ManagedUserType](../Models/sbpam.models.managedusertype.md)|false|none|none|
|title|string¦null|false|none|none|
|department|string¦null|false|none|none|
|samAccountName|string¦null|false|none|none|
|userPrincipalName|string¦null|false|none|none|
|distinguishedName|string¦null|false|none|none|
|enabled|boolean|false|none|none|
|unixId|integer(int32)¦null|false|none|none|
|privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)|false|none|none|
|lastLogonUtc|string(date-time)¦null|false|none|none|
|passwordChangedUtc|string(date-time)¦null|false|none|none|
|domainConfigId|string(uuid)¦null|false|none|none|
|domainConfigName|string¦null|false|none|none|
|hostId|string(uuid)¦null|false|none|none|
|hostName|string¦null|false|none|none|
|managedAccountId|string(uuid)¦null|false|none|none|
|managedAccountName|string¦null|false|none|none|
|appUserType|[SbPAM.Models.ManagedResourceLocalUserView+AppUserTypeEnum](../Models/sbpam.models.managedresourcelocaluserview+appusertypeenum.md)|false|none|none|
|managedUserId|string(uuid)¦null|false|none|none|
|scheduleId|string(uuid)¦null|false|none|none|
|scheduleName|string¦null|false|none|none|
|passwordComplexityId|string(uuid)¦null|false|none|none|
|passwordComplexityName|string¦null|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|dependencyCount|integer(int32)|false|none|none|
|passwordStatus|[SbPAM.Models.VerificationScanStatus](../Models/sbpam.models.verificationscanstatus.md)|false|none|none|
|passwordLastCheckedUtc|string(date-time)¦null|false|none|none|
|passwordNextChangeUtc|string(date-time)¦null|false|none|none|
|changeOnCheckout|boolean¦null|false|none|none|
|changeOnRelease|boolean¦null|false|none|none|
|age|integer(int32)|false|none|none|


