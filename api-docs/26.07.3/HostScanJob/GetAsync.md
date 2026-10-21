
## Get status for all host scan jobs. (Auth roles: Admin,App)

<a id="opIdGetAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/HostScanJob \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/HostScanJob -Headers $Headers
```

`GET /api/v1/HostScanJob`

> Example responses

> 200 Response

```json
[
  {
    "id": "9c711ab3-8fc1-4d66-88d4-08f85117f32e",
    "status": null,
    "statusDescription": "Running.",
    "hostScanHostStatus": []
  }
]
```

<h3 id="get-status-for-all-host-scan-jobs.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-status-for-all-host-scan-jobs.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.HostScanJobStatus](../Models/sbpam.models.hostscanjobstatus.md)]|false|none|none|
|» id|string(uuid)|false|none|Unique id and DB key for this job.|
|» status|any|false|none|none|
|» statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|» hostScanHostStatus|[[SbPAM.Models.HostScanHostStatus](../Models/sbpam.models.hostscanhoststatus.md)]¦null|false|none|Status for host(s) scanned by this job.|
|»» hostId|string(uuid)¦null|false|none|Unique identifier for host|
|»» name|string¦null|false|none|Name of host|
|»» dnsHostName|string¦null|false|none|DNS hostname.|
|»» os|string¦null|false|none|Name of OS on host.|
|»» ipAddress|string¦null|false|none|IP Address of host|
|»» version|string¦null|false|none|Version of OS on host.|
|»» status|any|false|none|none|
|»» statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|»» failureReason|any|false|none|none|
|»» errorMessage|string¦null|false|none|The most recent Error-level log message recorded for this scan attempt (e.g. the actual<br>PowerShell/Nmap exception text - connection refused, DNS failure, invalid credential), if any.<br>This is the real diagnostic detail behind SbPAM.Models.HostScanHostStatus.FailureReason, which is only a coarse<br>classification.|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


