
## Create a new proxy Session (Auth policies: MfaRequired)

<a id="opIdCreateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ProxySession \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "type": "string"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ProxySession" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ProxySession`

> Body parameter

```json
{
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "type": "string"
}
```

<h3 id="create-a-new-proxy-session-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.WebAPI.Controllers.ProxySessionRequest](../Models/sbpam.webapi.controllers.proxysessionrequest.md)|false|ProxySessionRequest for creating a new Proxy Session|

> Example responses

> 201 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "record": true,
  "type": "string",
  "active": true,
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "key": "string",
  "locked": true,
  "lockedMessage": "string",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
  "sessionMetadata": {
    "id": "string",
    "nid": "string",
    "size": 0,
    "startTimestamp": "2019-08-24T14:15:22Z",
    "endTimestamp": "2019-08-24T14:15:22Z",
    "recordingStartTimestamp": "2019-08-24T14:15:22Z",
    "recordingEndTimestamp": "2019-08-24T14:15:22Z",
    "records": [
      {
        "type": null,
        "timestamp": 0,
        "entries": [
          "string"
        ]
      }
    ]
  }
}
```

<h3 id="create-a-new-proxy-session-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[SbPAM.Models.ProxySession](../Models/sbpam.models.proxysession.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


