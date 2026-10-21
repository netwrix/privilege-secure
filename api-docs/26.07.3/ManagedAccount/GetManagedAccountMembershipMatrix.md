
## Retrieves all group and nested group membership matrix for managed account (Auth roles: Admin)

<a id="opIdGetManagedAccountMembershipMatrix"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedAccount/GetManagedAccountMembershipMatrix \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedAccount/GetManagedAccountMembershipMatrix -Headers $Headers
```

`GET /api/v1/ManagedAccount/GetManagedAccountMembershipMatrix`

> Example responses

> 200 Response

```json
[
  {
    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
    "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
    "activeDirectoryGroupId": "178427bb-2036-4475-8b5c-2904ab4ca34e",
    "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9"
  }
]
```

<h3 id="retrieves-all-group-and-nested-group-membership-matrix-for-managed-account-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|HttpStatusCode.Forbidden|Unknown|User is not an Administrator|None|

<h3 id="retrieves-all-group-and-nested-group-membership-matrix-for-managed-account-(auth-roles:-admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ManagedAccountMembershipMatrix](../Models/sbpam.models.managedaccountmembershipmatrix.md)]|false|none|none|
|» managedAccountId|string(uuid)|false|none|none|
|» hostUserId|string(uuid)|false|none|none|
|» managedAccountGroupId|string(uuid)¦null|false|none|none|
|» activeDirectoryGroupId|string(uuid)¦null|false|none|none|
|» userAndGroupCollectionId|string(uuid)¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


