
## Create a host (Auth roles: Admin,App)

<a id="opIdCreateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/Host \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
  "name": "string",
  "distinguishedName": "CN=Host, CN=Computers, DC=example, DC=local",
  "ipAddress": "192.168.1.1",
  "os": "Windows Fake Edition",
  "version": "10.4.1.1",
  "lsaLookupCache": "10",
  "lastUpdatedDateTimeUtc": "2024-03-27T18:25:43.511Z",
  "credentialId": "61101f34-74f5-41a6-9405-73c2c91bd752",
  "hasSSH": false,
  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
  "dnsHostName": "host.example.local",
  "netBiosName": "HOST",
  "samaccountname": "string",
  "isDomainController": false,
  "isGlobalCatalog": false,
  "usnChanged": 12345,
  "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
  "added": "20240327T01:01:01.555Z",
  "deleted": false,
  "isVirtual": false,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
"@

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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/Host" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```

`POST /api/v1/Host`

This endpoint can be used to create a Host record.
Host records need to be paired with ManagedResource records in order
to be used in Netwrix Privilege Secure.

You can create the ManagedResource by using the
endpoint <a href="../ManagedResource/CandidateAddMultiple.md">POST /api/v1/ManagedResource/Candidate/AddMultiple</a>
This will attempt to use the credential assigned to the host or domain the host
belongs to.

> Body parameter

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
  "lastUpdatedDateTimeUtc": "2024-03-17T21:16:00",
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
  "added": "20240327T01:01:01.555Z",
  "deleted": false,
  "isVirtual": false,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "0001-01-01T00:00:00Z",
  "modifiedDateTimeUtc": "0001-01-01T00:00:00Z"
}
```

<h3 id="create-a-host-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|Host object with updates|

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

<h3 id="create-a-host-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


