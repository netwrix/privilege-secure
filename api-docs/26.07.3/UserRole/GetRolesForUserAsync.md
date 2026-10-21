
## Get the list of roles for the specified user Id (Auth roles: Admin)

<a id="opIdGetRolesForUserAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/UserRole/User/{userId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/UserRole/User/{userId} -Headers $Headers
```

`GET /api/v1/UserRole/User/{userId}`

<h3 id="get-the-list-of-roles-for-the-specified-user-id-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userId|path|string(uuid)|true|User to get roles for|
|Skip|query|integer(int32)|false|Start at this item (default: 0)|
|Take|query|integer(int32)|false|Return this number of items (default: 100)|
|OrderBy|query|string|false|Property name to order results by|
|OrderDescending|query|boolean|false|Use descending sort order (default: false)|
|FilterText|query|string|false|Filter by entries that contain this text. Properties match vary by endpoint.|
|FilterColumns|query|array[string]|false|Columns to include in filter|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "string",
      "roleName": "string",
      "isAssigned": true
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="get-the-list-of-roles-for-the-specified-user-id-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.UserRoleAssignmentDto]](../Models/sbpam.models.datatable_sbpam.models.userroleassignmentdto.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error getting Roles for User|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


