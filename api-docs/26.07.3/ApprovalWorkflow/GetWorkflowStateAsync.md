
## Get a workflow state for a session. (Auth roles: Admin,App)

<a id="opIdGetWorkflowStateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ApprovalWorkflow/{id}/State \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ApprovalWorkflow/{id}/State -Headers $Headers
```

`GET /api/v1/ApprovalWorkflow/{id}/State`

<h3 id="get-a-workflow-state-for-a-session.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|Id of the ApprovalWorkflow for state|
|sessionId|query|string(uuid)|false|Id of the session|

> Example responses

> 200 Response

```json
"Pending"
```

<h3 id="get-a-workflow-state-for-a-session.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ApprovalWorkflowApprovalState](../Models/sbpam.models.approvalworkflowapprovalstate.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


