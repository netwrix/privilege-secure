
## Get session metadata (Auth policies: MfaRequired; roles: Admin,UserPlus,AuditingAndReporting)

<a id="opIdGetMetadataAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReplaySession/Metadata/{proxySessionId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReplaySession/Metadata/{proxySessionId} -Headers $Headers
```

`GET /api/v1/ReplaySession/Metadata/{proxySessionId}`

<h3 id="get-session-metadata-(auth-policies:-mfarequired;-roles:-admin,userplus,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|proxySessionId|path|string(uuid)|true|none|
|searchFilter|query|string|false|none|
|startDate|query|string(date-time)|false|none|
|endDate|query|string(date-time)|false|none|
|key|query|undefined|false|none|

> Example responses

> 200 Response

```json
{
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
```

<h3 id="get-session-metadata-(auth-policies:-mfarequired;-roles:-admin,userplus,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ReplayMetadata](../Models/sbpam.models.replaymetadata.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


