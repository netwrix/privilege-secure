
## Endpoint for retrieving task information ready for review (Auth policies: MfaRequired; roles: Reviewer)

<a id="opIdSearchTaskRowsForReviewAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessCertificationTask/Rows/Review/{taskId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessCertificationTask/Rows/Review/{taskId} -Headers $Headers
```

`GET /api/v1/AccessCertificationTask/Rows/Review/{taskId}`

<h3 id="endpoint-for-retrieving-task-information-ready-for-review-(auth-policies:-mfarequired;-roles:-reviewer)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|taskId|path|string(uuid)|true|Id of task to retrieve|
|filterText|query|string|false|String to search using contains|
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
      "permissions": [
        "string"
      ],
      "status": "NotSet",
      "userName": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "activityName": "string",
      "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
      "resourceName": "string",
      "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
      "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
      "accessPolicyName": "string",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "credentialName": "string",
      "connectionProfile": "string",
      "lastAccessedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="endpoint-for-retrieving-task-information-ready-for-review-(auth-policies:-mfarequired;-roles:-reviewer)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.AccessCertRowTable]](../Models/sbpam.models.datatable_sbpam.models.accesscertrowtable.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


