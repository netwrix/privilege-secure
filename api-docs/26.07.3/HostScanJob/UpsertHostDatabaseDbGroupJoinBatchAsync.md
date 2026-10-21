
## Upserts a batch of database db group joins directly to host_database_db_group_join using the current scan session.
PowerShell should call BeginScan first to establish the scan session. (Auth roles: Admin,App)

<a id="opIdUpsertHostDatabaseDbGroupJoinBatchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/HostScanJob/UpsertDatabaseDbGroupJoinBatch/{hostId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
    "domainGroupId": "5bb05a64-2677-4d8e-898b-ccaf143c21e2",
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/HostScanJob/UpsertDatabaseDbGroupJoinBatch/{hostId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/HostScanJob/UpsertDatabaseDbGroupJoinBatch/{hostId}`

> Body parameter

```json
[
  {
    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
    "domainGroupId": "5bb05a64-2677-4d8e-898b-ccaf143c21e2",
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "deleted": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="upserts-a-batch-of-database-db-group-joins-directly-to-host_database_db_group_join-using-the-current-scan-session.
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostId|path|string(uuid)|true|none|
|body|body|[SbPAM.ActiveDirectory.Models.HostDatabaseDbGroupJoin](../Models/sbpam.activedirectory.models.hostdatabasedbgroupjoin.md)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
    "domainGroupId": "5bb05a64-2677-4d8e-898b-ccaf143c21e2",
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "deleted": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="upserts-a-batch-of-database-db-group-joins-directly-to-host_database_db_group_join-using-the-current-scan-session.
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="upserts-a-batch-of-database-db-group-joins-directly-to-host_database_db_group_join-using-the-current-scan-session.
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.ActiveDirectory.Models.HostDatabaseDbGroupJoin](../Models/sbpam.activedirectory.models.hostdatabasedbgroupjoin.md)]|false|none|[Represents a join between a host database and a domain group.]|
|» databaseDbId|string(uuid)|false|none|Gets or sets the ID of the database.|
|» domainGroupId|string(uuid)|false|none|Gets or sets the ID of the domain group.|
|» lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a database-group membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|» deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


