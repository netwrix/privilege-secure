
## Get all or unsent/unexpired emails. (Auth roles: Admin,App)

<a id="opIdGetAllAsTableAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Email/AsTable \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Email/AsTable -Headers $Headers
```

`GET /api/v1/Email/AsTable`

<h3 id="get-all-or-unsent/unexpired-emails.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sortColumn|query|string|false|Column to sort|
|sortDir|query|string|false|Direction to sort|
|filterText|query|string|false|Search text to filter rows|
|skip|query|integer(int32)|false|How many rows to skip|
|take|query|integer(int32)|false|How many rows to display|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "expiresDateTimeUtc": "2019-08-24T14:15:22Z",
      "emailSettingsId": "f97b605c-a258-4007-967b-14f8a52c230d",
      "emailSettings": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "description": "string",
        "sendNotification": true,
        "useTls": true,
        "useAuth": true,
        "smtpHost": "string",
        "smtpPort": 0,
        "fromAddress": "string",
        "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "subject": "string",
      "toAddress": "string",
      "htmlBody": "string",
      "importance": "Low",
      "priority": "NonUrgent",
      "wasSent": true,
      "sentDateTimeUtc": "2019-08-24T14:15:22Z",
      "attachmentPath": "string",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
      "retryCount": 0,
      "serviceId": "8f8bb40f-b96b-40fe-9064-5031fbe483f9"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="get-all-or-unsent/unexpired-emails.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.Email]](../Models/sbpam.models.datatable_sbpam.models.email.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


