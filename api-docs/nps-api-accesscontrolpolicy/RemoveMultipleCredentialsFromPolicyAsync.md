
## Disassociate credential from a policy.

<a id="opIdRemoveMultipleCredentialsFromPolicyAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/AccessControlPolicy/{policyId}/Credential/Remove \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
$JsonBody = [
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
  }
];

$Login = @{
    Login = "User",
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

Invoke-RestMethod -Method PUT -Url /api/v1/AccessControlPolicy/{policyId}/Credential/Remove -ContentType application/json-patch+json -Body $JsonBody
```

`PUT /api/v1/AccessControlPolicy/{policyId}/Credential/Remove`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
  }
]
```

undefined

undefined

undefined

undefined

#### METHODEND Disassociate credential from a policy.

