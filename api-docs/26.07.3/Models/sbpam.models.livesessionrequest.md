
<h2 id="tocS_SbPAM.Models.LiveSessionRequest">SbPAM.Models.LiveSessionRequest</h2>

<a id="schemasbpam.models.livesessionrequest"></a>
<a id="schema_SbPAM.Models.LiveSessionRequest"></a>
<a id="tocSsbpam.models.livesessionrequest"></a>
<a id="tocssbpam.models.livesessionrequest"></a>

```json
{
  "id": "68b52dae-db25-4504-b0cb-e169d0eabeb4",
  "activitySessionIds": [
    "13d65e9a-6d12-46a8-a2fa-a9aa0453ff4c"
  ],
  "lockMessage": "Your session has been temporarily locked, please see a Netwrix Privilege Secure administrator for more information.",
  "lockTitle": "Netwrix Privilege Secure",
  "locked": true,
  "lockActivity": true,
  "lockResource": false,
  "lockUser": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique ID (not required)|
|activitySessionIds|[string]¦null|false|none|List of ActivitySession IDs to perform operation for|
|lockMessage|string¦null|false|none|Lock message|
|lockTitle|string¦null|false|none|Title for lock message dialog|
|locked|boolean|false|none|true if locked|
|lockActivity|boolean|false|none|Lock the activity|
|lockResource|boolean|false|none|Lock the resource|
|lockUser|boolean|false|none|Lock the user|


