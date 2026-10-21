
## Endpoint for retrieving a specific tasks users (Auth policies: MfaRequired; roles: Reviewer)

<a id="opIdSearchTaskUsersReviewAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessCertificationTask/Users/Review/{taskId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessCertificationTask/Users/Review/{taskId} -Headers $Headers
```

`GET /api/v1/AccessCertificationTask/Users/Review/{taskId}`

<h3 id="endpoint-for-retrieving-a-specific-tasks-users-(auth-policies:-mfarequired;-roles:-reviewer)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|taskId|path|string(uuid)|true|Id of task to retrieve|
|filterText|query|string|false|Filter text for searching|
|orderDescending|query|boolean|false|Use descending sort order|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 10)|
|orderBy|query|string|false|Property name to order results by|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "taskId": "e6e9d88a-9b63-468a-aec3-b7a11de27af8",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "userName": "string",
      "userEmail": "string",
      "groupName": "string",
      "samAccountName": "string",
      "type": "User"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="endpoint-for-retrieving-a-specific-tasks-users-(auth-policies:-mfarequired;-roles:-reviewer)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.AccessCertUserTable]](../Models/sbpam.models.datatable_sbpam.models.accesscertusertable.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


