
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceLocalUserView]">SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceLocalUserView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.managedresourcelocaluserview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceLocalUserView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.managedresourcelocaluserview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.managedresourcelocaluserview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "displayName": "string",
      "email": "string",
      "managed": true,
      "managedType": "Internal",
      "rotationType": "NotManaged",
      "title": "string",
      "department": "string",
      "samAccountName": "string",
      "userPrincipalName": "string",
      "distinguishedName": "string",
      "enabled": true,
      "unixId": 0,
      "privilege": "NotSet",
      "lastLogonUtc": "2019-08-24T14:15:22Z",
      "passwordChangedUtc": "2019-08-24T14:15:22Z",
      "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
      "domainConfigName": "string",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "hostName": "string",
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
      "managedAccountName": "string",
      "appUserType": null,
      "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
      "scheduleId": "b7b4f318-018f-4d71-ac1a-f61e4bfaefbe",
      "scheduleName": "string",
      "passwordComplexityId": "fae1d72a-2085-4283-a7b1-627c4535a6d9",
      "passwordComplexityName": "string",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "dependencyCount": 0,
      "passwordStatus": "Unspecified",
      "passwordLastCheckedUtc": "2019-08-24T14:15:22Z",
      "passwordNextChangeUtc": "2019-08-24T14:15:22Z",
      "changeOnCheckout": true,
      "changeOnRelease": true,
      "age": 0
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
|data|[[SbPAM.Models.ManagedResourceLocalUserView](../Models/sbpam.models.managedresourcelocaluserview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


