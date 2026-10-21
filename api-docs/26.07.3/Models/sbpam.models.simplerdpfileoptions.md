
<h2 id="tocS_SbPAM.Models.SimpleRdpFileOptions">SbPAM.Models.SimpleRdpFileOptions</h2>

<a id="schemasbpam.models.simplerdpfileoptions"></a>
<a id="schema_SbPAM.Models.SimpleRdpFileOptions"></a>
<a id="tocSsbpam.models.simplerdpfileoptions"></a>
<a id="tocssbpam.models.simplerdpfileoptions"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "defaultResolution": "string",
  "allowedResolutions": [
    "string"
  ],
  "multiMonitor": true,
  "smartSizing": true,
  "certificateThumbprint": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique Id|
|defaultResolution|string¦null|false|none|Default resolution for RDP sessions|
|allowedResolutions|[string]¦null|false|none|Allowed resolutions|
|multiMonitor|boolean|false|none|Enable multi-monitor for RDP connections|
|smartSizing|boolean|false|none|Enable smart sizing for RDP connections|
|certificateThumbprint|string¦null|false|none|Use the certificate for signing RDP files|
|nodeId|string(uuid)|false|none|Internal node id|
|createdDateTimeUtc|string(date-time)|false|none|Created date time UTC|
|modifiedDateTimeUtc|string(date-time)|false|none|Modified date time UTC|


