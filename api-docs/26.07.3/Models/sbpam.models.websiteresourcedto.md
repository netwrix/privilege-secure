
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
|associatedResourceId|string(uuid)¦null|false|none|none|
|logonUrl|string¦null|false|none|none|
|uris|[[SbPAM.Models.WebsiteUri](../Models/sbpam.models.websiteuri.md)]¦null|false|none|none|


