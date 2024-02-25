
## Retrieve policies by managed account id.

<a id="opIdGetPoliciesForAccountAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId} \
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

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId}
```

`GET /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId}`

undefined

undefined

undefined

undefined

#### METHODEND Retrieve policies by managed account id.

