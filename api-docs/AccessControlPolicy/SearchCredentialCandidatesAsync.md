
## Search for credentials not in the given policy. (Auth roles: Admin,UserPlus)

<a id="opIdSearchCredentialCandidatesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/SearchCredentialCandidates/{accessPolicyId} \
  -H 'Accept: text/plain' \
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
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/SearchCredentialCandidates/{accessPolicyId} -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/SearchCredentialCandidates/{accessPolicyId}`

<h3 id="search-for-credentials-not-in-the-given-policy.-(auth-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|accessPolicyId|path|string(uuid)|true|none|
|filterText|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|
|entityType|query|[SbPAM.Models.CredentialOrHostUser](../models/sbpam.models.credentialorhostuser.md#schemasbpam.models.credentialorhostuser)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|Credential|
|entityType|CredentialGroup|
|entityType|HostUser|

> Example responses

> 200 Response

```
{"data":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","username":"string","name":"string","description":"string","domain":"string","userId":"2c4a230c-5085-4924-a3e1-25fb4fc5965b","os":"string","activeSessionCount":0,"entityType":"Credential","vaultConnectorId":"da5bc90a-dbcd-442c-91be-be4204003524"}],"recordsTotal":0}
```

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "username": "string",
      "name": "string",
      "description": "string",
      "domain": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "os": "string",
      "activeSessionCount": 0,
      "entityType": "Credential",
      "vaultConnectorId": "da5bc90a-dbcd-442c-91be-be4204003524"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-credentials-not-in-the-given-policy.-(auth-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.CredentialPolicyCandidateView]](../models/sbpam.models.datatable[sbpam.models.credentialpolicycandidateview].md#schemasbpam.models.datatable[sbpam.models.credentialpolicycandidateview])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


