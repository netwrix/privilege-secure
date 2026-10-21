
<h2 id="tocS_SbPAM.Models.WizardState">SbPAM.Models.WizardState</h2>

<a id="schemasbpam.models.wizardstate"></a>
<a id="schema_SbPAM.Models.WizardState"></a>
<a id="tocSsbpam.models.wizardstate"></a>
<a id="tocssbpam.models.wizardstate"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "state": "Welcome",
  "netbiosDomain": "string",
  "dnsDomain": "string",
  "adminUsername": "string",
  "serviceUsername": "string",
  "initialActiveDirectoryConfigId": "c91d54af-6846-4286-b695-e0675aeab2d4",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Record Id|
|state|[SbPAM.Models.WizardStateEnum](../Models/sbpam.models.wizardstateenum.md)|false|none|none|
|netbiosDomain|string¦null|false|none|Domain Netbios name|
|dnsDomain|string¦null|false|none|Domain DNS|
|adminUsername|string¦null|false|none|Admin username|
|serviceUsername|string¦null|false|none|Service username|
|initialActiveDirectoryConfigId|string(uuid)¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


