
## Get available resources for access policy (Auth roles: Admin,UserPlus)

<a id="opIdGetResourceLookupForPolicyAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/Lookup/{policyId}/Resource \
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

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/Lookup/{policyId}/Resource
```

`GET /api/v1/AccessControlPolicy/Lookup/{policyId}/Resource`

<h3 id="get-available-resources-for-access-policy-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```
{"property1":"string","property2":"string"}
```

```json
{
  "property1": "string",
  "property2": "string"
}
```

<h3 id="get-available-resources-for-access-policy-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="get-available-resources-for-access-policy-(auth-roles:-admin,userplus)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» **additionalProperties**|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


