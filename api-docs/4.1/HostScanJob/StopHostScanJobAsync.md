
## Terminate a host scan job (Auth roles: Admin,App)

<a id="opIdStopHostScanJobAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/HostScanJob/Host/{hostScanHostId}/Stop \
  -H 'Authorization: Bearer API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/HostScanJob/Host/{hostScanHostId}/Stop -Headers $Headers
```

`GET /api/v1/HostScanJob/Host/{hostScanHostId}/Stop`

<h3 id="terminate-a-host-scan-job-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostScanHostId|path|string(uuid)|true|Host scan to terminate|
|hostConnected|query|boolean|false|True if the host was connected to when the scan terminated|

<h3 id="terminate-a-host-scan-job-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


