
<h2 id="tocS_SbPAM.Models.WebsiteUri">SbPAM.Models.WebsiteUri</h2>

<a id="schemasbpam.models.websiteuri"></a>
<a id="schema_SbPAM.Models.WebsiteUri"></a>
<a id="tocSsbpam.models.websiteuri"></a>
<a id="tocssbpam.models.websiteuri"></a>

```json
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
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
        "website": {},
        "uri": "string",
        "match": "Domain",
        "matchType": "Domain",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      }
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

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|websiteId|string(uuid)|false|none|none|
|website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|This is the detail record for web-type manged resources|
|uri|string¦null|false|none|none|
|match|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)|false|none|none|
|matchType|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


