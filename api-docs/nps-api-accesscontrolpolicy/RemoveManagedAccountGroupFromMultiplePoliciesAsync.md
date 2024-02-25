
## Remove managed account group from multiple policies.

<a id="opIdRemoveManagedAccountGroupFromMultiplePoliciesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/AccessControlPolicy/RemoveManagedAccountGroupFromMultiplePolicies/{managedAccountGroupId} \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
$JsonBody = [
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
];

$Login = @{
    Login = "User",
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

Invoke-RestMethod -Method POST -Url /api/v1/AccessControlPolicy/RemoveManagedAccountGroupFromMultiplePolicies/{managedAccountGroupId} -ContentType application/json-patch+json -Body $JsonBody
```

`POST /api/v1/AccessControlPolicy/RemoveManagedAccountGroupFromMultiplePolicies/{managedAccountGroupId}`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

undefined

undefined

undefined

undefined

#### METHODEND Remove managed account group from multiple policies.

