
<h2 id="tocS_SbPAM.WebAPI.Controllers.GroupRoleCandidate">SbPAM.WebAPI.Controllers.GroupRoleCandidate</h2>

<a id="schemasbpam.webapi.controllers.grouprolecandidate"></a>
<a id="schema_SbPAM.WebAPI.Controllers.GroupRoleCandidate"></a>
<a id="tocSsbpam.webapi.controllers.grouprolecandidate"></a>
<a id="tocssbpam.webapi.controllers.grouprolecandidate"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "type": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "platformName": "string",
  "context": "string",
  "additionalInfo": "string",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "tenantId": "f97df110-f4de-492e-8849-4a6af68026b0"
}

```

Unified DTO for groups and roles across all platforms

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique identifier (AD Group ID, Role ID, etc.)|
|name|string¦null|false|none|Display name|
|type|string¦null|false|none|Platform type: AD, Entra, SQL, Oracle|
|platformId|string(uuid)|false|none|Platform/Domain/Server ID|
|platformName|string¦null|false|none|Platform/Domain/Server display name|
|context|string¦null|false|none|Context information (Domain name, Tenant, Database name, etc.)|
|additionalInfo|string¦null|false|none|Additional information for display|
|hostId|string(uuid)¦null|false|none|Host ID for database roles (SQL/Oracle)|
|hostDatabaseId|string(uuid)¦null|false|none|Database ID for database roles (SQL/Oracle)|
|domainId|string(uuid)¦null|false|none|Domain ID for AD groups|
|tenantId|string(uuid)¦null|false|none|Tenant ID for Entra groups|


