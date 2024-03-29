
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.AccessControlPolicyDetails]">SbPAM.Models.DataTable[SbPAM.Models.AccessControlPolicyDetails]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.accesscontrolpolicydetails]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.AccessControlPolicyDetails]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.accesscontrolpolicydetails]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.accesscontrolpolicydetails]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "connectionProfileName": "string",
      "policyType": "Resource",
      "policyTypeName": "string"
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
|data|[[SbPAM.Models.AccessControlPolicyDetails](../Models/sbpam.models.accesscontrolpolicydetails.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


