
## Locks/Unlocks Activity Sessions (Auth policies: MfaRequired; roles: Admin)

<a id="opIdLockAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X PUT /api/v1/ActivitySession/lock \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activitySessionIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "lockMessage": "string",
  "lockTitle": "string",
  "locked": true,
  "lockActivity": true,
  "lockResource": true,
  "lockUser": true
}
"@

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
Invoke-RestMethod -Method PUT -Uri "$($NPSUrl)/api/v1/ActivitySession/lock" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`PUT /api/v1/ActivitySession/lock`

> Body parameter

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activitySessionIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "lockMessage": "string",
  "lockTitle": "string",
  "locked": true,
  "lockActivity": true,
  "lockResource": true,
  "lockUser": true
}
```


</details>

<h3 id="locks/unlocks-activity-sessions-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.LiveSessionRequest](../Models/sbpam.models.livesessionrequest.md)|false|LiveSessionRequest object for specifying lock criteria|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activitySessionIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "lockMessage": "string",
  "lockTitle": "string",
  "locked": true,
  "lockActivity": true,
  "lockResource": true,
  "lockUser": true
}
```


</details>

<h3 id="locks/unlocks-activity-sessions-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.LiveSessionRequest](../Models/sbpam.models.livesessionrequest.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


