
## Set service account for batch of resources (Auth roles: Admin,App)

<a id="opIdSetServiceAccountBatchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedResource/ServiceAccount/Bulk \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "resourceIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "property": "938535c8-2515-42f9-852e-1720db2e50c1"
}
"@

$Host = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($Host)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebRequestSession $WebSession
$Token = Invoke-RestMethod -Url "$($Host)/sigin2fa" -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"} -WebRequestSession $WebSession

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedResource/ServiceAccount/Bulk" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedResource/ServiceAccount/Bulk`

> Body parameter

```json
{
  "resourceIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "property": "938535c8-2515-42f9-852e-1720db2e50c1"
}
```

<h3 id="set-service-account-for-batch-of-resources-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.WebAPI.Controllers.ManagedResourceBatch[System.Guid]](../Models/sbpam.webapi.controllers.managedresourcebatch[system.guid].md)|false|none|

> Example responses

> 200 Response

```
[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","status":0,"message":"string"}]
```

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "status": 0,
    "message": "string"
  }
]
```

<h3 id="set-service-account-for-batch-of-resources-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="set-service-account-for-batch-of-resources-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.WebAPI.Controllers.BatchResponse](../Models/sbpam.webapi.controllers.batchresponse.md)]|false|none|[Batched response]|
|» id|string(uuid)|false|none|Id of record that this response corresponds to|
|» status|integer(int32)|false|none|HttpStatus of response|
|» message|string¦null|false|none|Human readable message|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


