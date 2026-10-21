
<h2 id="tocS_SbPAM.Models.AccessCertificationTaskRowReview">SbPAM.Models.AccessCertificationTaskRowReview</h2>

<a id="schemasbpam.models.accesscertificationtaskrowreview"></a>
<a id="schema_SbPAM.Models.AccessCertificationTaskRowReview"></a>
<a id="tocSsbpam.models.accesscertificationtaskrowreview"></a>
<a id="tocssbpam.models.accesscertificationtaskrowreview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "status": "NotSet",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

Access Certification task row review status
UI => Endpoint
Not persisted

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|status|[SbPAM.Models.AccessCertificationTaskRowStatus](../Models/sbpam.models.accesscertificationtaskrowstatus.md)|false|none|Access certification task row status|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


