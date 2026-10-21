
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.RolesRole]">SbPAM.Models.DataTable[SbPAM.Models.RolesRole]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.rolesrole]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.RolesRole]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.rolesrole]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.rolesrole]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "roleTarget": "AccessPolicies",
      "isDeleted": true,
      "builtInRole": true,
      "allActivities": true,
      "allCredentials": true,
      "allPolicies": true,
      "allResources": true,
      "allUsers": true,
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
|data|[[SbPAM.Models.RolesRole](../Models/sbpam.models.rolesrole.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


