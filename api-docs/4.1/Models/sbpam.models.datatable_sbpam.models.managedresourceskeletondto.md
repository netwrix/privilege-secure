
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceSkeletonDto]">SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceSkeletonDto]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.managedresourceskeletondto]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceSkeletonDto]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.managedresourceskeletondto]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.managedresourceskeletondto]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "displayName": "string",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "dnsHostName": "string",
      "hostDistinguishedName": "string",
      "hostObjectSid": "string",
      "onboardState": "NotOnboard",
      "onboardStateName": "string",
      "ipAddress": "string",
      "manageAccount": "Unmanaged",
      "os": "string",
      "saName": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "builtInAccount": "string",
      "lastScanDateTimeUtc": "2019-08-24T14:15:22Z"
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
|data|[[SbPAM.Models.ManagedResourceSkeletonDto](../Models/sbpam.models.managedresourceskeletondto.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


