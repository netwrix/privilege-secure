
## Search for credentials not in the given policy. (Auth roles: Admin,UserPlus)

<a id="opIdSearchCredentialCandidatesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchCredentialCandidates/{accessPolicyId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessControlPolicy/SearchCredentialCandidates/{accessPolicyId} -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/SearchCredentialCandidates/{accessPolicyId}`

<h3 id="search-for-credentials-not-in-the-given-policy.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|AccessControlPolicy Id|
|filterText|query|string|false|String to search using contains|
|orderBy|query|string|false|Property name to order results by|
|orderDescending|query|boolean|false|Use descending sort order|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 30)|
|entityType|query|[SbPAM.Models.CredentialOrHostUser](../Models/sbpam.models.credentialorhostuser.md)|false|Credential, CredentialGroup, or HostUser|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Credential|
|entityType|CredentialGroup|
|entityType|HostUser|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "username": "string",
      "name": "string",
      "description": "string",
      "domain": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "os": "string",
      "activeSessionCount": 0,
      "entityType": "Credential",
      "vaultConnectorId": "da5bc90a-dbcd-442c-91be-be4204003524"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-credentials-not-in-the-given-policy.-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCandidateView]](../Models/sbpam.models.datatable_sbpam.models.credentialpolicycandidateview.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Access policy not defined on request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Admin or does not have access via Access Policy custom role|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


