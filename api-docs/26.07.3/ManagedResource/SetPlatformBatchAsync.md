
## Set platform for batch of resources. Also cascades the PlatformId onto entities that cache
their own independent copy of it and would otherwise go stale (the resource's ActionJob rows,
and the Credential row(s) referenced by its ServiceAccountId / Host.CredentialId) -
see M:SbPAM.Actors.Interfaces.IManagedResourceActor.CascadePlatformIdAsync(SbPAM.Models.ManagedResource,System.Guid,System.Threading.CancellationToken). (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdSetPlatformBatchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedResource/Platform/Bulk \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedResource/Platform/Bulk" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedResource/Platform/Bulk`

> Body parameter

```json
{
  "resourceIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "property": "938535c8-2515-42f9-852e-1720db2e50c1"
}
```

<h3 id="set-platform-for-batch-of-resources.-also-cascades-the-platformid-onto-entities-that-cache
their-own-independent-copy-of-it-and-would-otherwise-go-stale-(the-resource's-actionjob-rows,
and-the-credential-row(s)-referenced-by-its-serviceaccountid-/-host.credentialid)--
see-m:sbpam.actors.interfaces.imanagedresourceactor.cascadeplatformidasync(sbpam.models.managedresource,system.guid,system.threading.cancellationtoken).-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.WebAPI.Controllers.ManagedResourceBatch[System.Guid, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]](../Models/sbpam.webapi.controllers.managedresourcebatch_system.guid, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_.md)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "status": 0,
    "message": "string"
  }
]
```

<h3 id="set-platform-for-batch-of-resources.-also-cascades-the-platformid-onto-entities-that-cache
their-own-independent-copy-of-it-and-would-otherwise-go-stale-(the-resource's-actionjob-rows,
and-the-credential-row(s)-referenced-by-its-serviceaccountid-/-host.credentialid)--
see-m:sbpam.actors.interfaces.imanagedresourceactor.cascadeplatformidasync(sbpam.models.managedresource,system.guid,system.threading.cancellationtoken).-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|An error has occurred, please see web log for more information|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="set-platform-for-batch-of-resources.-also-cascades-the-platformid-onto-entities-that-cache
their-own-independent-copy-of-it-and-would-otherwise-go-stale-(the-resource's-actionjob-rows,
and-the-credential-row(s)-referenced-by-its-serviceaccountid-/-host.credentialid)--
see-m:sbpam.actors.interfaces.imanagedresourceactor.cascadeplatformidasync(sbpam.models.managedresource,system.guid,system.threading.cancellationtoken).-(auth-policies:-mfarequired;-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.WebAPI.Controllers.BatchResponse](../Models/sbpam.webapi.controllers.batchresponse.md)]|false|none|[Batched response]|
|» id|string(uuid)|false|none|Id of record that this response corresponds to|
|» status|integer(int32)|false|none|HttpStatus of response|
|» message|string¦null|false|none|Human readable message|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


