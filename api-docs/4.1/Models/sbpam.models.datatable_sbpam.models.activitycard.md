
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ActivityCard]">SbPAM.Models.DataTable[SbPAM.Models.ActivityCard]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.activitycard]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ActivityCard]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.activitycard]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.activitycard]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "activityType": "Interactive",
      "resourceText": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "platformName": "string",
      "os": "string",
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
      "totalResources": 0,
      "latestSessionActualStartUtc": "2019-08-24T14:15:22Z",
      "customField1Name": "string",
      "customField1Label": "string",
      "customField1Description": "string",
      "customField1Length": 0,
      "customField1Options": "string",
      "customField1CustomFieldDataType": "Integer",
      "customField1Required": true,
      "customField2Name": "string",
      "customField2Label": "string",
      "customField2Description": "string",
      "customField2Length": 0,
      "customField2Options": "string",
      "customField2CustomFieldDataType": "Integer",
      "customField2Required": true,
      "customField3Name": "string",
      "customField3Label": "string",
      "customField3Description": "string",
      "customField3Length": 0,
      "customField3Options": "string",
      "customField3CustomFieldDataType": "Integer",
      "customField3Required": true,
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "policyName": "string",
      "policyType": "Resource",
      "notesRequired": true,
      "ticketRequired": true,
      "maxSessionLength": 0
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
|data|[[SbPAM.Models.ActivityCard](../Models/sbpam.models.activitycard.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


