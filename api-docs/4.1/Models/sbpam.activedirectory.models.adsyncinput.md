
<h2 id="tocS_SbPAM.ActiveDirectory.Models.AdSyncInput">SbPAM.ActiveDirectory.Models.AdSyncInput</h2>

<a id="schemasbpam.activedirectory.models.adsyncinput"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.AdSyncInput"></a>
<a id="tocSsbpam.activedirectory.models.adsyncinput"></a>
<a id="tocssbpam.activedirectory.models.adsyncinput"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "specificGroups": null,
  "nameFormat": "DistinguishedName",
  "fullScan": false,
  "useGlobalCatalog": false,
  "domain": "string",
  "domainController": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|specificGroups|string¦null|false|none|Gets or sets the specific groups this job should scan.|
|nameFormat|[SbPAM.ActiveDirectory.Models.Enums.ActiveDirectoryNameFormat](../Models/sbpam.activedirectory.models.enums.activedirectorynameformat.md)|false|none|none|
|fullScan|boolean|false|none|Gets or sets a value indicating whether all object should be re-scanned or a scan should continue from the position of the last scan.|
|useGlobalCatalog|boolean|false|none|Gets or sets a value indicating if the name translations should be performed by a global catalog server.|
|domain|string¦null|false|none|none|
|domainController|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


