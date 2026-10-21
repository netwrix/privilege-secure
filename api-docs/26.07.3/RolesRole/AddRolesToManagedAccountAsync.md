
## Add multiple roles to a managed account (Auth roles: Admin)

<a id="opIdAddRolesToManagedAccountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/RolesRole/AddRolesToManagedAccount/{managedAccountId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/RolesRole/AddRolesToManagedAccount/{managedAccountId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/RolesRole/AddRolesToManagedAccount/{managedAccountId}`

> Body parameter

```json
[
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
]
```

<h3 id="add-multiple-roles-to-a-managed-account-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountId|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.RolesRole](../Models/sbpam.models.rolesrole.md)|false|none|

> Example responses

> 200 Response

```json
{}
```

<h3 id="add-multiple-roles-to-a-managed-account-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[System.ValueTupleSystem.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e],[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]](../Models/system.valuetuplesystem.int32, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_,_system.int32, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


