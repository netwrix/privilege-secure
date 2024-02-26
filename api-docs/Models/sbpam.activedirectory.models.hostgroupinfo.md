
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
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|hostId|string(uuid)|false|none|none|
|hostName|string¦null|false|none|none|
|managedResourceId|string(uuid)¦null|false|none|none|
|managedResourceName|string¦null|false|none|none|
|managedResourceDisplayName|string¦null|false|none|none|
|groupMembers|[string]¦null|false|read-only|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


