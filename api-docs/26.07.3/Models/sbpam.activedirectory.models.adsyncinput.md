
<h2 id="tocS_SbPAM.ActiveDirectory.Models.AdSyncInput">SbPAM.ActiveDirectory.Models.AdSyncInput</h2>

<a id="schemasbpam.activedirectory.models.adsyncinput"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.AdSyncInput"></a>
<a id="tocSsbpam.activedirectory.models.adsyncinput"></a>
<a id="tocssbpam.activedirectory.models.adsyncinput"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "specificGroups": "string",
  "nameFormat": "DistinguishedName",
  "useGlobalCatalog": false,
  "domain": "\r\n            example.com\r\n            ",
  "domainController": "\r\n            dc.example.com\r\n            ",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

Represents the input for Active Directory synchronization.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Gets or sets the unique identifier.|
|specificGroups|string¦null|false|none|Gets or sets the specific groups this job should scan.<br>When empty, the entire AD environment will be scanned.|
|nameFormat|[SbPAM.ActiveDirectory.Models.Enums.ActiveDirectoryNameFormat](../Models/sbpam.activedirectory.models.enums.activedirectorynameformat.md)|false|none|none|
|useGlobalCatalog|boolean|false|none|Gets or sets a value indicating if the name translations should be performed by a global catalog server.|
|domain|string¦null|false|none|FQDN of domain|
|domainController|string¦null|false|none|DomainController for this domain|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


