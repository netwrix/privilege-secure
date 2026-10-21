
<h2 id="tocS_SbPAM.Models.CommandRestrictionSetting">SbPAM.Models.CommandRestrictionSetting</h2>

<a id="schemasbpam.models.commandrestrictionsetting"></a>
<a id="schema_SbPAM.Models.CommandRestrictionSetting"></a>
<a id="tocSsbpam.models.commandrestrictionsetting"></a>
<a id="tocssbpam.models.commandrestrictionsetting"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "commandRestrictionId": "dcac6022-e2f7-4c9f-95c3-25ff74990f38",
  "commandRestrictionSettingNumber": 0,
  "active": true,
  "email": true,
  "emailRecipient": "string",
  "lockMessage": "NPS Locked your session via - Command Restriction",
  "commandRestrictionMatchType": "Keyword",
  "commandRestrictionActionType": "LogOnly",
  "match": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|commandRestrictionId|string(uuid)|false|none|none|
|commandRestrictionSettingNumber|integer(int32)|false|none|none|
|active|boolean|false|none|none|
|email|boolean|false|none|none|
|emailRecipient|string¦null|false|none|none|
|lockMessage|string¦null|false|none|Custom Lock message|
|commandRestrictionMatchType|[SbPAM.Models.CommandRestrictionMatchType](../Models/sbpam.models.commandrestrictionmatchtype.md)|false|none|none|
|commandRestrictionActionType|[SbPAM.Models.CommandRestrictionActionType](../Models/sbpam.models.commandrestrictionactiontype.md)|false|none|none|
|match|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


