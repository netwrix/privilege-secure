
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.DatabaseDbDto]">SbPAM.Models.DataTable[SbPAM.Models.DatabaseDbDto]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.databasedbdto]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.DatabaseDbDto]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.databasedbdto]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.databasedbdto]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "databaseName": "string",
      "isOnline": true,
      "status": "string",
      "memberList": [
        {
          "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
          "memberName": "string",
          "memberType": "ManagedAccount"
        }
      ]
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
|data|[[SbPAM.Models.DatabaseDbDto](../Models/sbpam.models.databasedbdto.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


