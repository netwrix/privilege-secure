
<h2 id="tocS_SbPAM.Models.ManagedDatabaseDto">SbPAM.Models.ManagedDatabaseDto</h2>

<a id="schemasbpam.models.manageddatabasedto"></a>
<a id="schema_SbPAM.Models.ManagedDatabaseDto"></a>
<a id="tocSsbpam.models.manageddatabasedto"></a>
<a id="tocssbpam.models.manageddatabasedto"></a>

```json
{
  "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
  "ipAddress": "string",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "virtualHostId": "bc1c2187-fc2b-47af-80fd-f5832bdcfcd1",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
  "name": "string",
  "server": "string",
  "port": 0,
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "type": "PostgreSQL",
  "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
  "integratedSecurity": true,
  "trustServerCertificate": true,
  "encrypted": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|resourceId|string(uuid)¦null|false|none|none|
|ipAddress|string¦null|false|none|none|
|serviceAccountId|string(uuid)¦null|false|none|none|
|virtualHostId|string(uuid)¦null|false|none|none|
|platformId|string(uuid)¦null|false|none|none|
|databaseId|string(uuid)¦null|false|none|none|
|name|string¦null|false|none|none|
|server|string¦null|false|none|none|
|port|integer(int32)|false|none|none|
|domainId|string(uuid)¦null|false|none|none|
|type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)|false|none|none|
|hostDatabaseId|string(uuid)¦null|false|none|none|
|integratedSecurity|boolean|false|none|none|
|trustServerCertificate|boolean|false|none|none|
|encrypted|boolean|false|none|none|


