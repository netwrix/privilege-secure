
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.AccessCertRowTable]">SbPAM.Models.DataTable[SbPAM.Models.AccessCertRowTable]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.accesscertrowtable]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.AccessCertRowTable]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.accesscertrowtable]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.accesscertrowtable]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "taskId": "e6e9d88a-9b63-468a-aec3-b7a11de27af8",
      "permissions": [
        "string"
      ],
      "status": "NotSet",
      "userName": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "activityName": "string",
      "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
      "resourceName": "string",
      "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
      "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
      "accessPolicyName": "string",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "credentialName": "string",
      "connectionProfile": "string",
      "lastAccessedDateTimeUtc": "2019-08-24T14:15:22Z"
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
|data|[[SbPAM.Models.AccessCertRowTable](../Models/sbpam.models.accesscertrowtable.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


