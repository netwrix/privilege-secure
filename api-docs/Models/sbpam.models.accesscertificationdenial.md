
<h2 id="tocS_SbPAM.Models.AccessCertificationDenial">SbPAM.Models.AccessCertificationDenial</h2>

<a id="schemasbpam.models.accesscertificationdenial"></a>
<a id="schema_SbPAM.Models.AccessCertificationDenial"></a>
<a id="tocSsbpam.models.accesscertificationdenial"></a>
<a id="tocssbpam.models.accesscertificationdenial"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
  "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
  "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "denyingTaskId": "19b87266-8b7d-44d1-b836-1e581cf4eaff",
  "status": "NotSet",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "denyingTaskName": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|accessPolicyId|string(uuid)|false|none|none|
|managedUserId|string(uuid)|false|none|none|
|resourceId|string(uuid)¦null|false|none|none|
|activityId|string(uuid)|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|denyingTaskId|string(uuid)|false|none|none|
|status|[SbPAM.Models.AccessCertificationTaskRowStatus](../Models/sbpam.models.accesscertificationtaskrowstatus.md)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|denyingTaskName|string¦null|false|none|none|


