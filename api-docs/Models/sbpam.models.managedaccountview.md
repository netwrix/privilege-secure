
<h2 id="tocS_SbPAM.Models.ManagedAccountView">SbPAM.Models.ManagedAccountView</h2>

<a id="schemasbpam.models.managedaccountview"></a>
<a id="schema_SbPAM.Models.ManagedAccountView"></a>
<a id="tocSsbpam.models.managedaccountview"></a>
<a id="tocssbpam.models.managedaccountview"></a>

```json
{
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
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|entityType|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](../Models/sbpam.models.managedaccountviewentitytypeenum.md)|false|none|none|
|id|string(uuid)|false|none|none|
|hostUserId|string(uuid)¦null|false|none|none|
|name|string¦null|false|none|none|
|displayName|string¦null|false|none|none|
|samAccountName|string¦null|false|none|none|
|department|string¦null|false|none|none|
|userPrincipalName|string¦null|false|none|none|
|email|string¦null|false|none|none|
|domainConfigId|string(uuid)¦null|false|none|none|
|domainName|string¦null|false|none|none|
|lastLogonTimestamp|string(date-time)¦null|false|none|none|
|activeSessionCount|integer(int32)|false|none|none|
|scheduledSessionCount|integer(int32)|false|none|none|
|accessPolicyCount|integer(int32)|false|none|none|
|certificateSerialNumber|string¦null|false|none|none|
|locked|boolean|false|none|none|
|lockoutEnd|string(date-time)¦null|false|none|none|
|isReviewer|boolean¦null|false|none|none|


