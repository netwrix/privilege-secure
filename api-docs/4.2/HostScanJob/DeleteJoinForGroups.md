
## Remove user/group joins by group id (Auth roles: Admin,App)

<a id="opIdDeleteJoinForGroups"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X DELETE /api/v1/HostScanJob/Users/Group/{groupId} \
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
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method DELETE -Url "$($NPSUrl)/api/v1/HostScanJob/Users/Group/{groupId} -Headers $Headers -ContentType "application/json"
```


</details>

`DELETE /api/v1/HostScanJob/Users/Group/{groupId}`

<h3 id="remove-user/group-joins-by-group-id-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|groupId|path|string(uuid)|true|none|

<h3 id="remove-user/group-joins-by-group-id-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


