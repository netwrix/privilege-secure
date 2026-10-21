
## Rotate Built-In Admin accounts for the specified Resource Group and Resources (Auth roles: Admin,App)

<a id="opIdRotateAccountsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedResourceGroup/{managedResourceGroupId}/RotateAccounts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "ids": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "all": true,
  "filterText": "string"
}
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedResourceGroup/{managedResourceGroupId}/RotateAccounts" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedResourceGroup/{managedResourceGroupId}/RotateAccounts`

> Body parameter

```json
{
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "ids": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "all": true,
  "filterText": "string"
}
```

<h3 id="rotate-built-in-admin-accounts-for-the-specified-resource-group-and-resources-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceGroupId|path|string(uuid)|true|Id of Managed Resource Group|
|body|body|[SbPAM.Models.MultiItemSelector](../Models/sbpam.models.multiitemselector.md)|false|Selected items or search criteria|

> Example responses

> 200 Response

```json
0
```

<h3 id="rotate-built-in-admin-accounts-for-the-specified-resource-group-and-resources-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|integer|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


