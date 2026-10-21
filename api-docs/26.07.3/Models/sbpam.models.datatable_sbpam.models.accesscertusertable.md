
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.AccessCertUserTable]">SbPAM.Models.DataTable[SbPAM.Models.AccessCertUserTable]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.accesscertusertable]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.AccessCertUserTable]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.accesscertusertable]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.accesscertusertable]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "taskId": "e6e9d88a-9b63-468a-aec3-b7a11de27af8",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "userName": "string",
      "userEmail": "string",
      "groupName": "string",
      "samAccountName": "string",
      "type": "User"
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
|data|[[SbPAM.Models.AccessCertUserTable](../Models/sbpam.models.accesscertusertable.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


