
<h2 id="tocS_SbPAM.Models.IPAddressRule">SbPAM.Models.IPAddressRule</h2>

<a id="schemasbpam.models.ipaddressrule"></a>
<a id="schema_SbPAM.Models.IPAddressRule"></a>
<a id="tocSsbpam.models.ipaddressrule"></a>
<a id="tocssbpam.models.ipaddressrule"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "address": "string",
  "allowed": true,
  "ipAddressRuleType": "Standard",
  "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|address|string¦null|false|none|none|
|allowed|boolean|false|none|none|
|ipAddressRuleType|[SbPAM.Models.IPAddressRuleType](../Models/sbpam.models.ipaddressruletype.md)|false|none|none|
|activityConfigurationId|string(uuid)¦null|false|none|none|
|managedAccountId|string(uuid)¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


