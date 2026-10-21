
## Search historical session metadata (Auth policies: MfaRequired; roles: Admin,AuditingAndReporting)

<a id="opIdSearchHistoricalAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReplaySession/Historical/Search

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReplaySession/Historical/Search -Headers $Headers
```

`GET /api/v1/ReplaySession/Historical/Search`

<h3 id="search-historical-session-metadata-(auth-policies:-mfarequired;-roles:-admin,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|searchFilter|query|string|false|none|
|startDate|query|string(date-time)|false|none|
|endDate|query|string(date-time)|false|none|
|key|query|undefined|false|none|

<h3 id="search-historical-session-metadata-(auth-policies:-mfarequired;-roles:-admin,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


