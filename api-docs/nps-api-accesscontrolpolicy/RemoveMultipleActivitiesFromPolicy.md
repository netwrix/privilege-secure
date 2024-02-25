
## Disassociate activity from a policy.

<a id="opIdRemoveMultipleActivitiesFromPolicy"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/AccessControlPolicy/{policyId}/Activity/Remove \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
$JsonBody = [
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Activity"
  }
];

$Login = @{
    Login = "User",
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

Invoke-RestMethod -Method PUT -Url /api/v1/AccessControlPolicy/{policyId}/Activity/Remove -ContentType application/json-patch+json -Body $JsonBody
```

`PUT /api/v1/AccessControlPolicy/{policyId}/Activity/Remove`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Activity"
  }
]
```

undefined

undefined

undefined

undefined

#### METHODEND Disassociate activity from a policy.

