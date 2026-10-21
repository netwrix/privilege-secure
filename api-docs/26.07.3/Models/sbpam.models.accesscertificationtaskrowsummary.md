
<h2 id="tocS_SbPAM.Models.AccessCertificationTaskRowSummary">SbPAM.Models.AccessCertificationTaskRowSummary</h2>

<a id="schemasbpam.models.accesscertificationtaskrowsummary"></a>
<a id="schema_SbPAM.Models.AccessCertificationTaskRowSummary"></a>
<a id="tocSsbpam.models.accesscertificationtaskrowsummary"></a>
<a id="tocssbpam.models.accesscertificationtaskrowsummary"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "userName": "string",
  "status": "NotSet",
  "accessControlPolicy": "string",
  "resource": "string",
  "credential": "string",
  "activity": "string",
  "groupName": "string",
  "permissions": [
    "string"
  ],
  "lastAccessedDateTimeUtc": "2019-08-24T14:15:22Z",
  "connectionProfile": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

Summary data structure for Access Certification Task rows
Endpoint => UI
Not persisted

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|userName|string¦null|false|none|none|
|status|[SbPAM.Models.AccessCertificationTaskRowStatus](../Models/sbpam.models.accesscertificationtaskrowstatus.md)|false|none|Access certification task row status|
|accessControlPolicy|string¦null|false|none|none|
|resource|string¦null|false|none|none|
|credential|string¦null|false|none|none|
|activity|string¦null|false|none|none|
|groupName|string¦null|false|none|none|
|permissions|[string]¦null|false|none|none|
|lastAccessedDateTimeUtc|string(date-time)|false|none|none|
|connectionProfile|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


