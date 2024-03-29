
<h2 id="tocS_SbPAM.Models.SearchParams">SbPAM.Models.SearchParams</h2>

<a id="schemasbpam.models.searchparams"></a>
<a id="schema_SbPAM.Models.SearchParams"></a>
<a id="tocSsbpam.models.searchparams"></a>
<a id="tocssbpam.models.searchparams"></a>

```json
{
  "skip": 0,
  "take": 0,
  "orderBy": "string",
  "orderDescending": true,
  "filterText": "string",
  "filterColumns": [
    "string"
  ]
}

```

Common search parameters for controllers

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|skip|integer(int32)|false|none|Start at this item (default: 0)|
|take|integer(int32)|false|none|Return this number of items (default: 100)|
|orderBy|string¦null|false|none|Property name to order results by|
|orderDescending|boolean|false|none|Use descending sort order (default: false)|
|filterText|string¦null|false|none|Filter by entries that contain this text. Properties match vary by endpoint.|
|filterColumns|[string]¦null|false|none|Columns to include in filter|


