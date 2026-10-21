
## Upserts a batch of database role group joins directly to host_database_role_group_join using the current scan session.
PowerShell should call BeginScan first to establish the scan session. (Auth roles: Admin,App)

<a id="opIdUpsertHostDatabaseRoleGroupJoinBatchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/HostScanJob/UpsertDatabaseRoleGroupJoinBatch/{hostId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/HostScanJob/UpsertDatabaseRoleGroupJoinBatch/{hostId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/HostScanJob/UpsertDatabaseRoleGroupJoinBatch/{hostId}`

> Body parameter

```json
[
  {
    "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
    "domainGroupId": "5bb05a64-2677-4d8e-898b-ccaf143c21e2",
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "deleted": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="upserts-a-batch-of-database-role-group-joins-directly-to-host_database_role_group_join-using-the-current-scan-session.
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostId|path|string(uuid)|true|none|
|body|body|[SbPAM.ActiveDirectory.Models.HostDatabaseRoleGroupJoin](../Models/sbpam.activedirectory.models.hostdatabaserolegroupjoin.md)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "databaseRoleId": "a29bf859-af80-4a74-a860-5308bd11aba9",
    "domainGroupId": "5bb05a64-2677-4d8e-898b-ccaf143c21e2",
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "deleted": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="upserts-a-batch-of-database-role-group-joins-directly-to-host_database_role_group_join-using-the-current-scan-session.
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="upserts-a-batch-of-database-role-group-joins-directly-to-host_database_role_group_join-using-the-current-scan-session.
powershell-should-call-beginscan-first-to-establish-the-scan-session.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.ActiveDirectory.Models.HostDatabaseRoleGroupJoin](../Models/sbpam.activedirectory.models.hostdatabaserolegroupjoin.md)]|false|none|[Represents a join between a database role and a domain group.]|
|» databaseRoleId|string(uuid)|false|none|Gets or sets the ID of the database role.|
|» domainGroupId|string(uuid)|false|none|Gets or sets the ID of the domain group.|
|» lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a role-group membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|» deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


