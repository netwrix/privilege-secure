
## Get a specific host by Id (Auth roles: Admin,App)

<a id="opIdGetHostByIdAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Host/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/Host/{id} -Headers $Headers -ContentType "application/json"
```

`GET /api/v1/Host/{id}`

<h3 id="get-a-specific-host-by-id-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|NPS Host id|
|includeReferencedLists|query|boolean|false|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
  "name": "example\\host",
  "distinguishedName": "CN=Host,OU=42,DC=example,DC=local",
  "ipAddress": "192.168.1.1",
  "os": "Windows Fake Edition",
  "version": "10.4.2.1",
  "lsaLookupCache": null,
  "lastUpdatedDateTimeUtc": "2024-03-17T21:16:00Z",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "hasSSH": false,
  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
  "activeDirectoryDomain": null,
  "dnsHostName": "host.example.com",
  "netBiosName": "Host",
  "users": [],
  "groups": [],
  "features": [],
  "services": [],
  "scheduledTasks": [],
  "databases": [],
  "databaseDbs": [],
  "databaseRoles": [],
  "samaccountname": "EXAMPLE\\Host",
  "isDomainController": false,
  "isGlobalCatalog": false,
  "usnChanged": 12345,
  "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
  "added": "2019-08-24T19:15:22Z",
  "deleted": false,
  "isVirtual": false,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "0001-01-01T00:00:00Z",
  "modifiedDateTimeUtc": "0001-01-01T00:00:00Z"
}
```

> 403 Response

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

<h3 id="get-a-specific-host-by-id-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator"|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


