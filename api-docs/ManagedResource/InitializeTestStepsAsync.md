
## Initialize the resource test status with the list of steps to perform (Auth roles: Admin,App)

<a id="opIdInitializeTestStepsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/TestConnection/{resourceId}/{testId}/Initialize \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "string"
]
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedResource/TestConnection/{resourceId}/{testId}/Initialize" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedResource/TestConnection/{resourceId}/{testId}/Initialize`

> Body parameter

```json
[
  "string"
]
```

<h3 id="initialize-the-resource-test-status-with-the-list-of-steps-to-perform-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|resourceId|path|string(uuid)|true|Resource Id for the test|
|testId|path|string(uuid)|true|Id of the test instance|
|body|body|array[string]|false|List of step names|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "testResourceStatusId": "d44f170a-5b59-4773-9908-5b3939496cdd",
  "testResourceStatus": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
    "status": "Pending",
    "startedDateTimeUtc": "2019-08-24T14:15:22Z",
    "finishedDateTimeUtc": "2019-08-24T14:15:22Z",
    "errorMessage": "string",
    "steps": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "testResourceStatusId": "d44f170a-5b59-4773-9908-5b3939496cdd",
        "testResourceStatus": {},
        "stepName": "string",
        "index": 0,
        "status": "Pending",
        "errorMessage": "string",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ],
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "stepName": "string",
  "index": 0,
  "status": "Pending",
  "errorMessage": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}
```

<h3 id="initialize-the-resource-test-status-with-the-list-of-steps-to-perform-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.TestResourceStatusStep](../Models/sbpam.models.testresourcestatusstep.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error has occurred, see Web log for details|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


