
## Get all sessions by category, if no category given, then return all. (Auth policies: MfaRequired, MfaRequired; roles: Admin)

<a id="opIdGetAllActivitySessionsByStatusAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ActivitySession" -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ActivitySession`

<h3 id="get-all-sessions-by-category,-if-no-category-given,-then-return-all.-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|status|query|string|false|status = "pending", "active", or "historical"|
|targetId|query|string(uuid)|false|Filter by host id|
|targetUserId|query|string(uuid)|false|Filter by host user id|

<h3 id="get-all-sessions-by-category,-if-no-category-given,-then-return-all.-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


