
##  (Auth roles: Admin,AuditingAndReporting)

<a id="opIdDownloadZipGet"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Log/downloadzip

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Log/downloadzip -Headers $Headers
```

`GET /api/v1/Log/downloadzip`

<h3 id="-(auth-roles:-admin,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|startDate|query|string(date-time)|false|none|
|endDate|query|string(date-time)|false|none|

<h3 id="-(auth-roles:-admin,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


