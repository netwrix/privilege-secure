
<h2 id="tocS_SbPAM.Models.DatabaseRoleDto">SbPAM.Models.DatabaseRoleDto</h2>

<a id="schemasbpam.models.databaseroledto"></a>
<a id="schema_SbPAM.Models.DatabaseRoleDto"></a>
<a id="tocSsbpam.models.databaseroledto"></a>
<a id="tocssbpam.models.databaseroledto"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
  "roleName": "string",
  "databaseName": "string",
  "memberList": [
    {
      "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
      "memberName": "string",
      "memberType": "ManagedAccount"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|databaseId|string(uuid)¦null|false|none|none|
|roleName|string¦null|false|none|none|
|databaseName|string¦null|false|none|none|
|memberList|[[SbPAM.Models.RoleMemberDto](../Models/sbpam.models.rolememberdto.md)]¦null|false|none|none|


