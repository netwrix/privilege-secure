
<h2 id="tocS_SbPAM.Models.CredentialPasswordHistoryOptions">SbPAM.Models.CredentialPasswordHistoryOptions</h2>

<a id="schemasbpam.models.credentialpasswordhistoryoptions"></a>
<a id="schema_SbPAM.Models.CredentialPasswordHistoryOptions"></a>
<a id="tocSsbpam.models.credentialpasswordhistoryoptions"></a>
<a id="tocssbpam.models.credentialpasswordhistoryoptions"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "historicalPasswordLimit": 0,
  "daysOfPasswordRetention": 0,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique identifier for the object|
|historicalPasswordLimit|integer(int32)|false|none|The number of historical passwords to keep in the database.|
|daysOfPasswordRetention|integer(int32)|false|none|The number of days to retain a password in the database.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


