
## Add credentials to a policy (Auth roles: Admin)

<a id="opIdAddMultipleCredentialsToPolicyAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/AccessControlPolicy/{policyId}/Credential \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
  }
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
Invoke-RestMethod -Method PUT -Url /api/v1/AccessControlPolicy/{policyId}/Credential -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/AccessControlPolicy/{policyId}/Credential`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
  }
]
```

<h3 id="add-credentials-to-a-policy-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|Access control policy id|
|body|body|[SbPAM.Models.CredentialOrHostUserId](../Models/sbpam.models.credentialorhostuserid.md#schemasbpam.models.credentialorhostuserid)|false|none|

> Example responses

> 200 Response

```json
{
  "item1": 0,
  "item2": 0
}
```

<h3 id="add-credentials-to-a-policy-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[System.Tuple[System.Int32,[System.Int32]](../Models/system.tuple[system.int32,[system.int32].md#schemasystem.tuple[system.int32,[system.int32])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


