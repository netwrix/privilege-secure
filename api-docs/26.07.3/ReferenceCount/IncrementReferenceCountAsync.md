
## Increments the reference count for the specified user/resource/key/value combination. (Auth policies: MfaRequired; roles: App,Admin)

<a id="opIdIncrementReferenceCountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ReferenceCount/Increment/{userId}/{resourceId}/{key}/{value}

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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ReferenceCount/Increment/{userId}/{resourceId}/{key}/{value} -Headers $Headers
```

`PUT /api/v1/ReferenceCount/Increment/{userId}/{resourceId}/{key}/{value}`

<h3 id="increments-the-reference-count-for-the-specified-user/resource/key/value-combination.-(auth-policies:-mfarequired;-roles:-app,admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userId|path|string(uuid)|true|none|
|resourceId|path|string(uuid)|true|none|
|key|path|string|true|none|
|value|path|string|true|none|

<h3 id="increments-the-reference-count-for-the-specified-user/resource/key/value-combination.-(auth-policies:-mfarequired;-roles:-app,admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


