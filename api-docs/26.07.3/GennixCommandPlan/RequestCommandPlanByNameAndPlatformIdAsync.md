
## Request a gennix command plan by name and platform ID. (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdRequestCommandPlanByNameAndPlatformIdAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/GennixCommandPlan/ByNameAndPlatformId/{name}/{platformId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/GennixCommandPlan/ByNameAndPlatformId/{name}/{platformId} -Headers $Headers
```

`GET /api/v1/GennixCommandPlan/ByNameAndPlatformId/{name}/{platformId}`

<h3 id="request-a-gennix-command-plan-by-name-and-platform-id.-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|path|string|true|The name of the command plan.|
|platformId|path|string(uuid)|true|The unique identifier of the platform.|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "name": "string",
  "description": "string",
  "connectionType": "string",
  "permanent": true,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
  "commandSets": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "commandPlanId": "379448c2-4217-4597-8f65-2c958fd0f39c",
      "name": "string",
      "description": "string",
      "executionOrder": 0,
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
      "commands": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "commandSetId": "e8c8a103-3a07-4419-8d37-aa37616deb52",
          "commandToSend": "string",
          "commandScript": "string",
          "executionOrder": 0,
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
          "resultActions": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "commandId": "9e2dd63c-3478-489f-86d3-8c292a65a0aa",
              "expectedResult": "string",
              "expectedResultIsSuffix": true,
              "expectedResultIsPrefix": true,
              "isRegex": true,
              "isTermBreak": true,
              "isForceTermBreak": true,
              "isError": true,
              "continueOnError": true,
              "executionOrder": 0,
              "jumpToCommandId": "e6afe95c-7046-47ad-b239-73a4a0d32867",
              "jumpToCommandSetId": "50df31f2-0987-4271-a608-c721a9b005bc",
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            }
          ]
        }
      ]
    }
  ]
}
```

<h3 id="request-a-gennix-command-plan-by-name-and-platform-id.-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.GennixCommandPlan](../Models/sbpam.models.gennixcommandplan.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


