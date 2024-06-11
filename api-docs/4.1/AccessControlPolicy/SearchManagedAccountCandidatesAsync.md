
## Search for users and groups that are not a part of the policy. (Auth policies: MfaRequired; roles: Admin,UserPlus)

<a id="opIdSearchManagedAccountCandidatesAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchManagedAccountCandidates/{accessPolicyId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/AccessControlPolicy/SearchManagedAccountCandidates/{accessPolicyId} -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/AccessControlPolicy/SearchManagedAccountCandidates/{accessPolicyId}`

<h3 id="search-for-users-and-groups-that-are-not-a-part-of-the-policy.-(auth-policies:-mfarequired;-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|AccessControlPolicy Id|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|entityType|query|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](../Models/sbpam.models.managedaccountviewentitytypeenum.md)|false|ManagedAccount, ManagedAccountGroup, Application, Collection, or Local|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|ManagedAccount|
|entityType|ManagedAccountGroup|
|entityType|Application|
|entityType|Collection|
|entityType|Local|

> Example responses

> 200 Response

<details><summary>JSON</summary>


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


</details>

<h3 id="search-for-users-and-groups-that-are-not-a-part-of-the-policy.-(auth-policies:-mfarequired;-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedAccountView]](../Models/sbpam.models.datatable_sbpam.models.managedaccountview.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Access policy not defined on request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Admin or does not have access via Access Policy custom role|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


