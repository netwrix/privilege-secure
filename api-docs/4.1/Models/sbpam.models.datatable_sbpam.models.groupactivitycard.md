
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.GroupActivityCard]">SbPAM.Models.DataTable[SbPAM.Models.GroupActivityCard]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.groupactivitycard]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.GroupActivityCard]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.groupactivitycard]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.groupactivitycard]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "policyName": "string",
      "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
      "latestSessionActualStartUtc": "2019-08-24T14:15:22Z"
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
|data|[[SbPAM.Models.GroupActivityCard](../Models/sbpam.models.groupactivitycard.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


