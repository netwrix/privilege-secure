
<h2 id="tocS_SbPAM.Models.ServiceAccountDetailsView">SbPAM.Models.ServiceAccountDetailsView</h2>

<a id="schemasbpam.models.serviceaccountdetailsview"></a>
<a id="schema_SbPAM.Models.ServiceAccountDetailsView"></a>
<a id="tocSsbpam.models.serviceaccountdetailsview"></a>
<a id="tocssbpam.models.serviceaccountdetailsview"></a>

```json
{
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
  "resourceName": "string",
  "samaccountName": "string",
  "platformName": "string",
  "passwordStatus": "Unspecified",
  "passwordLastCheckedUtc": "2019-08-24T14:15:22Z",
  "passwordLastChangedUtc": "2019-08-24T14:15:22Z",
  "passwordNextChangeUtc": "2019-08-24T14:15:22Z",
  "rotationStatus": "Queued",
  "rollbackStatus": "Queued",
  "dependencyCount": 0,
  "age": 0,
  "passwordStatusName": "string",
  "rotationStatusName": "string",
  "rollbackStatusName": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|hostUserId|string(uuid)|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|managedUserId|string(uuid)¦null|false|none|none|
|resourceName|string¦null|false|none|none|
|samaccountName|string¦null|false|none|none|
|platformName|string¦null|false|none|none|
|passwordStatus|[SbPAM.Models.VerificationScanStatus](../Models/sbpam.models.verificationscanstatus.md)|false|none|none|
|passwordLastCheckedUtc|string(date-time)¦null|false|none|none|
|passwordLastChangedUtc|string(date-time)¦null|false|none|none|
|passwordNextChangeUtc|string(date-time)¦null|false|none|none|
|rotationStatus|[SbPAM.Models.ServiceRotationJobStatus](../Models/sbpam.models.servicerotationjobstatus.md)|false|none|none|
|rollbackStatus|[SbPAM.Models.ServiceRotationJobStatus](../Models/sbpam.models.servicerotationjobstatus.md)|false|none|none|
|dependencyCount|integer(int32)|false|none|none|
|age|integer(int32)|false|none|none|
|passwordStatusName|string¦null|false|none|none|
|rotationStatusName|string¦null|false|none|none|
|rollbackStatusName|string¦null|false|none|none|


