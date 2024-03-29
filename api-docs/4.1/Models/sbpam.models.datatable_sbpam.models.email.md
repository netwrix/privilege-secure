
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.Email]">SbPAM.Models.DataTable[SbPAM.Models.Email]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.email]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.Email]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.email]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.email]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "expiresDateTimeUtc": "2019-08-24T14:15:22Z",
      "emailSettingsId": "f97b605c-a258-4007-967b-14f8a52c230d",
      "emailSettings": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "description": "string",
        "sendNotification": true,
        "useTls": true,
        "useAuth": true,
        "smtpHost": "string",
        "smtpPort": 0,
        "fromAddress": "string",
        "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "subject": "string",
      "toAddress": "string",
      "htmlBody": "string",
      "importance": "Low",
      "priority": "NonUrgent",
      "wasSent": true,
      "sentDateTimeUtc": "2019-08-24T14:15:22Z",
      "attachmentPath": "string",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
|data|[[SbPAM.Models.Email](../Models/sbpam.models.email.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


