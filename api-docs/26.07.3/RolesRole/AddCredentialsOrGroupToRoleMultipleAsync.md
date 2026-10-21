
## Add credential or group to role (Auth roles: Admin)

<a id="opIdAddCredentialsOrGroupToRoleMultipleAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/RolesRole/{roleId}/CredentialOrGroup \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/RolesRole/{roleId}/CredentialOrGroup" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/RolesRole/{roleId}/CredentialOrGroup`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
  }
]
```

<h3 id="add-credential-or-group-to-role-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|roleId|path|string(uuid)|true|Id of role to add entityId to|
|body|body|[SbPAM.Models.CredentialOrHostUserId](../Models/sbpam.models.credentialorhostuserid.md)|false|List of Ids to add|

> Example responses

> 200 Response

```json
0
```

<h3 id="add-credential-or-group-to-role-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|integer|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


