
<h2 id="tocS_SbPAM.Models.ManagedDatabase">SbPAM.Models.ManagedDatabase</h2>

<a id="schemasbpam.models.manageddatabase"></a>
<a id="schema_SbPAM.Models.ManagedDatabase"></a>
<a id="tocSsbpam.models.manageddatabase"></a>
<a id="tocssbpam.models.manageddatabase"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "server": "string",
  "port": 0,
  "type": "PostgreSQL",
  "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "integratedSecurity": true,
  "trustServerCertificate": true,
  "encrypted": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|server|string¦null|false|none|none|
|port|integer(int32)|false|none|none|
|type|[SbPAM.Models.Common.DatabaseType](#schemasbpam.models.common.databasetype)|false|none|none|
|hostDatabaseId|string(uuid)¦null|false|none|none|
|domainId|string(uuid)¦null|false|none|none|
|integratedSecurity|boolean|false|none|none|
|trustServerCertificate|boolean|false|none|none|
|encrypted|boolean|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


