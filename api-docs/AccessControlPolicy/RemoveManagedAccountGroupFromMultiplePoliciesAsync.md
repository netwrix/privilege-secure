
## Remove managed account group from multiple policies. (Auth roles: Admin)

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
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
"@

$Login = @{
    Login = "User"
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method POST -Url /api/v1/AccessControlPolicy/RemoveManagedAccountGroupFromMultiplePolicies/{managedAccountGroupId} -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/AccessControlPolicy/RemoveManagedAccountGroupFromMultiplePolicies/{managedAccountGroupId}`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="remove-managed-account-group-from-multiple-policies.-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountGroupId|path|string(uuid)|true|none|
|body|body|array[string]|false|none|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="remove-managed-account-group-from-multiple-policies.-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|string|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


