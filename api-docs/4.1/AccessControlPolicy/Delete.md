
## Delete access policy (Auth roles: Admin)

<a id="opIdDelete"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/AccessControlPolicy/{accessControlPolicyId} \
  -H 'Authorization: Bearer API_KEY'

```

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
Invoke-RestMethod -Method DELETE -Uri "$($NPSUrl)/api/v1/AccessControlPolicy/{accessControlPolicyId} -Headers $Headers -ContentType "application/json"
```

`DELETE /api/v1/AccessControlPolicy/{accessControlPolicyId}`

<h3 id="delete-access-policy-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessControlPolicyId|path|string(uuid)|true|Policy Id to delete|

<h3 id="delete-access-policy-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Accepted|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


