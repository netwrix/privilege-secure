
<h2 id="tocS_SbPAM.Models.WebsiteResourceDto">SbPAM.Models.WebsiteResourceDto</h2>

<a id="schemasbpam.models.websiteresourcedto"></a>
<a id="schema_SbPAM.Models.WebsiteResourceDto"></a>
<a id="tocSsbpam.models.websiteresourcedto"></a>
<a id="tocssbpam.models.websiteresourcedto"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "name": "string",
  "avatarUrl": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
  "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
  "logonUrl": "string",
  "uris": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
      "website": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "avatarUrl": "string",
        "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
        "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
        "logonUrl": "string",
        "uris": [
          {}
        ],
        "isVirtual": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "uri": "string",
      "match": "Domain",
      "matchType": "Domain",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|managedResourceId|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|avatarUrl|string¦null|false|none|none|
|platformId|string(uuid)|false|none|none|
|serviceAccountId|string(uuid)¦null|false|none|none|
|activeDirectoryDomainId|string(uuid)¦null|false|none|none|
|associatedResourceId|string(uuid)¦null|false|none|none|
|logonUrl|string¦null|false|none|none|
|uris|[[SbPAM.Models.WebsiteUri](../Models/sbpam.models.websiteuri.md)]¦null|false|none|none|


