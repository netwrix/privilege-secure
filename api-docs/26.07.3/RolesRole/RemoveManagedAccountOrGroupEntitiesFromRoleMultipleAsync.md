
## Remove managed account or group to role (Auth roles: Admin)

<a id="opIdRemoveManagedAccountOrGroupEntitiesFromRoleMultipleAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/RolesRole/{roleId}/ManagedAccountOrGroupEntity \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "ManagedAccount"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/RolesRole/{roleId}/ManagedAccountOrGroupEntity" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/RolesRole/{roleId}/ManagedAccountOrGroupEntity`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "ManagedAccount"
  }
]
```

<h3 id="remove-managed-account-or-group-to-role-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|roleId|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.ManagedAccountIdAndEntityType](../Models/sbpam.models.managedaccountidandentitytype.md)|false|none|

> Example responses

> 200 Response

```json
0
```

<h3 id="remove-managed-account-or-group-to-role-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|integer|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


