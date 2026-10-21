
## Determine if Auditor (UserPlus) can view a session recording (Auth policies: MfaRequired, MfaRequired; roles: UserPlus)

<a id="opIdGetAuditorCanViewSessionRecording"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReplaySession/AuditorCanView/{id} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReplaySession/AuditorCanView/{id} -Headers $Headers
```

`GET /api/v1/ReplaySession/AuditorCanView/{id}`

<h3 id="determine-if-auditor-(userplus)-can-view-a-session-recording-(auth-policies:-mfarequired,-mfarequired;-roles:-userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
true
```

<h3 id="determine-if-auditor-(userplus)-can-view-a-session-recording-(auth-policies:-mfarequired,-mfarequired;-roles:-userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|boolean|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


