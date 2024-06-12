
## Remove multiple users/groups from NPS (Auth roles: Admin,App)

<a id="opIdDeleteMultipleAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/ManagedAccount/DeleteMultiple \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "entityType": "ManagedAccount",
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  }
]
"@

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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/ManagedAccount/DeleteMultiple" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/ManagedAccount/DeleteMultiple`

> Body parameter

<details><summary>JSON</summary>


```json
[
  {
    "entityType": "ManagedAccount",
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  }
]
```


</details>

<h3 id="remove-multiple-users/groups-from-nps-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|includeFailCount|query|boolean|false|Include or exclude the number of failed users/groups|
|body|body|[SbPAM.Models.ManagedAccountOrGroupId](../Models/sbpam.models.managedaccountorgroupid.md)|false|List of users/groups to add to NPS|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "item1": 0,
  "item2": 0
}
```


</details>

<h3 id="remove-multiple-users/groups-from-nps-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[System.TupleSystem.Int32,[System.Int32]](../Models/system.tuplesystem.int32,_system.int32.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error removing users/groups from NPS|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


