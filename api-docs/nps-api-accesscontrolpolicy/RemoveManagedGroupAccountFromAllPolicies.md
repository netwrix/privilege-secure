
## Remove user from all policies containing the managed account id.

<a id="opIdRemoveManagedGroupAccountFromAllPolicies"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/AccessControlPolicy/ManagedGroupAccount/{managedAccountId} \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell

$Login = @{
    Login = "User",
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

Invoke-RestMethod -Method DELETE -Url /api/v1/AccessControlPolicy/ManagedGroupAccount/{managedAccountId}
```

`DELETE /api/v1/AccessControlPolicy/ManagedGroupAccount/{managedAccountId}`

undefined

undefined

undefined

undefined

#### METHODEND Remove user from all policies containing the managed account id.

