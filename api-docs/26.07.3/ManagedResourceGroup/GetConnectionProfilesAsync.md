
## Get Connection Profiles from Access Policies that reference this Resource Group (Auth roles: Admin,App)

<a id="opIdGetConnectionProfilesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResourceGroup/{id}/ConnectionProfiles \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedResourceGroup/{id}/ConnectionProfiles -Headers $Headers
```

`GET /api/v1/ManagedResourceGroup/{id}/ConnectionProfiles`

<h3 id="get-connection-profiles-from-access-policies-that-reference-this-resource-group-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|Resource Group ID|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "description": "string"
  }
]
```

<h3 id="get-connection-profiles-from-access-policies-that-reference-this-resource-group-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-connection-profiles-from-access-policies-that-reference-this-resource-group-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ConnectionProfileInfo](../Models/sbpam.models.connectionprofileinfo.md)]|false|none|[Simple DTO for Connection Profile information]|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» description|string¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


