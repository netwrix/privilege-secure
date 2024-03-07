
## Reset the password for a Local user (Auth roles: Admin)

<a id="opIdResetLocalUserPasswordAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedAccount/ResetLocalUserPassword/{managedAccountId} \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain' \
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedAccount/ResetLocalUserPassword/{managedAccountId}" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedAccount/ResetLocalUserPassword/{managedAccountId}`

> Body parameter

```json
{
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "username": "string",
  "passwordOld": "string",
  "passwordNew": "string"
}
```

<h3 id="reset-the-password-for-a-local-user-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountId|path|string(uuid)|true|Local user|
|body|body|[SbPAM.Models.LocalUserPasswordChangeRequest](../Models/sbpam.models.localuserpasswordchangerequest.md)|false|Password reset information|

> Example responses

> 400 Response

```
{"type":"string","title":"string","status":0,"detail":"string","instance":"string","property1":null,"property2":null}
```

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="reset-the-password-for-a-local-user-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error resetting password|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Invalid Local user|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


