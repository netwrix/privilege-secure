
<h2 id="tocS_SbPAM.Models.HostServiceView">SbPAM.Models.HostServiceView</h2>

<a id="schemasbpam.models.hostserviceview"></a>
<a id="schema_SbPAM.Models.HostServiceView"></a>
<a id="tocSsbpam.models.hostserviceview"></a>
<a id="tocssbpam.models.hostserviceview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "displayName": "string",
  "serviceName": "string",
  "description": "string",
  "startType": "Boot",
  "serviceType": 0,
  "userName": "string",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "serviceAccountType": "Configuration",
  "serviceAccountName": "string",
  "managedType": "Unmanaged",
  "dependencyCount": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|hostId|string(uuid)|false|none|none|
|displayName|string¦null|false|none|none|
|serviceName|string¦null|false|none|none|
|description|string¦null|false|none|none|
|startType|[SbPAM.Models.Common.ServiceStartType](#schemasbpam.models.common.servicestarttype)|false|none|none|
|serviceType|integer(int32)|false|none|none|
|userName|string¦null|false|none|none|
|serviceAccountId|string(uuid)¦null|false|none|none|
|serviceAccountType|[SbPAM.Models.CredentialType](#schemasbpam.models.credentialtype)|false|none|none|
|serviceAccountName|string¦null|false|none|none|
|managedType|[SbPAM.Models.ManagedTypeEnum](#schemasbpam.models.managedtypeenum)|false|none|none|
|dependencyCount|integer(int32)|false|none|none|


