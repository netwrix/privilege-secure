
## Get permissions for role (Auth roles: Admin)

<a id="opIdGetRolePermissionsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/RolesRole/{roleId}/Permission \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/RolesRole/{roleId}/Permission -Headers $Headers
```

`GET /api/v1/RolesRole/{roleId}/Permission`

<h3 id="get-permissions-for-role-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|roleId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "description": "string",
    "permissionId": "d5850203-7a23-4b4d-8f1b-99d510b781d3",
    "permissionName": "string",
    "permissionDescription": "string",
    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
    "groupName": "string",
    "groupDescription": "string"
  }
]
```

<h3 id="get-permissions-for-role-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="get-permissions-for-role-(auth-roles:-admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.RolesRolePermissionView](../Models/sbpam.models.rolesrolepermissionview.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» description|string¦null|false|none|none|
|» permissionId|string(uuid)|false|none|none|
|» permissionName|string¦null|false|none|none|
|» permissionDescription|string¦null|false|none|none|
|» groupId|string(uuid)|false|none|none|
|» groupName|string¦null|false|none|none|
|» groupDescription|string¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


