
## Change policy delete/disabled status.

<a id="opIdPutStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/AccessControlPolicy/{accessControlPolicyId}/Status \
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

Invoke-RestMethod -Method PUT -Url /api/v1/AccessControlPolicy/{accessControlPolicyId}/Status
```

`PUT /api/v1/AccessControlPolicy/{accessControlPolicyId}/Status`

undefined

undefined

undefined

undefined

#### METHODEND Change policy delete/disabled status.

