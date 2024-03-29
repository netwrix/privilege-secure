
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.DatabaseDomainUserView]">SbPAM.Models.DataTable[SbPAM.Models.DatabaseDomainUserView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.databasedomainuserview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.DatabaseDomainUserView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.databasedomainuserview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.databasedomainuserview]"></a>

```json
{
  "data": [
    {
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "memberName": "string",
      "memberType": "ManagedAccount"
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
|data|[[SbPAM.Models.DatabaseDomainUserView](../Models/sbpam.models.databasedomainuserview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


