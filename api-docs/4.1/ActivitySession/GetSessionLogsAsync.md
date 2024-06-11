
## Gets logs for session by id (Auth policies: MfaRequired)

<a id="opIdGetSessionLogsAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/{sessionId}/Log \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ActivitySession/{sessionId}/Log -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ActivitySession/{sessionId}/Log`

<h3 id="gets-logs-for-session-by-id-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sessionId|path|string(uuid)|true|SessionId for getting Activity Session Logs|
|logLevel|query|undefined|false|Specific Log Level to target|
|skip|query|integer(int32)|false|How many records to skip|
|take|query|integer(int32)|false|How many records to display|
|orderDescending|query|boolean|false|Order the logs will be displayed|
|filterText|query|string|false|Search text to filter logs|
|startDate|query|string(date-time)|false|Start date of logs|
|endDate|query|string(date-time)|false|End date of logs|

> Example responses

> 200 Response

<details><summary>JSON</summary>


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


</details>

<h3 id="gets-logs-for-session-by-id-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.ActionLogCollection](../Models/sbpam.models.actionlogcollection.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


