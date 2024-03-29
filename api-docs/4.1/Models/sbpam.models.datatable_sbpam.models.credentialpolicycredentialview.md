
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCredentialView]">SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCredentialView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.credentialpolicycredentialview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCredentialView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.credentialpolicycredentialview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.credentialpolicycredentialview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "username": "string",
      "name": "string",
      "domain": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "os": "string",
      "activeSessionCount": 0,
      "entityType": "Credential"
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
|data|[[SbPAM.Models.CredentialPolicyCredentialView](../Models/sbpam.models.credentialpolicycredentialview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


