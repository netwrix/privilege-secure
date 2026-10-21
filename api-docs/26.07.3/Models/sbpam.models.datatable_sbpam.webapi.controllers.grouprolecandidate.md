
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.WebAPI.Controllers.GroupRoleCandidate, SbPAM.WebAPI, Version=3.7.530.0, Culture=neutral, PublicKeyToken=null]]">SbPAM.Models.DataTable[SbPAM.WebAPI.Controllers.GroupRoleCandidate, SbPAM.WebAPI, Version=3.7.530.0, Culture=neutral, PublicKeyToken=null]]</h2>

<a id="schemasbpam.models.datatable[sbpam.webapi.controllers.grouprolecandidate, sbpam.webapi, version=3.7.530.0, culture=neutral, publickeytoken=null]]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.WebAPI.Controllers.GroupRoleCandidate, SbPAM.WebAPI, Version=3.7.530.0, Culture=neutral, PublicKeyToken=null]]"></a>
<a id="tocSsbpam.models.datatable[sbpam.webapi.controllers.grouprolecandidate, sbpam.webapi, version=3.7.530.0, culture=neutral, publickeytoken=null]]"></a>
<a id="tocssbpam.models.datatable[sbpam.webapi.controllers.grouprolecandidate, sbpam.webapi, version=3.7.530.0, culture=neutral, publickeytoken=null]]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "type": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "platformName": "string",
      "context": "string",
      "additionalInfo": "string",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
      "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
      "tenantId": "f97df110-f4de-492e-8849-4a6af68026b0"
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
|data|[[SbPAM.WebAPI.Controllers.GroupRoleCandidate](../Models/sbpam.webapi.controllers.grouprolecandidate.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


