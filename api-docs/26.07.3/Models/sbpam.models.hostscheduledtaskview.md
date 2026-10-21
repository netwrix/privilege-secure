
<h2 id="tocS_SbPAM.Models.HostScheduledTaskView">SbPAM.Models.HostScheduledTaskView</h2>

<a id="schemasbpam.models.hostscheduledtaskview"></a>
<a id="schema_SbPAM.Models.HostScheduledTaskView"></a>
<a id="tocSsbpam.models.hostscheduledtaskview"></a>
<a id="tocssbpam.models.hostscheduledtaskview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "userName": "string",
  "name": "string",
  "taskPath": "string",
  "description": "string",
  "source": "string",
  "nextRunTimeUtc": "2019-08-24T14:15:22Z",
  "lastRunTimeUtc": "2019-08-24T14:15:22Z",
  "lastRunResult": 0,
  "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "serviceAccountName": "string",
  "serviceAccountType": "Configuration",
  "managedType": "Unmanaged"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|hostId|string(uuid)|false|none|none|
|userName|string¦null|false|none|none|
|name|string¦null|false|none|none|
|taskPath|string¦null|false|none|none|
|description|string¦null|false|none|none|
|source|string¦null|false|none|none|
|nextRunTimeUtc|string(date-time)¦null|false|none|none|
|lastRunTimeUtc|string(date-time)¦null|false|none|none|
|lastRunResult|integer(int32)¦null|false|none|none|
|hostScanHostId|string(uuid)¦null|false|none|none|
|serviceAccountId|string(uuid)¦null|false|none|none|
|serviceAccountName|string¦null|false|none|none|
|serviceAccountType|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)|false|none|none|
|managedType|[SbPAM.Models.ManagedTypeEnum](../Models/sbpam.models.managedtypeenum.md)|false|none|none|


