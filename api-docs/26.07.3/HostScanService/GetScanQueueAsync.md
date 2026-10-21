
##  (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdGetScanQueueAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/HostScanService/scanQueue \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/HostScanService/scanQueue -Headers $Headers
```

`GET /api/v1/HostScanService/scanQueue`

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostScanServiceId|query|string(uuid)|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|
|filterText|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|queuedFilter|query|[SbPAM.Models.ActionQueueStatusFilter](../Models/sbpam.models.actionqueuestatusfilter.md)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|queuedFilter|All|
|queuedFilter|QueuedItems|
|queuedFilter|ExcludeQueuedItems|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "actionName": "string",
      "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
      "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
      "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
      "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
      "startTimeUtc": "2019-08-24T14:15:22Z",
      "endTimeUtc": "2019-08-24T14:15:22Z",
      "status": null,
      "statusDescription": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "hostName": "string",
      "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
      "hostUserName": "string",
      "managedObjectId": "b0f84734-74e5-4ac3-82a9-67890062eff0",
      "managedObjectType": "HostUser",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "jobType": "None"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.ActionQueueActionInfoView]](../Models/sbpam.models.datatable_sbpam.models.actionqueueactioninfoview.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


