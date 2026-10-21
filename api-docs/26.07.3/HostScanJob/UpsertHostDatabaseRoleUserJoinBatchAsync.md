
## Upserts a batch of database role user joins directly to host_database_local_user_join using the current scan session.
This table stores both DB-level user access (DatabaseRoleId=null) and role memberships (DatabaseRoleId set).
PowerShell should call BeginScan first to establish the scan session. (Auth roles: Admin,App)

<a id="opIdUpsertHostDatabaseRoleUserJoinBatchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/HostScanJob/UpsertDatabaseRoleUserJoinBatch/{hostId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
    "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "deleted": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
"@

$Host = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($Host)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebRequestSession $WebSession
$Token = Invoke-RestMethod -Url "$($Host)/sigin2fa" -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"} -WebRequestSession $WebSession

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/HostScanJob/UpsertDatabaseRoleUserJoinBatch/{hostId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/HostScanJob/UpsertDatabaseRoleUserJoinBatch/{hostId}`

> Body parameter

```json
[
  {
    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
    "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "deleted": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="upserts-a-batch-of-database-role-user-joins-directly-to-host_database_local_user_join-using-the-current-scan-session.
this-table-stores-both-db-level-user-access-(databaseroleid=null)-and-role-memberships-(databaseroleid-set).
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostId|path|string(uuid)|true|none|
|body|body|[SbPAM.ActiveDirectory.Models.HostDatabaseLocalUserJoin](../Models/sbpam.activedirectory.models.hostdatabaselocaluserjoin.md)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
    "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "deleted": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="upserts-a-batch-of-database-role-user-joins-directly-to-host_database_local_user_join-using-the-current-scan-session.
this-table-stores-both-db-level-user-access-(databaseroleid=null)-and-role-memberships-(databaseroleid-set).
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="upserts-a-batch-of-database-role-user-joins-directly-to-host_database_local_user_join-using-the-current-scan-session.
this-table-stores-both-db-level-user-access-(databaseroleid=null)-and-role-memberships-(databaseroleid-set).
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.ActiveDirectory.Models.HostDatabaseLocalUserJoin](../Models/sbpam.activedirectory.models.hostdatabaselocaluserjoin.md)]|false|none|[Represents a join between a host and a database, local user, and optionally a role.]|
|» hostId|string(uuid)|false|none|Host id|
|» hostUserId|string(uuid)|false|none|Host user Id|
|» databaseDbId|string(uuid)|false|none|Id of the database db - null for server level|
|» databaseRoleId|string(uuid)|false|none|Id of the database role - null if this isn't a role join|
|» lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a local user-database-role assignment was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|» deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


