
## Retrieve policy candidates by managed account id. (Auth roles: Admin)

<a id="opIdGetPolicyCandidatesForAccountGroupAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates`

<h3 id="retrieve-policy-candidates-by-managed-account-id.-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountGroupId|query|string(uuid)|false|ManageAccountGroupId to retrieve policies for|
|policyType|query|[SbPAM.Models.PolicyType](../Models/sbpam.models.policytype.md)|false|Resource or Credential|
|filterText|query|string|false|Search policy names that contain this string|
|orderBy|query|string|false|Property name to order results by|
|orderDescending|query|boolean|false|Use descending sort order|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 30)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|policyType|Resource|
|policyType|Credential|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "connectionProfileName": "string",
      "policyType": "Resource",
      "policyTypeName": "string"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="retrieve-policy-candidates-by-managed-account-id.-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.AccessControlPolicyDetails]](../Models/sbpam.models.datatable_sbpam.models.accesscontrolpolicydetails.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|ManagedAccountGroupid is missing|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


