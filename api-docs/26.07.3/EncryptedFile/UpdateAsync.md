
## Update encrypted file data (Auth roles: Admin,App)

<a id="opIdUpdateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/EncryptedFile/{id} \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
  "secretVaultName": "string",
  "name": "string",
  "size": 0,
  "contentType": "string",
  "content": "string",
  "checksum": "string",
  "description": "string",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/EncryptedFile/{id}" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/EncryptedFile/{id}`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
  "secretVaultName": "string",
  "name": "string",
  "size": 0,
  "contentType": "string",
  "content": "string",
  "checksum": "string",
  "description": "string",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}
```

<h3 id="update-encrypted-file-data-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.EncryptedFile](../Models/sbpam.models.encryptedfile.md)|false|none|

> Example responses

> 400 Response

```
{"type":"string","title":"string","status":0,"detail":"string","instance":"string","property1":null,"property2":null}
```

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="update-encrypted-file-data-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|No Content|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


