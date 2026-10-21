
## Get list of hosts found in OU (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdManageResourcesFoOuAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Host/OuManageResources \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Host/OuManageResources -Headers $Headers
```

`GET /api/v1/Host/OuManageResources`

<h3 id="get-list-of-hosts-found-in-ou-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|ou|query|string|false|none|
|includeChildOus|query|boolean|false|none|

> Example responses

> 200 Response

```json
[
  "string"
]
```

<h3 id="get-list-of-hosts-found-in-ou-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="get-list-of-hosts-found-in-ou-(auth-policies:-mfarequired;-roles:-admin,app)-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


