
## Gets logs for session by id. (Auth roles: Admin,App,AuditingAndReporting)

<a id="opIdGetActionLogsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActionQueue/Action/{actionQueueActionId}/Log \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActionQueue/Action/{actionQueueActionId}/Log -Headers $Headers
```

`GET /api/v1/ActionQueue/Action/{actionQueueActionId}/Log`

<h3 id="gets-logs-for-session-by-id.-(auth-roles:-admin,app,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|actionQueueActionId|path|string(uuid)|true|none|
|logLevel|query|undefined|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|
|orderDescending|query|boolean|false|none|
|filterText|query|string|false|none|

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

<h3 id="gets-logs-for-session-by-id.-(auth-roles:-admin,app,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ActionLogCollection](../Models/sbpam.models.actionlogcollection.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


