
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Identity.Models.SbPAMConsoleAccessMemberCandidateView]">SbPAM.Models.DataTable[SbPAM.Identity.Models.SbPAMConsoleAccessMemberCandidateView]</h2>

<a id="schemasbpam.models.datatable[sbpam.identity.models.sbpamconsoleaccessmembercandidateview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Identity.Models.SbPAMConsoleAccessMemberCandidateView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.identity.models.sbpamconsoleaccessmembercandidateview]"></a>
<a id="tocssbpam.models.datatable[sbpam.identity.models.sbpamconsoleaccessmembercandidateview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "username": "string",
      "lastLogonTimestamp": "2019-08-24T14:15:22Z",
      "email": "string",
      "entityType": "ManagedAccount"
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
|data|[[SbPAM.Identity.Models.SbPAMConsoleAccessMemberCandidateView](../Models/sbpam.identity.models.sbpamconsoleaccessmembercandidateview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


