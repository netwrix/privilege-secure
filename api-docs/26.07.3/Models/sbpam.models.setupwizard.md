
<h2 id="tocS_SbPAM.Models.SetupWizard">SbPAM.Models.SetupWizard</h2>

<a id="schemasbpam.models.setupwizard"></a>
<a id="schema_SbPAM.Models.SetupWizard"></a>
<a id="tocSsbpam.models.setupwizard"></a>
<a id="tocssbpam.models.setupwizard"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "isComplete": true,
  "upgradeRequired": true,
  "modifiedDateUtc": "2019-08-24T14:15:22Z",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|isComplete|boolean|false|none|none|
|upgradeRequired|boolean|false|none|none|
|modifiedDateUtc|string(date-time)|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


