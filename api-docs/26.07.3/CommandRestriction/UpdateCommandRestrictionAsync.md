
## Update Command Restriction (Auth policies: MfaRequired; roles: Admin, Admin,App)

<a id="opIdUpdateCommandRestrictionAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/CommandRestriction \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "name": "Command Restriction 1",
  "emailRecipient": "user@example.com",
  "commandRestrictionSettings": [],
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/CommandRestriction" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/CommandRestriction`

> Body parameter

```json
{
  "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "name": "Command Restriction 1",
  "emailRecipient": "user@example.com",
  "commandRestrictionSettings": [],
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="update-command-restriction-(auth-policies:-mfarequired;-roles:-admin,-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.CommandRestriction](../Models/sbpam.models.commandrestriction.md)|false|Command Restriction|

> Example responses

> 200 Response

```json
{
  "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "name": "Command Restriction 1",
  "emailRecipient": "user@example.com",
  "commandRestrictionSettings": [],
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="update-command-restriction-(auth-policies:-mfarequired;-roles:-admin,-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.CommandRestriction](../Models/sbpam.models.commandrestriction.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


