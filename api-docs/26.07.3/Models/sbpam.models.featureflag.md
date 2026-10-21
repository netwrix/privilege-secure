
<h2 id="tocS_SbPAM.Models.FeatureFlag">SbPAM.Models.FeatureFlag</h2>

<a id="schemasbpam.models.featureflag"></a>
<a id="schema_SbPAM.Models.FeatureFlag"></a>
<a id="tocSsbpam.models.featureflag"></a>
<a id="tocssbpam.models.featureflag"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "isEnabled": true,
  "isUIVisible": true,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this email.|
|name|string¦null|false|none|The name of the feature|
|isEnabled|boolean|false|none|Is the feature enabled|
|isUIVisible|boolean|false|none|Should be added to JWT for UI|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


