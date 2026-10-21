
<h2 id="tocS_SbPAM.Models.SiemSent">SbPAM.Models.SiemSent</h2>

<a id="schemasbpam.models.siemsent"></a>
<a id="schema_SbPAM.Models.SiemSent"></a>
<a id="tocSsbpam.models.siemsent"></a>
<a id="tocssbpam.models.siemsent"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "siemId": "3ce575c8-642c-4de7-981a-a967a3020313",
  "siemServerId": "6e2c5d42-95a1-42f1-85ff-f34a8f6b29d7",
  "serviceId": "8f8bb40f-b96b-40fe-9064-5031fbe483f9",
  "sent": true,
  "message": "string",
  "sentTime": "2019-08-24T14:15:22Z",
  "eventCreatedTime": "2019-08-24T14:15:22Z",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|siemId|string(uuid)|false|none|none|
|siemServerId|string(uuid)|false|none|none|
|serviceId|string(uuid)|false|none|none|
|sent|boolean|false|none|none|
|message|string¦null|false|none|none|
|sentTime|string(date-time)¦null|false|none|none|
|eventCreatedTime|string(date-time)¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


