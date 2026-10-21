
## Locks/Unlocks Activity Sessions (Auth policies: MfaRequired; roles: Admin,App,UserPlus)

<a id="opIdLockAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ActivitySession/lock \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "68b52dae-db25-4504-b0cb-e169d0eabeb4",
  "activitySessionIds": [
    "13d65e9a-6d12-46a8-a2fa-a9aa0453ff4c"
  ],
  "lockMessage": "Your session has been temporarily locked, please see a Netwrix Privilege Secure administrator for more information.",
  "lockTitle": "Netwrix Privilege Secure",
  "locked": true,
  "lockActivity": true,
  "lockResource": false,
  "lockUser": true
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ActivitySession/lock" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ActivitySession/lock`

> Body parameter

```json
{
  "id": "68b52dae-db25-4504-b0cb-e169d0eabeb4",
  "activitySessionIds": [
    "13d65e9a-6d12-46a8-a2fa-a9aa0453ff4c"
  ],
  "lockMessage": "Your session has been temporarily locked, please see a Netwrix Privilege Secure administrator for more information.",
  "lockTitle": "Netwrix Privilege Secure",
  "locked": true,
  "lockActivity": true,
  "lockResource": false,
  "lockUser": true
}
```

<h3 id="locks/unlocks-activity-sessions-(auth-policies:-mfarequired;-roles:-admin,app,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.LiveSessionRequest](../Models/sbpam.models.livesessionrequest.md)|false|LiveSessionRequest object for specifying lock criteria|

> Example responses

> 200 Response

```json
{
  "id": "68b52dae-db25-4504-b0cb-e169d0eabeb4",
  "activitySessionIds": [
    "13d65e9a-6d12-46a8-a2fa-a9aa0453ff4c"
  ],
  "lockMessage": "Your session has been temporarily locked, please see a Netwrix Privilege Secure administrator for more information.",
  "lockTitle": "Netwrix Privilege Secure",
  "locked": true,
  "lockActivity": true,
  "lockResource": false,
  "lockUser": true
}
```

<h3 id="locks/unlocks-activity-sessions-(auth-policies:-mfarequired;-roles:-admin,app,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.LiveSessionRequest](../Models/sbpam.models.livesessionrequest.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|See message for reason|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User does not have permission to lock sessions|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


