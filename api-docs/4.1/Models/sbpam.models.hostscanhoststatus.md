
<h2 id="tocS_SbPAM.Models.HostScanHostStatus">SbPAM.Models.HostScanHostStatus</h2>

<a id="schemasbpam.models.hostscanhoststatus"></a>
<a id="schema_SbPAM.Models.HostScanHostStatus"></a>
<a id="tocSsbpam.models.hostscanhoststatus"></a>
<a id="tocssbpam.models.hostscanhoststatus"></a>

```json
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

```

Status of host scan job

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|hostScanHostId|string(uuid)|false|none|Record for the host scan results|
|hostId|string(uuid)¦null|false|none|Unique identifier for host|
|name|string¦null|false|none|Name of host|
|dnsHostName|string¦null|false|none|DNS hostname.|
|os|string¦null|false|none|Name of OS on host.|
|ipAddress|string¦null|false|none|IP Address of host|
|version|string¦null|false|none|Version of OS on host.|
|status|[SbPAM.Constants.ActionConstants+ActionStatus](../Models/sbpam.constants.actionconstants+actionstatus.md)|false|none|none|
|statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|failureReason|[SbPAM.Constants.ActionConstants+ActionFailureReason](../Models/sbpam.constants.actionconstants+actionfailurereason.md)|false|none|none|


