
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.AccessPolicyObject]">SbPAM.Models.DataTable[SbPAM.Models.AccessPolicyObject]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.accesspolicyobject]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.AccessPolicyObject]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.accesspolicyobject]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.accesspolicyobject]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "policyType": "Resource",
      "activityPolicies": [
        {
          "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
          "activityName": "string",
          "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
          "policyName": "string",
          "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
          "isDeleted": true,
          "notesRequired": true,
          "ticketRequired": true,
          "maxSessionLength": 0
        }
      ],
      "name": "string",
      "os": "string",
      "platform": "string"
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
|data|[[SbPAM.Models.AccessPolicyObject](../Models/sbpam.models.accesspolicyobject.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


