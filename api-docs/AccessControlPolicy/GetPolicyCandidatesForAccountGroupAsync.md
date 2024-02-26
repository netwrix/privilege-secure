
## Retrieve policy candidates by managed account id. (Auth roles: Admin)

<a id="opIdGetPolicyCandidatesForAccountGroupAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates \
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

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates
```

`GET /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates`

<h3 id="retrieve-policy-candidates-by-managed-account-id.-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountGroupId|query|string(uuid)|false|none|
|policyType|query|[SbPAM.Models.PolicyType](#schemasbpam.models.policytype)|false|none|
|filterText|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|policyType|Resource|
|policyType|Credential|

> Example responses

> 200 Response

```
{"data":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","connectionProfileName":"string","policyType":"Resource","policyTypeName":"string"}],"recordsTotal":0}
```

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "connectionProfileName": "string",
      "policyType": "Resource",
      "policyTypeName": "string"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="retrieve-policy-candidates-by-managed-account-id.-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.AccessControlPolicyDetails]](#schemasbpam.models.datatable[sbpam.models.accesscontrolpolicydetails])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


