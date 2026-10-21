
##  (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdUpdateAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/User \
  -H 'Content-Type: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
  "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
  "activeDirectoryDomain": {
    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
    "name": "example",
    "domainName": "example.local",
    "netBiosName": "EXAMPLE",
    "domainController": "example-dc001.example.local",
    "usnChanged": 12345,
    "activeDirectoryDomainConfigurationId": "7c50cc10-1412-485e-9020-50b41d8070bf",
    "activeDirectoryDomainConfiguration": {
      "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
      "name": "ExampleDomainConfiguration",
      "enabled": true,
      "credentialId": "2258c867-9603-49f3-9cbe-b82f831262a7",
      "useSsl": true,
      "functionalLevel": "Windows Server 2016",
      "syncActionQueueId": "f71d0f8a-b017-481c-aa7f-0c3df15b4eae",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "functionalLevel": "Windows Server 2016",
    "activeDirectoryGroup": [],
    "objectSid": "S-1-5-21-2801403971-1535060088-509881625",
    "maxRenewAge": 7,
    "maxTicketAge": 10,
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
  "displayName": "string",
  "enabled": true,
  "unixId": 0,
  "unixGroupId": 0,
  "homeDirectory": "string",
  "shell": "string",
  "expirationDate": "2019-08-24T14:15:22Z",
  "managed": true,
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "host": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
    "name": "example\\host",
    "distinguishedName": "CN=Host, CN=Computers, DC=example, DC=local",
    "ipAddress": "192.168.1.1",
    "os": "Windows Fake Edition",
    "version": "10.4.1.1",
    "lsaLookupCache": "10",
    "lastUpdatedDateTimeUtc": "2024-03-27T18:25:43.511Z",
    "credentialId": "61101f34-74f5-41a6-9405-73c2c91bd752",
    "hasSSH": false,
    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
    "activeDirectoryDomain": {
      "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
      "name": "example",
      "domainName": "example.local",
      "netBiosName": "EXAMPLE",
      "domainController": "example-dc001.example.local",
      "usnChanged": 12345,
      "activeDirectoryDomainConfigurationId": "7c50cc10-1412-485e-9020-50b41d8070bf",
      "activeDirectoryDomainConfiguration": {
        "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
        "name": "ExampleDomainConfiguration",
        "enabled": true,
        "credentialId": "2258c867-9603-49f3-9cbe-b82f831262a7",
        "useSsl": true,
        "functionalLevel": "Windows Server 2016",
        "syncActionQueueId": "f71d0f8a-b017-481c-aa7f-0c3df15b4eae",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "functionalLevel": "Windows Server 2016",
      "activeDirectoryGroup": [],
      "objectSid": "S-1-5-21-2801403971-1535060088-509881625",
      "maxRenewAge": 7,
      "maxTicketAge": 10,
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "dnsHostName": "host.example.local",
    "netBiosName": "HOST",
    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
    "samaccountname": "EXAMPLE\\host",
    "isDomainController": false,
    "isGlobalCatalog": false,
    "usnChanged": 12345,
    "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
    "added": "20240327T01:01:01.555Z",
    "deleted": false,
    "lastScannedUtc": "20240327T01:01:01.555Z",
    "scanStartedUtc": "20240327T01:01:01.555Z",
    "isVirtual": false,
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
  "primaryGroupTokenId": 0,
  "primaryGroupToken": "string",
  "managerSamaccountname": "string",
  "title": "string",
  "samaccountname": "string",
  "userPrincipalName": "string",
  "distinguishedName": "string",
  "department": "string",
  "email": "string",
  "lastLogonTimestamp": "2019-08-24T14:15:22Z",
  "name": "string",
  "sid": "string",
  "firstName": "string",
  "lastName": "string",
  "passwordHash": "string",
  "passwordChangedDateTimeUtc": "2019-08-24T14:15:22Z",
  "passwordExpirationDateTimeUtc": "2019-08-24T14:15:22Z",
  "forcePasswordReset": true,
  "privilege": "NotSet",
  "deleted": true,
  "lastSeenUtc": "2019-08-24T14:15:22Z",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/User" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/User`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
  "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
  "activeDirectoryDomain": {
    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
    "name": "example",
    "domainName": "example.local",
    "netBiosName": "EXAMPLE",
    "domainController": "example-dc001.example.local",
    "usnChanged": 12345,
    "activeDirectoryDomainConfigurationId": "7c50cc10-1412-485e-9020-50b41d8070bf",
    "activeDirectoryDomainConfiguration": {
      "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
      "name": "ExampleDomainConfiguration",
      "enabled": true,
      "credentialId": "2258c867-9603-49f3-9cbe-b82f831262a7",
      "useSsl": true,
      "functionalLevel": "Windows Server 2016",
      "syncActionQueueId": "f71d0f8a-b017-481c-aa7f-0c3df15b4eae",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "functionalLevel": "Windows Server 2016",
    "activeDirectoryGroup": [],
    "objectSid": "S-1-5-21-2801403971-1535060088-509881625",
    "maxRenewAge": 7,
    "maxTicketAge": 10,
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
  "displayName": "string",
  "enabled": true,
  "unixId": 0,
  "unixGroupId": 0,
  "homeDirectory": "string",
  "shell": "string",
  "expirationDate": "2019-08-24T14:15:22Z",
  "managed": true,
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "host": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
    "name": "example\\host",
    "distinguishedName": "CN=Host, CN=Computers, DC=example, DC=local",
    "ipAddress": "192.168.1.1",
    "os": "Windows Fake Edition",
    "version": "10.4.1.1",
    "lsaLookupCache": "10",
    "lastUpdatedDateTimeUtc": "2024-03-27T18:25:43.511Z",
    "credentialId": "61101f34-74f5-41a6-9405-73c2c91bd752",
    "hasSSH": false,
    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
    "activeDirectoryDomain": {
      "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
      "name": "example",
      "domainName": "example.local",
      "netBiosName": "EXAMPLE",
      "domainController": "example-dc001.example.local",
      "usnChanged": 12345,
      "activeDirectoryDomainConfigurationId": "7c50cc10-1412-485e-9020-50b41d8070bf",
      "activeDirectoryDomainConfiguration": {
        "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
        "name": "ExampleDomainConfiguration",
        "enabled": true,
        "credentialId": "2258c867-9603-49f3-9cbe-b82f831262a7",
        "useSsl": true,
        "functionalLevel": "Windows Server 2016",
        "syncActionQueueId": "f71d0f8a-b017-481c-aa7f-0c3df15b4eae",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "functionalLevel": "Windows Server 2016",
      "activeDirectoryGroup": [],
      "objectSid": "S-1-5-21-2801403971-1535060088-509881625",
      "maxRenewAge": 7,
      "maxTicketAge": 10,
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "dnsHostName": "host.example.local",
    "netBiosName": "HOST",
    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
    "samaccountname": "EXAMPLE\\host",
    "isDomainController": false,
    "isGlobalCatalog": false,
    "usnChanged": 12345,
    "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
    "added": "20240327T01:01:01.555Z",
    "deleted": false,
    "lastScannedUtc": "20240327T01:01:01.555Z",
    "scanStartedUtc": "20240327T01:01:01.555Z",
    "isVirtual": false,
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
  "primaryGroupTokenId": 0,
  "primaryGroupToken": "string",
  "managerSamaccountname": "string",
  "title": "string",
  "samaccountname": "string",
  "userPrincipalName": "string",
  "distinguishedName": "string",
  "department": "string",
  "email": "string",
  "lastLogonTimestamp": "2019-08-24T14:15:22Z",
  "name": "string",
  "sid": "string",
  "firstName": "string",
  "lastName": "string",
  "passwordHash": "string",
  "passwordChangedDateTimeUtc": "2019-08-24T14:15:22Z",
  "passwordExpirationDateTimeUtc": "2019-08-24T14:15:22Z",
  "forcePasswordReset": true,
  "privilege": "NotSet",
  "deleted": true,
  "lastSeenUtc": "2019-08-24T14:15:22Z",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


