
## Search for resources for the given policy id. (Auth roles: Admin,UserPlus)

<a id="opIdSearchResourcesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchResources/{accessPolicyId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessControlPolicy/SearchResources/{accessPolicyId} -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/SearchResources/{accessPolicyId}`

<h3 id="search-for-resources-for-the-given-policy-id.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|AccessControlPolicy Id|
|Skip|query|integer(int32)|false|Start at this item (default: 0)|
|Take|query|integer(int32)|false|Return this number of items (default: 100)|
|OrderBy|query|string|false|Property name to order results by|
|OrderDescending|query|boolean|false|Use descending sort order (default: false)|
|FilterText|query|string|false|Filter by entries that contain this text. Properties match vary by endpoint.|
|FilterColumns|query|array[string]|false|Columns to include in filter|
|entityType|query|[SbPAM.Models.ManagedResourceAndGroupEntityType](../Models/sbpam.models.managedresourceandgroupentitytype.md)|false|Resource, ResourceGroup, or SecretVault|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Resource|
|entityType|ResourceGroup|
|entityType|SecretVault|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
      "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
      "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
      "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
      "dnsHostName": "string",
      "activeSessionCount": 0,
      "os": "string",
      "entityType": "Resource"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-resources-for-the-given-policy-id.-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceAndGroupView]](../Models/sbpam.models.datatable_sbpam.models.managedresourceandgroupview.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Access policy not defined on request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Admin or does not have access via Access Policy custom role|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


