
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.DatabaseRoleDto]">SbPAM.Models.DataTable[SbPAM.Models.DatabaseRoleDto]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.databaseroledto]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.DatabaseRoleDto]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.databaseroledto]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.databaseroledto]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
      "roleName": "string",
      "databaseName": "string",
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
|data|[[SbPAM.Models.DatabaseRoleDto](../Models/sbpam.models.databaseroledto.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


