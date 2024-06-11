
## Schedule a scan for host (Auth roles: Admin,App)

<a id="opIdByHostId"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/HostScanJob/ByHostId/{hostId} \
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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/HostScanJob/ByHostId/{hostId} -Headers $Headers -ContentType "application/json"
```

`POST /api/v1/HostScanJob/ByHostId/{hostId}`

<h3 id="schedule-a-scan-for-host-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostId|path|string(uuid)|true|Host id|

> Example responses

> 200 Response

```json
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
```

<h3 id="schedule-a-scan-for-host-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.HostScanJobStatus](../Models/sbpam.models.hostscanjobstatus.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error has occurred, see response text|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


