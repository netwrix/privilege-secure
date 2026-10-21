
<h2 id="tocS_SbPAM.ActiveDirectory.Models.TestConnectionStatus">SbPAM.ActiveDirectory.Models.TestConnectionStatus</h2>

<a id="schemasbpam.activedirectory.models.testconnectionstatus"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.TestConnectionStatus"></a>
<a id="tocSsbpam.activedirectory.models.testconnectionstatus"></a>
<a id="tocssbpam.activedirectory.models.testconnectionstatus"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "domainName": "string",
  "status": "None",
  "message": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

Test connection status

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Id of test connection status|
|domainName|string¦null|false|none|Domain name|
|status|[SbPAM.ActiveDirectory.Models.TestConnectionStatusType](../Models/sbpam.activedirectory.models.testconnectionstatustype.md)|false|none|Test connection status type|
|message|string¦null|false|none|Message|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


