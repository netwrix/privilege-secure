
<h2 id="tocS_SbPAM.ActiveDirectory.Models.HostGroupInfo">SbPAM.ActiveDirectory.Models.HostGroupInfo</h2>

<a id="schemasbpam.activedirectory.models.hostgroupinfo"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.HostGroupInfo"></a>
<a id="tocSsbpam.activedirectory.models.hostgroupinfo"></a>
<a id="tocssbpam.activedirectory.models.hostgroupinfo"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostName": "string",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "managedResourceName": "string",
  "managedResourceDisplayName": "string",
  "groupMembers": [
    "string"
  ],
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

Host group information

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this group.|
|name|string¦null|false|none|Name for this group.|
|hostId|string(uuid)|false|none|Id of host to which this group belongs.|
|hostName|string¦null|false|none|Name of the host to which this group belongs.|
|managedResourceId|string(uuid)¦null|false|none|Id of the managed resource associated with this group.|
|managedResourceName|string¦null|false|none|Name of the managed resource associated with this group.|
|managedResourceDisplayName|string¦null|false|none|Display name of the managed resource associated with this group.|
|groupMembers|[string]¦null|false|read-only|List of group members.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


