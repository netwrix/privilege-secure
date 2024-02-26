
<h2 id="tocS_SbPAM.Models.HostScanJobStatus">SbPAM.Models.HostScanJobStatus</h2>

<a id="schemasbpam.models.hostscanjobstatus"></a>
<a id="schema_SbPAM.Models.HostScanJobStatus"></a>
<a id="tocSsbpam.models.hostscanjobstatus"></a>
<a id="tocssbpam.models.hostscanjobstatus"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "status": null,
  "statusDescription": "string",
  "hostScanHostStatus": [
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
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](#schemasbpam.constants.actionconstants+actionstatus)|false|none|none|
|statusDescription|string¦null|false|none|none|
|hostScanHostStatus|[[SbPAM.Models.HostScanHostStatus](#schemasbpam.models.hostscanhoststatus)]¦null|false|none|none|


