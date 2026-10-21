
## Schedule immediate host scans for a batch of managed resources with the platform-detection-only
flag set. Each scan detects and persists the host platform/OS then stops, skipping the full
user/group enumeration. Resources where neither PlatformId nor Host.PlatformId is unspecified
anymore, or which lack a host or resolvable credential, are skipped. All schedulable resources
are scheduled in a single job. (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdSchedulePlatformDetectionScansAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/PlatformDetectionScan \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedResource/PlatformDetectionScan" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedResource/PlatformDetectionScan`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="schedule-immediate-host-scans-for-a-batch-of-managed-resources-with-the-platform-detection-only
flag-set.-each-scan-detects-and-persists-the-host-platform/os-then-stops,-skipping-the-full
user/group-enumeration.-resources-where-neither-platformid-nor-host.platformid-is-unspecified
anymore,-or-which-lack-a-host-or-resolvable-credential,-are-skipped.-all-schedulable-resources
are-scheduled-in-a-single-job.-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[string]|false|Managed resource ids to scan|

> Example responses

> 200 Response

```json
{
  "id": "9c711ab3-8fc1-4d66-88d4-08f85117f32e",
  "status": null,
  "statusDescription": "Running.",
  "hostScanHostStatus": []
}
```

<h3 id="schedule-immediate-host-scans-for-a-batch-of-managed-resources-with-the-platform-detection-only
flag-set.-each-scan-detects-and-persists-the-host-platform/os-then-stops,-skipping-the-full
user/group-enumeration.-resources-where-neither-platformid-nor-host.platformid-is-unspecified
anymore,-or-which-lack-a-host-or-resolvable-credential,-are-skipped.-all-schedulable-resources
are-scheduled-in-a-single-job.-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.HostScanJobStatus](../Models/sbpam.models.hostscanjobstatus.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|No ids supplied, or none were schedulable|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Caller is not an Administrator or App|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


