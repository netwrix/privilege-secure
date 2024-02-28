
## Search for credentials in the given policy. (Auth roles: App,Admin,UserPlus)

<a id="opIdSearchCredentialsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchCredentials/{accessPolicyId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example

$Login = @{
    Login = "User"
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/SearchCredentials/{accessPolicyId} -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/SearchCredentials/{accessPolicyId}`

<h3 id="search-for-credentials-in-the-given-policy.-(auth-roles:-app,admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|AccessControlPolicy Id|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|entityType|query|[SbPAM.Models.CredentialOrHostUser](../Models/sbpam.models.credentialorhostuser.md#schemasbpam.models.credentialorhostuser)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Credential|
|entityType|CredentialGroup|
|entityType|HostUser|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "username": "string",
      "name": "string",
      "domain": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "os": "string",
      "activeSessionCount": 0,
      "entityType": "Credential"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-credentials-in-the-given-policy.-(auth-roles:-app,admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCredentialView]](../Models/sbpam.models.datatable[sbpam.models.credentialpolicycredentialview].md#schemasbpam.models.datatable[sbpam.models.credentialpolicycredentialview])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


