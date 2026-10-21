
## Update Log File Options (Auth roles: Admin,App)

<a id="opIdUpdateLogFileOptions"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/SystemSettings/LogFileOptions \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "name": "string",
  "minimumLogLevel": "string",
  "retainedFileCountLimit": 0,
  "fileSizeLimitBytes": 0,
  "outputTemplate": "string",
  "shared": true
}
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/SystemSettings/LogFileOptions" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/SystemSettings/LogFileOptions`

> Body parameter

```json
{
  "name": "string",
  "minimumLogLevel": "string",
  "retainedFileCountLimit": 0,
  "fileSizeLimitBytes": 0,
  "outputTemplate": "string",
  "shared": true
}
```

<h3 id="update-log-file-options-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.LogFileOptions](../Models/sbpam.models.logfileoptions.md)|false|Log File Options to create|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "minimumLogLevel": "string",
  "retainedFileCountLimit": 0,
  "fileSizeLimitBytes": 0,
  "outputTemplate": "string",
  "shared": true
}
```

<h3 id="update-log-file-options-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.LogFileOptions](../Models/sbpam.models.logfileoptions.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


