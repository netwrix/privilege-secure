
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCandidateView]">SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCandidateView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.credentialpolicycandidateview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCandidateView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.credentialpolicycandidateview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.credentialpolicycandidateview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "username": "string",
      "name": "string",
      "description": "string",
      "domain": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "os": "string",
      "activeSessionCount": 0,
      "entityType": "Credential",
      "vaultConnectorId": "da5bc90a-dbcd-442c-91be-be4204003524"
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
|data|[[SbPAM.Models.CredentialPolicyCandidateView](../Models/sbpam.models.credentialpolicycandidateview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


