
## Get all NPS users with 'Reviewer' role, searchable (Auth roles: Admin,Reviewer,App)

<a id="opIdReviewerSearch"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedAccount/Reviewer/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedAccount/Reviewer/Search -Headers $Headers
```

`GET /api/v1/ManagedAccount/Reviewer/Search`

<h3 id="get-all-nps-users-with-'reviewer'-role,-searchable-(auth-roles:-admin,reviewer,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterEntityType|query|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](../Models/sbpam.models.managedaccountviewentitytypeenum.md)|false|Entity type filter - user/group/application/collection/local user|
|filterText|query|string|false|Filter by text|
|orderBy|query|string|false|Sort by field|
|orderDescending|query|boolean|false|Sort descending/ascending|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 30)|
|candidates|query|boolean|false|True for candidate reviewers, false for current reviewers|

#### Enumerated Values

|Parameter|Value|
|---|---|
|filterEntityType|ManagedAccount|
|filterEntityType|ManagedAccountGroup|
|filterEntityType|Application|
|filterEntityType|Collection|
|filterEntityType|Local|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "email": "string",
      "samAccountName": "string",
      "domain": "string",
      "entityType": "ManagedAccount",
      "isReviewer": true
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="get-all-nps-users-with-'reviewer'-role,-searchable-(auth-roles:-admin,reviewer,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedAccountAndCollectionsView]](../Models/sbpam.models.datatable_sbpam.models.managedaccountandcollectionsview.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


