
## Send email. (Auth roles: Admin,App)

<a id="opIdCreateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/Email \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "subject": "string",
  "htmlBody": "string",
  "toAddress": "string",
  "fromAddress": "string",
  "useTls": true,
  "useAuth": true,
  "smtpHost": "string",
  "smtpPort": 0,
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "importance": "Low",
  "priority": "NonUrgent"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/Email" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/Email`

> Body parameter

```json
{
  "subject": "string",
  "htmlBody": "string",
  "toAddress": "string",
  "fromAddress": "string",
  "useTls": true,
  "useAuth": true,
  "smtpHost": "string",
  "smtpPort": 0,
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "importance": "Low",
  "priority": "NonUrgent"
}
```

<h3 id="send-email.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.EmailRequest](../Models/sbpam.models.emailrequest.md)|false|none|

> Example responses

> 200 Response

```json
{
  "subject": "string",
  "htmlBody": "string",
  "toAddress": "string",
  "fromAddress": "string",
  "useTls": true,
  "useAuth": true,
  "smtpHost": "string",
  "smtpPort": 0,
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "importance": "Low",
  "priority": "NonUrgent"
}
```

<h3 id="send-email.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.EmailRequest](../Models/sbpam.models.emailrequest.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


