
<h2 id="tocS_SbPAM.Models.CreateLocalUserRequest">SbPAM.Models.CreateLocalUserRequest</h2>

<a id="schemasbpam.models.createlocaluserrequest"></a>
<a id="schema_SbPAM.Models.CreateLocalUserRequest"></a>
<a id="tocSsbpam.models.createlocaluserrequest"></a>
<a id="tocssbpam.models.createlocaluserrequest"></a>

```json
{
  "managedAccountView": {
    "entityType": "ManagedAccount",
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
    "name": "string",
    "displayName": "string",
    "samAccountName": "string",
    "department": "string",
    "userPrincipalName": "string",
    "email": "string",
    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
    "domainName": "string",
    "lastLogonTimestamp": "2019-08-24T14:15:22Z",
    "activeSessionCount": 0,
    "scheduledSessionCount": 0,
    "accessPolicyCount": 0,
    "certificateSerialNumber": "string",
    "locked": true,
    "lockoutEnd": "2019-08-24T14:15:22Z",
    "isReviewer": true
  },
  "localUserPasswordChangeRequest": {
    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
    "username": "string",
    "passwordOld": "string",
    "passwordNew": "string"
  },
  "changePasswordNextLogin": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|managedAccountView|[SbPAM.Models.ManagedAccountView](../Models/sbpam.models.managedaccountview.md)|false|none|none|
|localUserPasswordChangeRequest|[SbPAM.Models.LocalUserPasswordChangeRequest](../Models/sbpam.models.localuserpasswordchangerequest.md)|false|none|none|
|changePasswordNextLogin|boolean|false|none|none|


