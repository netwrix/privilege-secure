
<h2 id="tocS_SbPAM.Models.CredentialHostResult">SbPAM.Models.CredentialHostResult</h2>

<a id="schemasbpam.models.credentialhostresult"></a>
<a id="schema_SbPAM.Models.CredentialHostResult"></a>
<a id="tocSsbpam.models.credentialhostresult"></a>
<a id="tocssbpam.models.credentialhostresult"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "resourceName": "string",
  "samAccountName": "string",
  "dnsHostName": "string",
  "type": "string",
  "name": "string",
  "lastPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
  "nextPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
  "lastPasswordChangeStatus": null,
  "currentPasswordChangeStatus": null,
  "lastHostScanDateTimeUtc": "2019-08-24T14:15:22Z",
  "nextHostScanDateTimeUtc": "2019-08-24T14:15:22Z",
  "lastHostScanStatus": null
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|hostId|string(uuid)|false|none|none|
|hostUserId|string(uuid)|false|none|none|
|managedResourceId|string(uuid)|false|none|none|
|resourceName|string¦null|false|none|none|
|samAccountName|string¦null|false|none|none|
|dnsHostName|string¦null|false|none|none|
|type|string¦null|false|none|none|
|name|string¦null|false|none|none|
|lastPasswordChangeDateTimeUtc|string(date-time)¦null|false|none|none|
|nextPasswordChangeDateTimeUtc|string(date-time)¦null|false|none|none|
|lastPasswordChangeStatus|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|currentPasswordChangeStatus|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|lastHostScanDateTimeUtc|string(date-time)¦null|false|none|none|
|nextHostScanDateTimeUtc|string(date-time)¦null|false|none|none|
|lastHostScanStatus|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|


