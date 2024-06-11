
## Get status for all host scan jobs. (Auth roles: Admin,App)

<a id="opIdGet"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/HostScanJob \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url "$($NPSUrl)/api/v1/HostScanJob -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/HostScanJob`

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "status": null,
    "statusDescription": "string",
    "hostScanHostStatus": [
      {
        "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
        "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
        "name": "string",
        "dnsHostName": "string",
        "os": "string",
        "ipAddress": "string",
        "version": "string",
        "status": null,
        "statusDescription": "string",
        "failureReason": null
      }
    ]
  }
]
```


</details>

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
|» id|string(uuid)|false|none|none|
|» status|any|false|none|none|
|» statusDescription|string¦null|false|none|none|
|» hostScanHostStatus|[[SbPAM.Models.HostScanHostStatus](../Models/sbpam.models.hostscanhoststatus.md)]¦null|false|none|none|
|»» hostScanHostId|string(uuid)|false|none|none|
|»» hostId|string(uuid)¦null|false|none|none|
|»» name|string¦null|false|none|none|
|»» dnsHostName|string¦null|false|none|none|
|»» os|string¦null|false|none|none|
|»» ipAddress|string¦null|false|none|none|
|»» version|string¦null|false|none|none|
|»» status|any|false|none|none|
|»» statusDescription|string¦null|false|none|none|
|»» failureReason|any|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


