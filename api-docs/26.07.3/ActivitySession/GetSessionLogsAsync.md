
## Gets logs for session by id (Auth policies: MfaRequired)

<a id="opIdGetSessionLogsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/{sessionId}/Log \
  -H 'Accept: application/json'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActivitySession/{sessionId}/Log -Headers $Headers
```

`GET /api/v1/ActivitySession/{sessionId}/Log`

<h3 id="gets-logs-for-session-by-id-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sessionId|path|string(uuid)|true|SessionId for getting Activity Session Logs|
|logLevel|query|undefined|false|Specific Log Level to target|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 10)|
|orderDescending|query|boolean|false|Order the logs will be displayed|
|filterText|query|string|false|Search text to filter logs|
|startDate|query|string(date-time)|false|Start date of logs|
|endDate|query|string(date-time)|false|End date of logs|

> Example responses

> 200 Response

```json
{
  "lines": [
    {
      "statusString": "string",
      "status": null,
      "logMessage": "string",
      "lineNumber": 0,
      "timestamp": "2019-08-24T14:15:22Z",
      "version": "string"
    }
  ],
  "totalCount": 0,
  "version": "string"
}
```

<h3 id="gets-logs-for-session-by-id-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ActionLogCollection](../Models/sbpam.models.actionlogcollection.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


