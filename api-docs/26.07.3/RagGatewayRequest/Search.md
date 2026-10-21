
##  (Auth policies: MfaRequired; roles: Admin)

<a id="opIdSearch"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/RagGatewayRequest/Search

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/RagGatewayRequest/Search -Headers $Headers
```

`GET /api/v1/RagGatewayRequest/Search`

<h3 id="-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|serviceId|query|string(uuid)|false|none|
|filterText|query|string|false|none|
|httpMethod|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|

<h3 id="-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


