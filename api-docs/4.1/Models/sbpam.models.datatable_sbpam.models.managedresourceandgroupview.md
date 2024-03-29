
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceAndGroupView]">SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceAndGroupView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.managedresourceandgroupview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceAndGroupView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.managedresourceandgroupview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.managedresourceandgroupview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
      "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
      "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
      "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
      "dnsHostName": "string",
      "activeSessionCount": 0,
      "os": "string",
      "entityType": "Resource"
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
|data|[[SbPAM.Models.ManagedResourceAndGroupView](../Models/sbpam.models.managedresourceandgroupview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


