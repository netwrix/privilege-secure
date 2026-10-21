
## Gets the macros for a specific platform. (Auth policies: MfaRequired; roles: App,Admin)

<a id="opIdGetMacrosByPlatformIdAndCommandPlanIdAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/PlatformMacro \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/PlatformMacro -Headers $Headers
```

`GET /api/v1/PlatformMacro`

<h3 id="gets-the-macros-for-a-specific-platform.-(auth-policies:-mfarequired;-roles:-app,admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|platformId|query|string(uuid)|false|The unique identifier of the platform (from the query string).|
|commandPlanId|query|string(uuid)|false|The identifier of the Gennix command plan (from the query string).|

> Example responses

> 200 Response

```json
[
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
]
```

<h3 id="gets-the-macros-for-a-specific-platform.-(auth-policies:-mfarequired;-roles:-app,admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="gets-the-macros-for-a-specific-platform.-(auth-policies:-mfarequired;-roles:-app,admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.PlatformMacro](../Models/sbpam.models.platformmacro.md)]|false|none|[This model represents a macro for a platform.]|
|» id|string(uuid)|false|none|Unique identifier for this platform macro.|
|» platformId|string(uuid)|false|none|Platform ID associated with this macro.|
|» gennixCommandPlanId|string(uuid)¦null|false|none|Gennix Command Plan ID associated with this macro.|
|» name|string¦null|false|none|Name for this platform macro.|
|» type|[SbPAM.Constants.PlatformMacroType](../Models/sbpam.constants.platformmacrotype.md)(int32)|false|none|none|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.|

#### Enumerated Values

|Property|Value|
|---|---|
|type|Sudo|
|type|Username|
|type|Password|
|type|EnablePassword|
|type|ResourceId|
|type|Privilege|
|type|ServiceAccountId|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


