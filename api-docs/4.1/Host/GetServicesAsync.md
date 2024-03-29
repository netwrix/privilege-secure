
## Get discovered services for host (Auth roles: Admin,App)

<a id="opIdGetServicesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Host/{id}/Services \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Host/{id}/Services -Headers $Headers
```

`GET /api/v1/Host/{id}/Services`

<h3 id="get-discovered-services-for-host-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|NPS Host Id|
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
      "hostId": "00000000-0000-0000-0000-000000000000",
      "host": null,
      "credentialId": null,
      "hostUserId": null,
      "id": "78cea662-2500-4ec0-ad1d-a3487b87eded",
      "name": "Example Service",
      "displayName": null,
      "description": null,
      "startType": 0,
      "userName": null,
      "binaryPathName": null,
      "dependentServices": null,
      "canPauseAndContinue": false,
      "canShutdown": false,
      "canStop": false,
      "serviceType": 0,
      "delayedStart": false,
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "0001-01-01T00:00:00Z",
      "modifiedDateTimeUtc": "0001-01-01T00:00:00Z",
      "discoveredDateTimeUtc": "0001-01-01T00:00:00Z"
    }
  ],
  "recordsTotal": 1
}
```

<h3 id="get-discovered-services-for-host-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.ActiveDirectory.Models.HostService]](../Models/sbpam.models.datatable_sbpam.activedirectory.models.hostservice.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

