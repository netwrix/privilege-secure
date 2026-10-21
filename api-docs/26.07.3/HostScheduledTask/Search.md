
##  (Auth roles: Admin,App)

<a id="opIdSearch"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/HostScheduledTask/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/HostScheduledTask/Search -Headers $Headers
```

`GET /api/v1/HostScheduledTask/Search`

<h3 id="-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterText|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|hostId|query|string(uuid)|false|none|
|filterManagedType|query|[SbPAM.Models.ManagedTypeEnum](../Models/sbpam.models.managedtypeenum.md)|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|filterManagedType|Unmanaged|
|filterManagedType|Managed|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "userName": "string",
      "name": "string",
      "taskPath": "string",
      "description": "string",
      "source": "string",
      "nextRunTimeUtc": "2019-08-24T14:15:22Z",
      "lastRunTimeUtc": "2019-08-24T14:15:22Z",
      "lastRunResult": 0,
      "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
      "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
      "serviceAccountName": "string",
      "serviceAccountType": "Configuration",
      "managedType": "Unmanaged"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.HostScheduledTaskView]](../Models/sbpam.models.datatable_sbpam.models.hostscheduledtaskview.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


