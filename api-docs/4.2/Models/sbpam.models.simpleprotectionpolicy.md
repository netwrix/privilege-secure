
<h2 id="tocS_SbPAM.Models.SimpleProtectionPolicy">SbPAM.Models.SimpleProtectionPolicy</h2>

<a id="schemasbpam.models.simpleprotectionpolicy"></a>
<a id="schema_SbPAM.Models.SimpleProtectionPolicy"></a>
<a id="tocSsbpam.models.simpleprotectionpolicy"></a>
<a id="tocssbpam.models.simpleprotectionpolicy"></a>

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "groupMonitorInterval": 0,
  "managedResourceIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "managedResourceGroupIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "groupMembers": [
    {
      "groupName": "string",
      "groupMember": "string"
    }
  ]
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|groupMonitorInterval|integer(int32)|false|none|none|
|managedResourceIds|[string]¦null|false|none|none|
|managedResourceGroupIds|[string]¦null|false|none|none|
|groupMembers|[[SbPAM.Models.ProtectedGroupMemberInfo](../Models/sbpam.models.protectedgroupmemberinfo.md)]¦null|false|none|none|


