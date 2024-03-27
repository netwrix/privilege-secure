
<h2 id="tocS_SbPAM.Models.ActionQueueSearchResult">SbPAM.Models.ActionQueueSearchResult</h2>

<a id="schemasbpam.models.actionqueuesearchresult"></a>
<a id="schema_SbPAM.Models.ActionQueueSearchResult"></a>
<a id="tocSsbpam.models.actionqueuesearchresult"></a>
<a id="tocssbpam.models.actionqueuesearchresult"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
  "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
  "startTimeUtc": "2019-08-24T14:15:22Z",
  "endTimeUtc": "2019-08-24T14:15:22Z",
  "status": null,
  "statusDescription": "string",
  "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
  "jobName": "string",
  "nextStartDateTimeUtc": "2019-08-24T14:15:22Z",
  "recurrenceType": null,
  "recurrenceTypeString": "string",
  "jobType": "None",
  "jobTypeString": "string",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "activityName": "string",
  "activitySessionStatus": null,
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "dnsHostName": "string",
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "samAccountname": "string",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "managedResourceName": "string",
  "manageAccountId": "0c0b7e07-4be0-4190-9270-b24e3c08cedf",
  "managedAccountName": "string",
  "currentStepId": "e3f37999-aa7c-4bbb-927b-f852bdd95c53",
  "currentStep": 0,
  "totalSteps": 0,
  "pendingSteps": 0,
  "queuedSteps": 0,
  "runningSteps": 0,
  "failedSteps": 0,
  "cancelledSteps": 0,
  "completedSteps": 0,
  "actionGroupName": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|actionGroupId|string(uuid)|false|none|none|
|heartBeatDateTimeUtc|string(date-time)|false|none|none|
|startTimeUtc|string(date-time)|false|none|none|
|endTimeUtc|string(date-time)|false|none|none|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|statusDescription|string¦null|false|none|none|
|actionJobId|string(uuid)¦null|false|none|none|
|jobName|string¦null|false|none|none|
|nextStartDateTimeUtc|string(date-time)¦null|false|none|none|
|recurrenceType|[SbPAM.Constants.ActionConstants+RecurrenceType](../Models/sbpam.constants.actionconstants+recurrencetype.md)|false|none|none|
|recurrenceTypeString|string¦null|false|none|none|
|jobType|[SbPAM.Models.ActionJobType](../Models/sbpam.models.actionjobtype.md)|false|none|none|
|jobTypeString|string¦null|false|none|none|
|activitySessionId|string(uuid)¦null|false|none|none|
|activityName|string¦null|false|none|none|
|activitySessionStatus|[SbPAM.Constants.ActionConstants+SessionStatus](../Models/sbpam.constants.actionconstants+sessionstatus.md)|false|none|none|
|hostId|string(uuid)¦null|false|none|none|
|dnsHostName|string¦null|false|none|none|
|userId|string(uuid)¦null|false|none|none|
|samAccountname|string¦null|false|none|none|
|managedResourceId|string(uuid)¦null|false|none|none|
|managedResourceName|string¦null|false|none|none|
|manageAccountId|string(uuid)¦null|false|none|none|
|managedAccountName|string¦null|false|none|none|
|currentStepId|string(uuid)¦null|false|none|none|
|currentStep|integer(int32)¦null|false|none|none|
|totalSteps|integer(int32)|false|none|none|
|pendingSteps|integer(int32)|false|none|none|
|queuedSteps|integer(int32)|false|none|none|
|runningSteps|integer(int32)|false|none|none|
|failedSteps|integer(int32)|false|none|none|
|cancelledSteps|integer(int32)|false|none|none|
|completedSteps|integer(int32)|false|none|none|
|actionGroupName|string¦null|false|none|none|


