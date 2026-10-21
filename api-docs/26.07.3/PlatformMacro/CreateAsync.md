
## Create a macro for a platform and gennix command plan. (Auth policies: MfaRequired; roles: App,Admin)

<a id="opIdCreateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/PlatformMacro \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
  "name": "string",
  "type": "Sudo",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/PlatformMacro" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/PlatformMacro`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
  "name": "string",
  "type": "Sudo",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
}
```

<h3 id="create-a-macro-for-a-platform-and-gennix-command-plan.-(auth-policies:-mfarequired;-roles:-app,admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.PlatformMacro](../Models/sbpam.models.platformmacro.md)|false|The platform macro to create.|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
  "name": "string",
  "type": "Sudo",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
}
```

<h3 id="create-a-macro-for-a-platform-and-gennix-command-plan.-(auth-policies:-mfarequired;-roles:-app,admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.PlatformMacro](../Models/sbpam.models.platformmacro.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


