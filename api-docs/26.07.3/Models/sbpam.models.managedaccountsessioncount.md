
<h2 id="tocS_SbPAM.Models.ManagedAccountSessionCount">SbPAM.Models.ManagedAccountSessionCount</h2>

<a id="schemasbpam.models.managedaccountsessioncount"></a>
<a id="schema_SbPAM.Models.ManagedAccountSessionCount"></a>
<a id="tocSsbpam.models.managedaccountsessioncount"></a>
<a id="tocssbpam.models.managedaccountsessioncount"></a>

```json
{
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "managedAccountName": "string",
  "countSessions": 0,
  "sumDuration": 0,
  "avgDuration": 0,
  "minDuration": 0,
  "maxDuration": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|managedAccountId|string(uuid)|false|none|ManagedAccountId of user|
|managedAccountName|string¦null|false|none|User's account name|
|countSessions|integer(int32)|false|none|Total number of sessions|
|sumDuration|integer(int32)|false|none|Total duration of all sessions by user|
|avgDuration|integer(int32)|false|none|Average duration of all sessions by user|
|minDuration|integer(int32)|false|none|Duration of shortest session by user|
|maxDuration|integer(int32)|false|none|Duration of longest session by user|


