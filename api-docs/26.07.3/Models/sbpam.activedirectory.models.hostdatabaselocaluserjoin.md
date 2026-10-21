
<h2 id="tocS_SbPAM.ActiveDirectory.Models.HostDatabaseLocalUserJoin">SbPAM.ActiveDirectory.Models.HostDatabaseLocalUserJoin</h2>

<a id="schemasbpam.activedirectory.models.hostdatabaselocaluserjoin"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.HostDatabaseLocalUserJoin"></a>
<a id="tocSsbpam.activedirectory.models.hostdatabaselocaluserjoin"></a>
<a id="tocssbpam.activedirectory.models.hostdatabaselocaluserjoin"></a>

```json
{
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
  "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
  "lastSeenUtc": "2019-08-24T14:15:22Z",
  "deleted": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

Represents a join between a host and a database, local user, and optionally a role.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|hostId|string(uuid)|false|none|Host id|
|hostUserId|string(uuid)|false|none|Host user Id|
|databaseDbId|string(uuid)|false|none|Id of the database db - null for server level|
|databaseRoleId|string(uuid)|false|none|Id of the database role - null if this isn't a role join|
|lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a local user-database-role assignment was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


