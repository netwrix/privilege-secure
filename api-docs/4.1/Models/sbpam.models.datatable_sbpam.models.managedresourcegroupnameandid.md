
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceGroupNameAndId]">SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceGroupNameAndId]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.managedresourcegroupnameandid]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceGroupNameAndId]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.managedresourcegroupnameandid]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.managedresourcegroupnameandid]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb"
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
|data|[[SbPAM.Models.ManagedResourceGroupNameAndId](../Models/sbpam.models.managedresourcegroupnameandid.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


