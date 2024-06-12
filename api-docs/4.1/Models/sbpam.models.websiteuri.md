
<h2 id="tocS_SbPAM.Models.WebsiteUri">SbPAM.Models.WebsiteUri</h2>

<a id="schemasbpam.models.websiteuri"></a>
<a id="schema_SbPAM.Models.WebsiteUri"></a>
<a id="tocSsbpam.models.websiteuri"></a>
<a id="tocssbpam.models.websiteuri"></a>

<details><summary>JSON</summary>


```json
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
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
        "website": {},
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
  },
  "uri": "string",
  "match": "Domain",
  "matchType": "Domain",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|websiteId|string(uuid)|false|none|none|
|website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|none|
|uri|string¦null|false|none|none|
|match|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)|false|none|none|
|matchType|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


