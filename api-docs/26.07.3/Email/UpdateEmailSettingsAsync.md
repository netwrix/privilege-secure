
## Update an email settings collection. (Auth roles: Admin,App)

<a id="opIdUpdateEmailSettingsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/Email/settings/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/Email/settings/{id}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/Email/settings/{id}`

> Body parameter

```json
{
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
}
```

<h3 id="update-an-email-settings-collection.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.EmailSettings](../Models/sbpam.models.emailsettings.md)|false|none|

> Example responses

> 200 Response

```json
{
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
}
```

<h3 id="update-an-email-settings-collection.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.EmailSettings](../Models/sbpam.models.emailsettings.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


