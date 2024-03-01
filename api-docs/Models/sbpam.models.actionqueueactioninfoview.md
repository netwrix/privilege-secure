
<h2 id="tocS_SbPAM.Models.ActionQueueActionInfoView">SbPAM.Models.ActionQueueActionInfoView</h2>

<a id="schemasbpam.models.actionqueueactioninfoview"></a>
<a id="schema_SbPAM.Models.ActionQueueActionInfoView"></a>
<a id="tocSsbpam.models.actionqueueactioninfoview"></a>
<a id="tocssbpam.models.actionqueueactioninfoview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "actionName": "string",
  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
  "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
  "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
  "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
  "startTimeUtc": "2019-08-24T14:15:22Z",
  "endTimeUtc": "2019-08-24T14:15:22Z",
  "status": null,
  "statusDescription": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostName": "string",
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "hostUserName": "string",
  "managedObjectId": "b0f84734-74e5-4ac3-82a9-67890062eff0",
  "managedObjectType": "HostUser",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|actionName|string¦null|false|none|none|
|actionId|string(uuid)¦null|false|none|none|
|actionQueueId|string(uuid)¦null|false|none|none|
|actionJobId|string(uuid)¦null|false|none|none|
|actionServiceId|string(uuid)¦null|false|none|none|
|startTimeUtc|string(date-time)|false|none|none|
|endTimeUtc|string(date-time)|false|none|none|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|statusDescription|string¦null|false|none|none|
|platformId|string(uuid)¦null|false|none|none|
|hostId|string(uuid)¦null|false|none|none|
|hostName|string¦null|false|none|none|
|hostUserId|string(uuid)¦null|false|none|none|
|hostUserName|string¦null|false|none|none|
|managedObjectId|string(uuid)¦null|false|none|none|
|managedObjectType|[SbPAM.Models.ManagedAccountType](../Models/sbpam.models.managedaccounttype.md)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|


