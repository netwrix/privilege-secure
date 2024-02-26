
## Delete access policy (Auth roles: Admin)

<a id="opIdDelete"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/AccessControlPolicy/{accessControlPolicyId} \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example

$Login = @{
    Login = "User"
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method DELETE -Url /api/v1/AccessControlPolicy/{accessControlPolicyId} -Headers $Headers
```

`DELETE /api/v1/AccessControlPolicy/{accessControlPolicyId}`

<h3 id="delete-access-policy-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessControlPolicyId|path|string(uuid)|true|none|

<h3 id="delete-access-policy-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


