
## End Live Proxy Session by replay session id (Auth policies: MfaRequired, MfaRequired; roles: Admin,UserPlus,AuditingAndReporting)

<a id="opIdTerminateSessionAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/ReplaySession/live/{sessionId}/terminate

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
Invoke-RestMethod -Method DELETE -Url "$($Host)/api/v1/ReplaySession/live/{sessionId}/terminate -Headers $Headers
```

`DELETE /api/v1/ReplaySession/live/{sessionId}/terminate`

<h3 id="end-live-proxy-session-by-replay-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sessionId|path|string(uuid)|true|none|

<h3 id="end-live-proxy-session-by-replay-session-id-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


