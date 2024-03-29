
<h2 id="tocS_SbPAM.Models.ManagedResourceSkeletonDto">SbPAM.Models.ManagedResourceSkeletonDto</h2>

<a id="schemasbpam.models.managedresourceskeletondto"></a>
<a id="schema_SbPAM.Models.ManagedResourceSkeletonDto"></a>
<a id="tocSsbpam.models.managedresourceskeletondto"></a>
<a id="tocssbpam.models.managedresourceskeletondto"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "displayName": "string",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "dnsHostName": "string",
  "hostDistinguishedName": "string",
  "hostObjectSid": "string",
  "onboardState": "NotOnboard",
  "onboardStateName": "string",
  "ipAddress": "string",
  "manageAccount": "Unmanaged",
  "os": "string",
  "saName": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "builtInAccount": "string",
  "lastScanDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

We need to hand off potentially huge numbers of managed resources to the ActionService
together with some host information
Cut the data down to only what we actually need

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|displayName|string¦null|false|none|none|
|hostId|string(uuid)¦null|false|none|none|
|dnsHostName|string¦null|false|none|none|
|hostDistinguishedName|string¦null|false|none|none|
|hostObjectSid|string¦null|false|none|none|
|onboardState|[SbPAM.Models.ResourceOnboardState](../Models/sbpam.models.resourceonboardstate.md)|false|none|none|
|onboardStateName|string¦null|false|none|none|
|ipAddress|string¦null|false|none|none|
|manageAccount|[SbPAM.Models.ManagedResourceManageAccountEnum](../Models/sbpam.models.managedresourcemanageaccountenum.md)|false|none|none|
|os|string¦null|false|none|none|
|saName|string¦null|false|none|none|
|platformId|string(uuid)¦null|false|none|none|
|builtInAccount|string¦null|false|none|none|
|lastScanDateTimeUtc|string(date-time)¦null|false|none|none|


