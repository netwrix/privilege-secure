
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Identity.Models.SbPAMConsoleAccessMemberView]">SbPAM.Models.DataTable[SbPAM.Identity.Models.SbPAMConsoleAccessMemberView]</h2>

<a id="schemasbpam.models.datatable[sbpam.identity.models.sbpamconsoleaccessmemberview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Identity.Models.SbPAMConsoleAccessMemberView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.identity.models.sbpamconsoleaccessmemberview]"></a>
<a id="tocssbpam.models.datatable[sbpam.identity.models.sbpamconsoleaccessmemberview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
      "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
      "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
      "activeDirectoryGroupId": "178427bb-2036-4475-8b5c-2904ab4ca34e",
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
|data|[[SbPAM.Identity.Models.SbPAMConsoleAccessMemberView](../Models/sbpam.identity.models.sbpamconsoleaccessmemberview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


