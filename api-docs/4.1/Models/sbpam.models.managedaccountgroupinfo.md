
<h2 id="tocS_SbPAM.Models.ManagedAccountGroupInfo">SbPAM.Models.ManagedAccountGroupInfo</h2>

<a id="schemasbpam.models.managedaccountgroupinfo"></a>
<a id="schema_SbPAM.Models.ManagedAccountGroupInfo"></a>
<a id="tocSsbpam.models.managedaccountgroupinfo"></a>
<a id="tocssbpam.models.managedaccountgroupinfo"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "type": "Local",
  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
  "mfaConnectorId": "360d3915-9c3c-42c2-9c41-55ba84bbd9f8",
  "isReviewer": true,
  "distinguishedName": "string",
  "domain": "string",
  "email": "string",
  "samaccountname": "string",
  "sid": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

This model represents a group of managed accounts.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this group.|
|name|string¦null|false|none|Name of this group.|
|type|[SbPAM.Models.ManagedAccountGroupType](../Models/sbpam.models.managedaccountgrouptype.md)|false|none|none|
|groupId|string(uuid)¦null|false|none|AD group id if this is an active directory group|
|mfaConnectorId|string(uuid)¦null|false|none|Alternate MFA provider for members of this group. Override this at the User level.|
|isReviewer|boolean|false|none|Is assigned reviewer role (for AccessCertification)|
|distinguishedName|string¦null|false|none|none|
|domain|string¦null|false|none|none|
|email|string¦null|false|none|none|
|samaccountname|string¦null|false|none|none|
|sid|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


