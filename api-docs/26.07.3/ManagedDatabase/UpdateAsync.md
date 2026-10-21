
##  (Auth roles: Admin,App)

<a id="opIdUpdateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedDatabase/Update/{databaseId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
  "ipAddress": "string",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "virtualHostId": "bc1c2187-fc2b-47af-80fd-f5832bdcfcd1",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
  "name": "string",
  "server": "string",
  "port": 0,
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "type": "PostgreSQL",
  "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
  "integratedSecurity": true,
  "trustServerCertificate": true,
  "encrypted": true
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedDatabase/Update/{databaseId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedDatabase/Update/{databaseId}`

> Body parameter

```json
{
  "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
  "ipAddress": "string",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "virtualHostId": "bc1c2187-fc2b-47af-80fd-f5832bdcfcd1",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
  "name": "string",
  "server": "string",
  "port": 0,
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "type": "PostgreSQL",
  "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
  "integratedSecurity": true,
  "trustServerCertificate": true,
  "encrypted": true
}
```

<h3 id="-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|databaseId|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.ManagedDatabaseDto](../Models/sbpam.models.manageddatabasedto.md)|false|none|

> Example responses

> 200 Response

```json
{
  "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
  "ipAddress": "string",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "virtualHostId": "bc1c2187-fc2b-47af-80fd-f5832bdcfcd1",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
  "name": "string",
  "server": "string",
  "port": 0,
  "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
  "type": "PostgreSQL",
  "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
  "integratedSecurity": true,
  "trustServerCertificate": true,
  "encrypted": true
}
```

<h3 id="-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.ManagedDatabaseDto](../Models/sbpam.models.manageddatabasedto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


