
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.WebsiteUri]">SbPAM.Models.DataTable[SbPAM.Models.WebsiteUri]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.websiteuri]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.WebsiteUri]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.websiteuri]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.websiteuri]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
      "website": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "avatarUrl": "string",
        "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
        "logonUrl": "string",
        "uris": [
          {}
        ],
        "isVirtual": true,
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "uri": "string",
      "match": "Domain",
      "matchType": "Domain",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
|data|[[SbPAM.Models.WebsiteUri](../Models/sbpam.models.websiteuri.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


