
## Get the ids of all scannable managed resources whose platform has not yet been determined on
EITHER side of the resource/host pair (PlatformId or Host.PlatformId is null or the
Unspecified/empty platform id, and having a resolvable credential). A resource is included if
either its own PlatformId or its host's PlatformId is still unresolved. Excludes resources with
a virtual placeholder Host (e.g. Entra/SQL/Oracle-type resources), which can never be
host-scanned. Returned as a single consistent snapshot; callers that want to process in batches
should chunk the result client-side. (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdGetUnspecifiedPlatformIdsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/UnspecifiedPlatformIds \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedResource/UnspecifiedPlatformIds -Headers $Headers
```

`GET /api/v1/ManagedResource/UnspecifiedPlatformIds`

> Example responses

> 200 Response

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="get-the-ids-of-all-scannable-managed-resources-whose-platform-has-not-yet-been-determined-on
either-side-of-the-resource/host-pair-(platformid-or-host.platformid-is-null-or-the
unspecified/empty-platform-id,-and-having-a-resolvable-credential).-a-resource-is-included-if
either-its-own-platformid-or-its-host's-platformid-is-still-unresolved.-excludes-resources-with
a-virtual-placeholder-host-(e.g.-entra/sql/oracle-type-resources),-which-can-never-be
host-scanned.-returned-as-a-single-consistent-snapshot;-callers-that-want-to-process-in-batches
should-chunk-the-result-client-side.-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Caller is not an Administrator or App|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-the-ids-of-all-scannable-managed-resources-whose-platform-has-not-yet-been-determined-on
either-side-of-the-resource/host-pair-(platformid-or-host.platformid-is-null-or-the
unspecified/empty-platform-id,-and-having-a-resolvable-credential).-a-resource-is-included-if
either-its-own-platformid-or-its-host's-platformid-is-still-unresolved.-excludes-resources-with
a-virtual-placeholder-host-(e.g.-entra/sql/oracle-type-resources),-which-can-never-be
host-scanned.-returned-as-a-single-consistent-snapshot;-callers-that-want-to-process-in-batches
should-chunk-the-result-client-side.-(auth-policies:-mfarequired;-roles:-admin,app)-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


