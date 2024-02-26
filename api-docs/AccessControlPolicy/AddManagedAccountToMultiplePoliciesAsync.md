
## Add managed account to multiple policies.

<a id="opIdAddManagedAccountToMultiplePoliciesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/AccessControlPolicy/AddManagedAccountToMultiplePolicies/{managedAccountId} \
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

Invoke-RestMethod -Method POST -Url /api/v1/AccessControlPolicy/AddManagedAccountToMultiplePolicies/{managedAccountId} -ContentType application/json-patch+json -Body $JsonBody
```

`POST /api/v1/AccessControlPolicy/AddManagedAccountToMultiplePolicies/{managedAccountId}`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="add-managed-account-to-multiple-policies.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountId|path|string(uuid)|true|none|
|body|body|array[string]|false|none|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="add-managed-account-to-multiple-policies.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|string|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


