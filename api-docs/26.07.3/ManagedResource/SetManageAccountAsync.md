
## Set the manage account setting for the list of given resources (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdSetManageAccountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedResource/ManageAccount/{managedResourceGroupId}/{manageAccount} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedResource/ManageAccount/{managedResourceGroupId}/{manageAccount}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedResource/ManageAccount/{managedResourceGroupId}/{manageAccount}`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="set-the-manage-account-setting-for-the-list-of-given-resources-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceGroupId|path|string(uuid)|true|Managed Resource Group Id|
|manageAccount|path|[SbPAM.Models.ManagedResourceManageAccountEnum](../Models/sbpam.models.managedresourcemanageaccountenum.md)|true|One of Unmanaged, Managed|
|body|body|array[string]|false|List of resource ids to update|

#### Enumerated Values

|Parameter|Value|
|---|---|
|manageAccount|Unmanaged|
|manageAccount|Managed|

> Example responses

> 400 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="set-the-manage-account-setting-for-the-list-of-given-resources-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error has occurred, see Web log for details|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator/App|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|ManagedResourceGroupId not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


