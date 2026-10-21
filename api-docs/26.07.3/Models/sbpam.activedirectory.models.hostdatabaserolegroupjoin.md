
<h2 id="tocS_SbPAM.ActiveDirectory.Models.HostDatabaseRoleGroupJoin">SbPAM.ActiveDirectory.Models.HostDatabaseRoleGroupJoin</h2>

<a id="schemasbpam.activedirectory.models.hostdatabaserolegroupjoin"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.HostDatabaseRoleGroupJoin"></a>
<a id="tocSsbpam.activedirectory.models.hostdatabaserolegroupjoin"></a>
<a id="tocssbpam.activedirectory.models.hostdatabaserolegroupjoin"></a>

```json
{
  "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
  "domainGroupId": "5bb05a64-2677-4d8e-898b-ccaf143c21e2",
  "lastSeenUtc": "2019-08-24T14:15:22Z",
  "deleted": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

Represents a join between a database role and a domain group.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|databaseRoleId|string(uuid)|false|none|Gets or sets the ID of the database role.|
|domainGroupId|string(uuid)|false|none|Gets or sets the ID of the domain group.|
|lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a role-group membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


