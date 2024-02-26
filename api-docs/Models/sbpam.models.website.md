
<h2 id="tocS_SbPAM.Models.Website">SbPAM.Models.Website</h2>

<a id="schemasbpam.models.website"></a>
<a id="schema_SbPAM.Models.Website"></a>
<a id="tocSsbpam.models.website"></a>
<a id="tocssbpam.models.website"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "avatarUrl": "string",
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
        "uris": [],
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
  ],
  "isVirtual": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|avatarUrl|string¦null|false|none|none|
|activeDirectoryDomainId|string(uuid)¦null|false|none|none|
|associatedResourceId|string(uuid)¦null|false|none|none|
|logonUrl|string¦null|false|none|none|
|uris|[[SbPAM.Models.WebsiteUri](#schemasbpam.models.websiteuri)]¦null|false|none|none|
|isVirtual|boolean|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


