
## Retrieve policies by managed account/managed resource id pair, which is what happens in a flip.

<a id="opIdFindPolicies"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId}/ManagedResource/{managedResourceId} \
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

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId}/ManagedResource/{managedResourceId}
```

`GET /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId}/ManagedResource/{managedResourceId}`

undefined

undefined

undefined

undefined

#### METHODEND Retrieve policies by managed account/managed resource id pair, which is what happens in a flip.

