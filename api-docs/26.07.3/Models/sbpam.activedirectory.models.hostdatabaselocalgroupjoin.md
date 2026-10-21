
<h2 id="tocS_SbPAM.ActiveDirectory.Models.HostDatabaseLocalGroupJoin">SbPAM.ActiveDirectory.Models.HostDatabaseLocalGroupJoin</h2>

<a id="schemasbpam.activedirectory.models.hostdatabaselocalgroupjoin"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.HostDatabaseLocalGroupJoin"></a>
<a id="tocSsbpam.activedirectory.models.hostdatabaselocalgroupjoin"></a>
<a id="tocssbpam.activedirectory.models.hostdatabaselocalgroupjoin"></a>

```json
{
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
  "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
  "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
  "lastSeenUtc": "2019-08-24T14:15:22Z",
  "deleted": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

Represents a join between a host and a database, local group, and optionally a role.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|hostId|string(uuid)|false|none|Host id|
|hostGroupId|string(uuid)|false|none|Host group Id|
|databaseDbId|string(uuid)|false|none|Id of the database db - null for server level|
|databaseRoleId|string(uuid)|false|none|Id of the database role - null if this isn't a role join|
|lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a local group-database-role assignment was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


