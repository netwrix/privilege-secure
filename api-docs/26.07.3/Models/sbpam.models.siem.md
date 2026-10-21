
<h2 id="tocS_SbPAM.Models.Siem">SbPAM.Models.Siem</h2>

<a id="schemasbpam.models.siem"></a>
<a id="schema_SbPAM.Models.Siem"></a>
<a id="tocSsbpam.models.siem"></a>
<a id="tocssbpam.models.siem"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "sent": true,
  "sentTime": "2019-08-24T14:15:22Z",
  "eventMessageId": "736da6af-c8bf-4071-b045-b78373b87820",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|sent|boolean|false|none|none|
|sentTime|string(date-time)¦null|false|none|none|
|eventMessageId|string(uuid)|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


