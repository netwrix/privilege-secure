
## Find all roles for specific managed account group (Auth roles: Admin)

<a id="opIdSearchRolesCandidatesForManagedAccountGroupAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/RolesRole/SearchRolesCandidatesForManagedAccountGroup/{managedAccountGroupId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/RolesRole/SearchRolesCandidatesForManagedAccountGroup/{managedAccountGroupId} -Headers $Headers
```

`GET /api/v1/RolesRole/SearchRolesCandidatesForManagedAccountGroup/{managedAccountGroupId}`

<h3 id="find-all-roles-for-specific-managed-account-group-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountGroupId|path|string(uuid)|true|none|
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
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "roleTarget": "AccessPolicies",
      "isDeleted": true,
      "builtInRole": true,
      "allActivities": true,
      "allCredentials": true,
      "allPolicies": true,
      "allResources": true,
      "allUsers": true,
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="find-all-roles-for-specific-managed-account-group-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.RolesRole]](../Models/sbpam.models.datatable_sbpam.models.rolesrole.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


