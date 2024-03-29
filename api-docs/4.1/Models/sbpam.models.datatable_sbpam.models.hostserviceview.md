
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.HostServiceView]">SbPAM.Models.DataTable[SbPAM.Models.HostServiceView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.hostserviceview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.HostServiceView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.hostserviceview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.hostserviceview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "displayName": "string",
      "serviceName": "string",
      "description": "string",
      "startType": "Boot",
      "serviceType": 0,
      "userName": "string",
      "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
      "serviceAccountType": "Configuration",
      "serviceAccountName": "string",
      "managedType": "Unmanaged",
      "dependencyCount": 0
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
|data|[[SbPAM.Models.HostServiceView](../Models/sbpam.models.hostserviceview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


