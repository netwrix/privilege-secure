
## Get the Credential Release post-session disable setting (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdGetCredentialReleasePostSessionDisableAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Credential/CredentialRelease/{credentialId}/PostSessionDisable \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Credential/CredentialRelease/{credentialId}/PostSessionDisable -Headers $Headers
```

`GET /api/v1/Credential/CredentialRelease/{credentialId}/PostSessionDisable`

<h3 id="get-the-credential-release-post-session-disable-setting-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credentialId|path|string(uuid)|true|Id of credential being released|

> Example responses

> 200 Response

```json
"Disable"
```

<h3 id="get-the-credential-release-post-session-disable-setting-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.PostSessionAction](../Models/sbpam.models.postsessionaction.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


