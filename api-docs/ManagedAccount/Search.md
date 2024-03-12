
## Search NPS users and groups (Auth roles: Admin,Reviewer,App)

<a id="opIdSearch"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedAccount/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedAccount/Search -Headers $Headers
```

`GET /api/v1/ManagedAccount/Search`

<h3 id="search-nps-users-and-groups-(auth-roles:-admin,reviewer,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterEntityType|query|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](../Models/sbpam.models.managedaccountviewentitytypeenum.md)|false|Entity type filter - user/group/application/collection/local user|
|filterText|query|string|false|Filter by text|
|domainConfigId|query|string(uuid)|false|Filter by domain|
|resourceId|query|string(uuid)|false|Filter by resource|
|orderBy|query|string|false|Sort by field|
|orderDescending|query|boolean|false|Sort descending/ascending|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 30)|

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
      "entityType": "ManagedAccount",
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
      "name": "string",
      "displayName": "string",
      "samAccountName": "string",
      "department": "string",
      "userPrincipalName": "string",
      "email": "string",
      "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
      "domainName": "string",
      "lastLogonTimestamp": "2019-08-24T14:15:22Z",
      "activeSessionCount": 0,
      "scheduledSessionCount": 0,
      "accessPolicyCount": 0,
      "certificateSerialNumber": "string",
      "locked": true,
      "lockoutEnd": "2019-08-24T14:15:22Z",
      "isReviewer": true
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-nps-users-and-groups-(auth-roles:-admin,reviewer,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedAccountView]](../Models/sbpam.models.datatable_sbpam.models.managedaccountview.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


