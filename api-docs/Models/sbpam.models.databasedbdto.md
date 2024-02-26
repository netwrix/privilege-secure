
<h2 id="tocS_SbPAM.Models.DatabaseDbDto">SbPAM.Models.DatabaseDbDto</h2>

<a id="schemasbpam.models.databasedbdto"></a>
<a id="schema_SbPAM.Models.DatabaseDbDto"></a>
<a id="tocSsbpam.models.databasedbdto"></a>
<a id="tocssbpam.models.databasedbdto"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "databaseName": "string",
  "isOnline": true,
  "status": "string",
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
|databaseName|string¦null|false|none|none|
|isOnline|boolean|false|none|none|
|status|string¦null|false|none|none|
|memberList|[[SbPAM.Models.RoleMemberDto](#schemasbpam.models.rolememberdto)]¦null|false|none|none|


