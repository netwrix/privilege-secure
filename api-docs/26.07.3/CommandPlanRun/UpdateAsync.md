
## Update command plan (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdUpdateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/CommandPlanRun/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "testState": "NotStarted",
  "startTimeUtc": "2019-08-24T14:15:22Z",
  "endTimeUtc": "2019-08-24T14:15:22Z",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "runData": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "commandPlanRunId": "f9c4a554-d218-4693-8172-a905ae6cf253",
      "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
      "computer": "string",
      "port": 0,
      "insecureAlwaysTrustRemoteCert": true,
      "trustedKey": "string",
      "substitutions": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
          "key": "string",
          "value": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        }
      ],
      "sensitiveData": [
        "string"
      ],
      "searchTags": [
        "string"
      ],
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
      "showPassword": true,
      "runResults": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
          "data": "string",
          "steps": "string",
          "definition": "string",
          "status": "string",
          "valid": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "showPassword": true
        }
      ]
    }
  ]
}
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/CommandPlanRun/{id}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/CommandPlanRun/{id}`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "testState": "NotStarted",
  "startTimeUtc": "2019-08-24T14:15:22Z",
  "endTimeUtc": "2019-08-24T14:15:22Z",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "runData": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "commandPlanRunId": "f9c4a554-d218-4693-8172-a905ae6cf253",
      "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
      "computer": "string",
      "port": 0,
      "insecureAlwaysTrustRemoteCert": true,
      "trustedKey": "string",
      "substitutions": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
          "key": "string",
          "value": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        }
      ],
      "sensitiveData": [
        "string"
      ],
      "searchTags": [
        "string"
      ],
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
      "showPassword": true,
      "runResults": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
          "data": "string",
          "steps": "string",
          "definition": "string",
          "status": "string",
          "valid": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "showPassword": true
        }
      ]
    }
  ]
}
```

<h3 id="update-command-plan-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.CommandPlanRun](../Models/sbpam.models.commandplanrun.md)|false|none|

> Example responses

> 400 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="update-command-plan-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|No Content|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


