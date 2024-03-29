
<h2 id="tocS_SbPAM.Models.ManagedAccountAndCollectionsView">SbPAM.Models.ManagedAccountAndCollectionsView</h2>

<a id="schemasbpam.models.managedaccountandcollectionsview"></a>
<a id="schema_SbPAM.Models.ManagedAccountAndCollectionsView"></a>
<a id="tocSsbpam.models.managedaccountandcollectionsview"></a>
<a id="tocssbpam.models.managedaccountandcollectionsview"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "email": "string",
  "samAccountName": "string",
  "domain": "string",
  "entityType": "ManagedAccount",
  "isReviewer": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Account/Group/Collection Id|
|name|string¦null|false|none|Account/Group/Collection Name|
|email|string¦null|false|none|Account/Group/Collection Email|
|samAccountName|string¦null|false|none|Account/Group/Collection SamAccountName|
|domain|string¦null|false|none|Account/Group/Collection Domain|
|entityType|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](../Models/sbpam.models.managedaccountviewentitytypeenum.md)|false|none|none|
|isReviewer|boolean|false|none|none|


