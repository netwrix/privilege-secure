
<h2 id="tocS_SbPAM.Models.HostScanHostStatus">SbPAM.Models.HostScanHostStatus</h2>

<a id="schemasbpam.models.hostscanhoststatus"></a>
<a id="schema_SbPAM.Models.HostScanHostStatus"></a>
<a id="tocSsbpam.models.hostscanhoststatus"></a>
<a id="tocssbpam.models.hostscanhoststatus"></a>

```json
{
  "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "name": "string",
  "dnsHostName": "string",
  "os": "string",
  "ipAddress": "string",
  "version": "string",
  "status": null,
  "statusDescription": "string",
  "failureReason": null
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|hostScanHostId|string(uuid)|false|none|none|
|hostId|string(uuid)¦null|false|none|none|
|name|string¦null|false|none|none|
|dnsHostName|string¦null|false|none|none|
|os|string¦null|false|none|none|
|ipAddress|string¦null|false|none|none|
|version|string¦null|false|none|none|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|statusDescription|string¦null|false|none|none|
|failureReason|[SbPAM.Constants.ActionConstants+ActionFailureReason](../Models/sbpam.constants.actionconstants+actionfailurereason.md)|false|none|none|


