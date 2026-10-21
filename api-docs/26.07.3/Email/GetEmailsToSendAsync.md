
## Get email to send limited to 50 emails (Auth roles: Admin,App)

<a id="opIdGetEmailsToSendAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Email/ToSend \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Email/ToSend -Headers $Headers
```

`GET /api/v1/Email/ToSend`

<h3 id="get-email-to-send-limited-to-50-emails-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|serviceId|query|string(uuid)|false|Service fetching emails|

> Example responses

> 200 Response

```json
[
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
]
```

<h3 id="get-email-to-send-limited-to-50-emails-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-email-to-send-limited-to-50-emails-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.Email](../Models/sbpam.models.email.md)]|false|none|[The model represents an email message.]|
|» id|string(uuid)|false|none|Unique id and DB key for this email.|
|» expiresDateTimeUtc|string(date-time)¦null|false|none|When this email expires, after which it won't be sent.|
|» emailSettingsId|string(uuid)¦null|false|none|Id of email settings used for sending this email.|
|» emailSettings|[SbPAM.Models.EmailSettings](../Models/sbpam.models.emailsettings.md)|false|none|none|
|»» id|string(uuid)|false|none|none|
|»» name|string¦null|false|none|none|
|»» description|string¦null|false|none|none|
|»» sendNotification|boolean|false|none|none|
|»» useTls|boolean|false|none|none|
|»» useAuth|boolean|false|none|none|
|»» smtpHost|string¦null|false|none|none|
|»» smtpPort|integer(int32)¦null|false|none|none|
|»» fromAddress|string¦null|false|none|none|
|»» credentialId|string(uuid)¦null|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» subject|string¦null|false|none|Subject for this email.|
|» toAddress|string¦null|false|none|Destination email addresses, e.g.: user@whatever.com, ...|
|» htmlBody|string¦null|false|none|HTML body of this email.|
|» importance|[SbPAM.Models.ImportanceEnums](../Models/sbpam.models.importanceenums.md)(int32)|false|none|none|
|» priority|[SbPAM.Models.PriorityEnums](../Models/sbpam.models.priorityenums.md)(int32)|false|none|none|
|» wasSent|boolean|false|none|True if this email was sent.|
|» sentDateTimeUtc|string(date-time)¦null|false|none|When this email was sent.|
|» attachmentPath|string¦null|false|none|api endpoint to fetch attachment|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» retryCount|integer(int32)|false|none|Number of times sending this email has been attempted and failed.|
|» serviceId|string(uuid)¦null|false|none|ID of the service which claimed this email for sending.|

#### Enumerated Values

|Property|Value|
|---|---|
|importance|Low|
|importance|Normal|
|importance|High|
|priority|NonUrgent|
|priority|Normal|
|priority|Urgent|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


