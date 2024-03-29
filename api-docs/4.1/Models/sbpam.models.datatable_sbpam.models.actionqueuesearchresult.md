
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ActionQueueSearchResult]">SbPAM.Models.DataTable[SbPAM.Models.ActionQueueSearchResult]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.actionqueuesearchresult]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ActionQueueSearchResult]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.actionqueuesearchresult]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.actionqueuesearchresult]"></a>

```json
{
  "data": [
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
      "actionGroupName": "string"
    }
  ],
  "recordsTotal": 0
}

```

Generic container for the output of some API endpoints and .Search() 
methods in some actors that return paged subsets of filtered search results

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|[[SbPAM.Models.ActionQueueSearchResult](../Models/sbpam.models.actionqueuesearchresult.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


