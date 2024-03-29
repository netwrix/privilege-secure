
<h2 id="tocS_SbPAM.Models.HostScanJobStatus">SbPAM.Models.HostScanJobStatus</h2>

<a id="schemasbpam.models.hostscanjobstatus"></a>
<a id="schema_SbPAM.Models.HostScanJobStatus"></a>
<a id="tocSsbpam.models.hostscanjobstatus"></a>
<a id="tocssbpam.models.hostscanjobstatus"></a>

```json
{
  "id": "9c711ab3-8fc1-4d66-88d4-08f85117f32e",
  "status": null,
  "statusDescription": "Running.",
  "hostScanHostStatus": [
    {
      "hostScanHostId": "c448d5e8-8078-4d92-8dd3-ee29a6c12f9d",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "name": "string",
      "dnsHostName": "host.example.local",
      "os": "Windows Fake Edition",
      "ipAddress": "192.168.1.1",
      "version": "10.4.1.1",
      "status": null,
      "statusDescription": "Running",
      "failureReason": null
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this job.|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|hostScanHostStatus|[[SbPAM.Models.HostScanHostStatus](../Models/sbpam.models.hostscanhoststatus.md)]¦null|false|none|Status for host(s) scanned by this job.|


