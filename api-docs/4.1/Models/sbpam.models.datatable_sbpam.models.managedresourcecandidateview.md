
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceCandidateView]">SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceCandidateView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.managedresourcecandidateview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceCandidateView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.managedresourcecandidateview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.managedresourcecandidateview]"></a>

```json
{
  "data": [
    {
      "appResourceType": null,
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "displayName": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "platformName": "string",
      "os": "string",
      "version": "string",
      "ipAddress": "string",
      "isDomainController": true,
      "dnsHostName": "string",
      "distinguishedName": "string",
      "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
      "domainName": "string",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
      "serviceAccountName": "string"
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
|data|[[SbPAM.Models.ManagedResourceCandidateView](../Models/sbpam.models.managedresourcecandidateview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


