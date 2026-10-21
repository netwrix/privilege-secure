
## Endpoint for deleting a task
Can delete anything but Completed tasks (Auth policies: MfaRequired; roles: Admin)

<a id="opIdDeleteTaskAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/AccessCertificationTask/Tasks/Delete/{taskId}

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
Invoke-RestMethod -Method DELETE -Url "$($Host)/api/v1/AccessCertificationTask/Tasks/Delete/{taskId} -Headers $Headers
```

`DELETE /api/v1/AccessCertificationTask/Tasks/Delete/{taskId}`

<h3 id="endpoint-for-deleting-a-task
can-delete-anything-but-completed-tasks-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|taskId|path|string(uuid)|true|none|

<h3 id="endpoint-for-deleting-a-task
can-delete-anything-but-completed-tasks-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


