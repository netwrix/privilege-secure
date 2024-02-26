
## Remove secret vaults from access policy

<a id="opIdRemoveVaultFromPolicyMultipleAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/AccessControlPolicy/{policyId}/SecretVault \
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

Invoke-RestMethod -Method DELETE -Url /api/v1/AccessControlPolicy/{policyId}/SecretVault -ContentType application/json-patch+json -Body $JsonBody
```

`DELETE /api/v1/AccessControlPolicy/{policyId}/SecretVault`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="remove-secret-vaults-from-access-policy-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|none|
|body|body|array[string]|false|none|

> Example responses

> 200 Response

```
0
```

```json
0
```

<h3 id="remove-secret-vaults-from-access-policy-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|integer|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


