
##  (Auth roles: Admin,App,AuditingAndReporting)

<a id="opIdSearchActionQueue"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActionQueue/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActionQueue/Search -Headers $Headers
```

`GET /api/v1/ActionQueue/Search`

<h3 id="-(auth-roles:-admin,app,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterText|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
      "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
      "startTimeUtc": "2019-08-24T14:15:22Z",
      "endTimeUtc": "2019-08-24T14:15:22Z",
      "status": null,
      "statusDescription": "string",
      "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
      "jobName": "string",
      "nextStartDateTimeUtc": "2019-08-24T14:15:22Z",
      "recurrenceType": null,
      "recurrenceTypeString": "string",
      "jobType": "None",
      "jobTypeString": "string",
      "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
      "activityName": "string",
      "activitySessionStatus": null,
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "dnsHostName": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "samAccountname": "string",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "managedResourceName": "string",
      "manageAccountId": "0c0b7e07-4be0-4190-9270-b24e3c08cedf",
      "managedAccountName": "string",
      "actionGroupName": "string"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-roles:-admin,app,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.ActionQueueSearchResult]](../Models/sbpam.models.datatable_sbpam.models.actionqueuesearchresult.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


