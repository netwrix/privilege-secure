
## Get all email settings collections. (Auth roles: Admin,App)

<a id="opIdGetAllEmailSettingsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Email/settings \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Email/settings -Headers $Headers
```

`GET /api/v1/Email/settings`

> Example responses

> 200 Response

```json
[
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
]
```

<h3 id="get-all-email-settings-collections.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-all-email-settings-collections.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.EmailSettings](../Models/sbpam.models.emailsettings.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» description|string¦null|false|none|none|
|» sendNotification|boolean|false|none|none|
|» useTls|boolean|false|none|none|
|» useAuth|boolean|false|none|none|
|» smtpHost|string¦null|false|none|none|
|» smtpPort|integer(int32)¦null|false|none|none|
|» fromAddress|string¦null|false|none|none|
|» credentialId|string(uuid)¦null|false|none|none|
|» nodeId|string(uuid)|false|none|none|
|» createdDateTimeUtc|string(date-time)|false|none|none|
|» modifiedDateTimeUtc|string(date-time)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


