
## ChangeLocalUserPassword

<a id="opIdChangeLocalUserPassword"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedAccount/ChangeLocalUserPassword \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "username": "string",
  "passwordOld": "string",
  "passwordNew": "string"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedAccount/ChangeLocalUserPassword" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedAccount/ChangeLocalUserPassword`

> Body parameter

```json
{
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "username": "string",
  "passwordOld": "string",
  "passwordNew": "string"
}
```

<h3 id="changelocaluserpassword-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|forced|query|boolean|false|none|
|body|body|[SbPAM.Models.LocalUserPasswordChangeRequest](../Models/sbpam.models.localuserpasswordchangerequest.md)|false|none|

<h3 id="changelocaluserpassword-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


