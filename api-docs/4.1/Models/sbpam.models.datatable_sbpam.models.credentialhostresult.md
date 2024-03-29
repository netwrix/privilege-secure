
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.CredentialHostResult]">SbPAM.Models.DataTable[SbPAM.Models.CredentialHostResult]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.credentialhostresult]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.CredentialHostResult]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.credentialhostresult]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.credentialhostresult]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "resourceName": "string",
      "samAccountName": "string",
      "dnsHostName": "string",
      "type": "string",
      "name": "string",
      "lastPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
      "nextPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
      "lastPasswordChangeStatus": null,
      "currentPasswordChangeStatus": null,
      "lastHostScanDateTimeUtc": "2019-08-24T14:15:22Z",
      "nextHostScanDateTimeUtc": "2019-08-24T14:15:22Z",
      "lastHostScanStatus": null
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
|data|[[SbPAM.Models.CredentialHostResult](../Models/sbpam.models.credentialhostresult.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


