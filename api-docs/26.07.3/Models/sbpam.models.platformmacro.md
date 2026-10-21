
<h2 id="tocS_SbPAM.Models.PlatformMacro">SbPAM.Models.PlatformMacro</h2>

<a id="schemasbpam.models.platformmacro"></a>
<a id="schema_SbPAM.Models.PlatformMacro"></a>
<a id="tocSsbpam.models.platformmacro"></a>
<a id="tocssbpam.models.platformmacro"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
  "name": "string",
  "type": "Sudo",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
}

```

This model represents a macro for a platform.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique identifier for this platform macro.|
|platformId|string(uuid)|false|none|Platform ID associated with this macro.|
|gennixCommandPlanId|string(uuid)¦null|false|none|Gennix Command Plan ID associated with this macro.|
|name|string¦null|false|none|Name for this platform macro.|
|type|[SbPAM.Constants.PlatformMacroType](../Models/sbpam.constants.platformmacrotype.md)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.|


