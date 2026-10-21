
<h2 id="tocS_SbPAM.ActiveDirectory.Models.HostDatabaseDbGroupJoin">SbPAM.ActiveDirectory.Models.HostDatabaseDbGroupJoin</h2>

<a id="schemasbpam.activedirectory.models.hostdatabasedbgroupjoin"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.HostDatabaseDbGroupJoin"></a>
<a id="tocSsbpam.activedirectory.models.hostdatabasedbgroupjoin"></a>
<a id="tocssbpam.activedirectory.models.hostdatabasedbgroupjoin"></a>

```json
{
  "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
  "domainGroupId": "5bb05a64-2677-4d8e-898b-ccaf143c21e2",
  "lastSeenUtc": "2019-08-24T14:15:22Z",
  "deleted": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

Represents a join between a host database and a domain group.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|databaseDbId|string(uuid)|false|none|Gets or sets the ID of the database.|
|domainGroupId|string(uuid)|false|none|Gets or sets the ID of the domain group.|
|lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a database-group membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


