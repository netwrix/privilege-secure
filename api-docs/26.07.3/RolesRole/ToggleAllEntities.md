
## Toggle an 'All Entities' checkbox on role by id (Auth roles: Admin)

<a id="opIdToggleAllEntities"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/RolesRole/{roleId}/ToggleAllEntities

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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/RolesRole/{roleId}/ToggleAllEntities -Headers $Headers
```

`PUT /api/v1/RolesRole/{roleId}/ToggleAllEntities`

<h3 id="toggle-an-'all-entities'-checkbox-on-role-by-id-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|roleId|path|string(uuid)|true|none|
|rolesEntityType|query|[SbPAM.Models.RolesEntityType](../Models/sbpam.models.rolesentitytype.md)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|rolesEntityType|Credentials|
|rolesEntityType|Policies|
|rolesEntityType|Resources|
|rolesEntityType|Users|
|rolesEntityType|Activities|

<h3 id="toggle-an-'all-entities'-checkbox-on-role-by-id-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


