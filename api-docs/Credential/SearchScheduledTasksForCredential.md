
## Get discovered scheduled tasks for user id or credential id (Auth roles: Admin,UserPlus)

<a id="opIdSearchScheduledTasksForCredential"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Credential/HostScheduledTasks/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Credential/HostScheduledTasks/{id} -Headers $Headers
```

`GET /api/v1/Credential/HostScheduledTasks/{id}`

FilterText is a case-insensitive search using the following properties:
* ResourceName
* DnsHostName
* TaskName
* SamAccountName

<h3 id="get-discovered-scheduled-tasks-for-user-id-or-credential-id-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|Credential or user id|
|filterText|query|string|false|Use for case-insensitive contains search|
|byHostUser|query|boolean|false|Id is a user|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 30)|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "resourceName": "string",
      "samAccountName": "string",
      "dnsHostName": "string",
      "type": "string",
      "name": "string",
      "lastPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
      "nextPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
      "lastPasswordChangeStatus": null,
      "currentPasswordChangeStatus": null,
      "lastHostScanDateTimeUtc": "2019-08-24T14:15:22Z",
      "nextHostScanDateTimeUtc": "2019-08-24T14:15:22Z",
      "lastHostScanStatus": null
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="get-discovered-scheduled-tasks-for-user-id-or-credential-id-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.CredentialHostResult]](../Models/sbpam.models.datatable_sbpam.models.credentialhostresult.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error has occurred, see response body for details|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Unable to find a user or credential by id|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


