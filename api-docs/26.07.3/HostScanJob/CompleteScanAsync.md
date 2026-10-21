
## Completes a host scan by copying scan_started_utc to last_scanned_utc
and soft-deleting users, groups, joins, features, services, and tasks not seen in the scan.
Also calculates user privileges and reschedules jobs.
PowerShell should call this AFTER all scan steps complete. (Auth roles: Admin,App)

<a id="opIdCompleteScanAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/HostScanJob/CompleteScan/{hostId}

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/HostScanJob/CompleteScan/{hostId} -Headers $Headers
```

`POST /api/v1/HostScanJob/CompleteScan/{hostId}`

<h3 id="completes-a-host-scan-by-copying-scan_started_utc-to-last_scanned_utc
and-soft-deleting-users,-groups,-joins,-features,-services,-and-tasks-not-seen-in-the-scan.
also-calculates-user-privileges-and-reschedules-jobs.
powershell-should-call-this-after-all-scan-steps-complete.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostId|path|string(uuid)|true|none|
|hostConnected|query|boolean|false|none|

<h3 id="completes-a-host-scan-by-copying-scan_started_utc-to-last_scanned_utc
and-soft-deleting-users,-groups,-joins,-features,-services,-and-tasks-not-seen-in-the-scan.
also-calculates-user-privileges-and-reschedules-jobs.
powershell-should-call-this-after-all-scan-steps-complete.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


