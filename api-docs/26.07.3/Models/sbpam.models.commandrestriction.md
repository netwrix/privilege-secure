
<h2 id="tocS_SbPAM.Models.CommandRestriction">SbPAM.Models.CommandRestriction</h2>

<a id="schemasbpam.models.commandrestriction"></a>
<a id="schema_SbPAM.Models.CommandRestriction"></a>
<a id="tocSsbpam.models.commandrestriction"></a>
<a id="tocssbpam.models.commandrestriction"></a>

```json
{
  "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "name": "Command Restriction 1",
  "emailRecipient": "user@example.com",
  "commandRestrictionSettings": [],
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique identifier|
|name|string|true|none|Unique name for the command restriction|
|emailRecipient|string(email)¦null|false|none|Email address to send notifications|
|commandRestrictionSettings|[[SbPAM.Models.CommandRestrictionSetting](../Models/sbpam.models.commandrestrictionsetting.md)]¦null|false|none|List of command restriction settings|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


