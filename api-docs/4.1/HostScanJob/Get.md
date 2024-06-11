
## Get status for all host scan jobs. (Auth roles: Admin,App)

<a id="opIdGet"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/HostScanJob \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/HostScanJob -Headers $Headers -ContentType "application/json"
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
]
```

<h3 id="get-status-for-all-host-scan-jobs.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|
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
|»» hostScanHostId|string(uuid)|false|none|Record for the host scan results|
|»» hostId|string(uuid)¦null|false|none|Unique identifier for host|
|»» name|string¦null|false|none|Name of host|
|»» dnsHostName|string¦null|false|none|DNS hostname.|
|»» os|string¦null|false|none|Name of OS on host.|
|»» ipAddress|string¦null|false|none|IP Address of host|
|»» version|string¦null|false|none|Version of OS on host.|
|»» status|any|false|none|none|
|»» statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|»» failureReason|any|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


