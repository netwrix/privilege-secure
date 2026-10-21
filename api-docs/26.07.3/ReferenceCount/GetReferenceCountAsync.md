
## Retrieves a reference count for the specified user/resource/key/value combination.
Optionally clamps the count to a specified maximum value. (Auth policies: MfaRequired; roles: App,Admin)

<a id="opIdGetReferenceCountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReferenceCount/{userId}/{resourceId}/{key}/{value}

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReferenceCount/{userId}/{resourceId}/{key}/{value} -Headers $Headers
```

`GET /api/v1/ReferenceCount/{userId}/{resourceId}/{key}/{value}`

<h3 id="retrieves-a-reference-count-for-the-specified-user/resource/key/value-combination.
optionally-clamps-the-count-to-a-specified-maximum-value.-(auth-policies:-mfarequired;-roles:-app,admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userId|path|string(uuid)|true|The user ID.|
|resourceId|path|string(uuid)|true|The resource ID.|
|key|path|string|true|The reference key.|
|value|path|string|true|The reference value.|
|setMax|query|integer(int32)|false|Optional maximum value to cap the count at.|

<h3 id="retrieves-a-reference-count-for-the-specified-user/resource/key/value-combination.
optionally-clamps-the-count-to-a-specified-maximum-value.-(auth-policies:-mfarequired;-roles:-app,admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


