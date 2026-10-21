
## Set the list of roles for the specified group Id (Auth roles: Admin)

<a id="opIdAddRolesForGroupAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/UserRole/Group/{groupId}/Add \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "None"
]
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/UserRole/Group/{groupId}/Add" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/UserRole/Group/{groupId}/Add`

> Body parameter

```json
[
  "None"
]
```

<h3 id="set-the-list-of-roles-for-the-specified-group-id-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|groupId|path|string(uuid)|true|Group to set roles for|
|body|body|[SbPAM.Models.UserRoleEnums](../Models/sbpam.models.userroleenums.md)|false|Roles to set|

#### Enumerated Values

|Parameter|Value|
|---|---|
|body|None|
|body|Administrator|
|body|Reviewer|

> Example responses

> 200 Response

```json
[
  "None"
]
```

<h3 id="set-the-list-of-roles-for-the-specified-group-id-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error adding Roles for Group|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Group not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="set-the-list-of-roles-for-the-specified-group-id-(auth-roles:-admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.UserRoleEnums](../Models/sbpam.models.userroleenums.md)]|false|none|[User role enums<br>Leaving gaps in the enums so they can be ordered alphabetically when sorting]|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


