
<h2 id="tocS_SbPAM.Models.ActivityConfigurationSetting">SbPAM.Models.ActivityConfigurationSetting</h2>

<a id="schemasbpam.models.activityconfigurationsetting"></a>
<a id="schema_SbPAM.Models.ActivityConfigurationSetting"></a>
<a id="tocSsbpam.models.activityconfigurationsetting"></a>
<a id="tocssbpam.models.activityconfigurationsetting"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "key": "string",
  "value": "string",
  "type": "String",
  "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

This model represents a collection of settings (name/value pairs) for running an activity.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id for this setting.|
|name|string¦null|false|none|Display Name for this configuration setting.|
|key|string¦null|false|none|Key for this setting.|
|value|string¦null|false|none|Value for this setting.|
|type|[SbPAM.Models.ActivityConfigurationSettingType](../Models/sbpam.models.activityconfigurationsettingtype.md)|false|none|none|
|activityConfigurationId|string(uuid)|false|none|Id of configuration collection to which this setting belongs.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


