
## Reconciles action queues orphaned in Running status: a step already ended Cancelled or
Failed, but nothing is actively working the queue and it was never driven to a terminal
status (internal service API, called periodically by the scheduler's watchdog). (Auth roles: App)

<a id="opIdCancelStalledActionQueuesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/ActionQueueAction/CancelStalled \
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
Invoke-RestMethod -Method DELETE -Url "$($Host)/api/v1/ActionQueueAction/CancelStalled -Headers $Headers
```

`DELETE /api/v1/ActionQueueAction/CancelStalled`

<h3 id="reconciles-action-queues-orphaned-in-running-status:-a-step-already-ended-cancelled-or
failed,-but-nothing-is-actively-working-the-queue-and-it-was-never-driven-to-a-terminal
status-(internal-service-api,-called-periodically-by-the-scheduler's-watchdog).-(auth-roles:-app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|staleMinutes|query|integer(int32)|false|How long a queue must have been untouched before it's considered stalled|

> Example responses

> 400 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="reconciles-action-queues-orphaned-in-running-status:-a-step-already-ended-cancelled-or
failed,-but-nothing-is-actively-working-the-queue-and-it-was-never-driven-to-a-terminal
status-(internal-service-api,-called-periodically-by-the-scheduler's-watchdog).-(auth-roles:-app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


