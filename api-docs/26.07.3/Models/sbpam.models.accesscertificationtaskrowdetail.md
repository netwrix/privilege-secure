
<h2 id="tocS_SbPAM.Models.AccessCertificationTaskRowDetail">SbPAM.Models.AccessCertificationTaskRowDetail</h2>

<a id="schemasbpam.models.accesscertificationtaskrowdetail"></a>
<a id="schema_SbPAM.Models.AccessCertificationTaskRowDetail"></a>
<a id="tocSsbpam.models.accesscertificationtaskrowdetail"></a>
<a id="tocssbpam.models.accesscertificationtaskrowdetail"></a>

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
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
  "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5"
}

```

Access Certification task row details
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
|userId|string(uuid)|false|none|none|
|accessPolicyId|string(uuid)|false|none|none|
|resourceId|string(uuid)¦null|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|activityId|string(uuid)|false|none|none|


