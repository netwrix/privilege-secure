
## Upserts a batch of host users directly without staging tables.
PowerShell calls this in batches of ~100 users. (Auth roles: Admin,App)

<a id="opIdUpsertHostUserBatchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/HostScanJob/UpsertUserBatch/{hostId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
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
]
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/HostScanJob/UpsertUserBatch/{hostId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/HostScanJob/UpsertUserBatch/{hostId}`

> Body parameter

```json
[
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
]
```

<h3 id="upserts-a-batch-of-host-users-directly-without-staging-tables.
powershell-calls-this-in-batches-of-~100-users.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|hostId|path|string(uuid)|true|none|
|body|body|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|

> Example responses

> 200 Response

```json
[
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
        "activeDirectoryDomain": [
          {}
        ],
        "name": "ExampleDomainConfiguration",
        "controllers": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "activeDirectoryDomain": {},
            "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
            "activeDirectoryDomainConfiguration": {},
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
          }
        ],
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
          "activeDirectoryDomain": [
            {}
          ],
          "name": "ExampleDomainConfiguration",
          "controllers": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "activeDirectoryDomain": {},
              "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
              "activeDirectoryDomainConfiguration": {},
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            }
          ],
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
      "users": [],
      "groups": [],
      "features": [],
      "services": [],
      "scheduledTasks": [],
      "databases": [],
      "databaseDbs": [],
      "databaseRoles": [],
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
    "hostUserGroupJoin": [
      {
        "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
        "user": {},
        "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
        "group": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
          "name": "string",
          "sid": "string",
          "unixId": 0,
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
                "activeDirectoryDomain": [
                  {}
                ],
                "name": "ExampleDomainConfiguration",
                "controllers": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "activeDirectoryDomain": {},
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
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
            "users": [],
            "groups": [],
            "features": [],
            "services": [],
            "scheduledTasks": [],
            "databases": [],
            "databaseDbs": [],
            "databaseRoles": [],
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
          "hostUserGroupJoin": [
            {}
          ],
          "hostGroupGroupJoins": [
            {
              "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
              "hostGroup": {},
              "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
              "domainGroupMember": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "samaccountname": "string",
                "usnchanged": 0,
                "description": "string",
                "distinguishedName": "string",
                "displayName": "string",
                "email": "string",
                "added": "2019-08-24T14:15:22Z",
                "groupToken": "string",
                "activeDirectoryGroupHostUser": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activeDirectoryGroupGroupGroup": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activeDirectoryGroupGroupMember": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
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
                    "activeDirectoryDomain": [],
                    "name": "ExampleDomainConfiguration",
                    "controllers": [],
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
                "groupTokenId": 0,
                "name": "string",
                "sid": "string",
                "hostGroupGroupJoins": [
                  {}
                ],
                "deleted": true,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
              "lastSeenUtc": "2019-08-24T14:15:22Z",
              "deleted": true,
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            }
          ],
          "lastSeenUtc": "2019-08-24T14:15:22Z",
          "deleted": true,
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
        },
        "lastSeenUtc": "2019-08-24T14:15:22Z",
        "deleted": true,
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      }
    ],
    "hostDatabaseDbs": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "databaseId": "string",
        "ownerSid": "string",
        "createDate": "2019-08-24T14:15:22Z",
        "isOnline": true,
        "statusDesc": "string",
        "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
        "lastSeenUtc": "2019-08-24T14:15:22Z",
        "deleted": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
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
              "activeDirectoryDomain": [
                {}
              ],
              "name": "ExampleDomainConfiguration",
              "controllers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "activeDirectoryDomain": {},
                  "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                  "activeDirectoryDomainConfiguration": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
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
          "users": [],
          "groups": [],
          "features": [],
          "services": [],
          "scheduledTasks": [],
          "databases": [],
          "databaseDbs": [],
          "databaseRoles": [],
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
        "hostUsers": [
          {}
        ],
        "hostGroups": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "samaccountname": "string",
            "usnchanged": 0,
            "description": "string",
            "distinguishedName": "string",
            "displayName": "string",
            "email": "string",
            "added": "2019-08-24T14:15:22Z",
            "groupToken": "string",
            "activeDirectoryGroupHostUser": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                "group": {},
                "member": {},
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
            "activeDirectoryGroupGroupGroup": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                "group": {},
                "member": {},
                "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
            "activeDirectoryGroupGroupMember": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                "group": {},
                "member": {},
                "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
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
                "activeDirectoryDomain": [
                  {}
                ],
                "name": "ExampleDomainConfiguration",
                "controllers": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "activeDirectoryDomain": {},
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
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
            "groupTokenId": 0,
            "name": "string",
            "sid": "string",
            "hostGroupGroupJoins": [
              {
                "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
                "hostGroup": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                  "name": "string",
                  "sid": "string",
                  "unixId": 0,
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
                    "activeDirectoryDomain": {},
                    "dnsHostName": "host.example.local",
                    "netBiosName": "HOST",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "users": [],
                    "groups": [],
                    "features": [],
                    "services": [],
                    "scheduledTasks": [],
                    "databases": [],
                    "databaseDbs": [],
                    "databaseRoles": [],
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
                  "hostUserGroupJoin": [
                    {}
                  ],
                  "hostGroupGroupJoins": [
                    {}
                  ],
                  "lastSeenUtc": "2019-08-24T14:15:22Z",
                  "deleted": true,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
                "domainGroupMember": {},
                "lastSeenUtc": "2019-08-24T14:15:22Z",
                "deleted": true,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
            "deleted": true,
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
          }
        ],
        "hostDbRoles": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "sid": "string",
            "principalId": "string",
            "createDate": "2019-08-24T14:15:22Z",
            "modifyDate": "2019-08-24T14:15:22Z",
            "isDisabled": true,
            "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
            "lastSeenUtc": "2019-08-24T14:15:22Z",
            "deleted": true,
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
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
                  "activeDirectoryDomain": [
                    {}
                  ],
                  "name": "ExampleDomainConfiguration",
                  "controllers": [
                    {}
                  ],
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
              "users": [],
              "groups": [],
              "features": [],
              "services": [],
              "scheduledTasks": [],
              "databases": [],
              "databaseDbs": [],
              "databaseRoles": [],
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
            "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
            "databaseDb": {},
            "hostUsers": [
              {}
            ],
            "hostGroups": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "samaccountname": "string",
                "usnchanged": 0,
                "description": "string",
                "distinguishedName": "string",
                "displayName": "string",
                "email": "string",
                "added": "2019-08-24T14:15:22Z",
                "groupToken": "string",
                "activeDirectoryGroupHostUser": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activeDirectoryGroupGroupGroup": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activeDirectoryGroupGroupMember": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
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
                    "activeDirectoryDomain": [],
                    "name": "ExampleDomainConfiguration",
                    "controllers": [],
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
                "groupTokenId": 0,
                "name": "string",
                "sid": "string",
                "hostGroupGroupJoins": [
                  {
                    "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
                    "hostGroup": {},
                    "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
                    "domainGroupMember": {},
                    "lastSeenUtc": "2019-08-24T14:15:22Z",
                    "deleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "deleted": true,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ]
          }
        ]
      }
    ],
    "hostDatabaseRoles": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "sid": "string",
        "principalId": "string",
        "createDate": "2019-08-24T14:15:22Z",
        "modifyDate": "2019-08-24T14:15:22Z",
        "isDisabled": true,
        "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
        "lastSeenUtc": "2019-08-24T14:15:22Z",
        "deleted": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
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
              "activeDirectoryDomain": [
                {}
              ],
              "name": "ExampleDomainConfiguration",
              "controllers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "activeDirectoryDomain": {},
                  "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                  "activeDirectoryDomainConfiguration": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
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
          "users": [],
          "groups": [],
          "features": [],
          "services": [],
          "scheduledTasks": [],
          "databases": [],
          "databaseDbs": [],
          "databaseRoles": [],
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
        "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
        "databaseDb": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "databaseId": "string",
          "ownerSid": "string",
          "createDate": "2019-08-24T14:15:22Z",
          "isOnline": true,
          "statusDesc": "string",
          "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
          "lastSeenUtc": "2019-08-24T14:15:22Z",
          "deleted": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
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
                "activeDirectoryDomain": [
                  {}
                ],
                "name": "ExampleDomainConfiguration",
                "controllers": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "activeDirectoryDomain": {},
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
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
            "users": [],
            "groups": [],
            "features": [],
            "services": [],
            "scheduledTasks": [],
            "databases": [],
            "databaseDbs": [],
            "databaseRoles": [],
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
          "hostUsers": [
            {}
          ],
          "hostGroups": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "samaccountname": "string",
              "usnchanged": 0,
              "description": "string",
              "distinguishedName": "string",
              "displayName": "string",
              "email": "string",
              "added": "2019-08-24T14:15:22Z",
              "groupToken": "string",
              "activeDirectoryGroupHostUser": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                  "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                  "group": {},
                  "member": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
              "activeDirectoryGroupGroupGroup": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                  "group": {},
                  "member": {},
                  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
              "activeDirectoryGroupGroupMember": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                  "group": {},
                  "member": {},
                  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
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
                  "activeDirectoryDomain": [
                    {}
                  ],
                  "name": "ExampleDomainConfiguration",
                  "controllers": [
                    {}
                  ],
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
              "groupTokenId": 0,
              "name": "string",
              "sid": "string",
              "hostGroupGroupJoins": [
                {
                  "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
                  "hostGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                    "name": "string",
                    "sid": "string",
                    "unixId": 0,
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUserGroupJoin": [],
                    "hostGroupGroupJoins": [],
                    "lastSeenUtc": "2019-08-24T14:15:22Z",
                    "deleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
                  "domainGroupMember": {},
                  "lastSeenUtc": "2019-08-24T14:15:22Z",
                  "deleted": true,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
              "deleted": true,
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            }
          ],
          "hostDbRoles": [
            {}
          ]
        },
        "hostUsers": [
          {}
        ],
        "hostGroups": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "samaccountname": "string",
            "usnchanged": 0,
            "description": "string",
            "distinguishedName": "string",
            "displayName": "string",
            "email": "string",
            "added": "2019-08-24T14:15:22Z",
            "groupToken": "string",
            "activeDirectoryGroupHostUser": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                "group": {},
                "member": {},
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
            "activeDirectoryGroupGroupGroup": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                "group": {},
                "member": {},
                "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
            "activeDirectoryGroupGroupMember": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                "group": {},
                "member": {},
                "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
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
                "activeDirectoryDomain": [
                  {}
                ],
                "name": "ExampleDomainConfiguration",
                "controllers": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "activeDirectoryDomain": {},
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
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
            "groupTokenId": 0,
            "name": "string",
            "sid": "string",
            "hostGroupGroupJoins": [
              {
                "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
                "hostGroup": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                  "name": "string",
                  "sid": "string",
                  "unixId": 0,
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
                    "activeDirectoryDomain": {},
                    "dnsHostName": "host.example.local",
                    "netBiosName": "HOST",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "users": [],
                    "groups": [],
                    "features": [],
                    "services": [],
                    "scheduledTasks": [],
                    "databases": [],
                    "databaseDbs": [],
                    "databaseRoles": [],
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
                  "hostUserGroupJoin": [
                    {}
                  ],
                  "hostGroupGroupJoins": [
                    {}
                  ],
                  "lastSeenUtc": "2019-08-24T14:15:22Z",
                  "deleted": true,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
                "domainGroupMember": {},
                "lastSeenUtc": "2019-08-24T14:15:22Z",
                "deleted": true,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
            "deleted": true,
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
          }
        ]
      }
    ],
    "deleted": true,
    "lastSeenUtc": "2019-08-24T14:15:22Z",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  }
]
```

<h3 id="upserts-a-batch-of-host-users-directly-without-staging-tables.
powershell-calls-this-in-batches-of-~100-users.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="upserts-a-batch-of-host-users-directly-without-staging-tables.
powershell-calls-this-in-batches-of-~100-users.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]|false|none|[This model represents a user which may be associated with target host.]|
|» id|string(uuid)|false|none|Unique id and DB key for this user.|
|» activeDirectoryObjectId|string(uuid)¦null|false|none|Unique id from AD sync (usually same as Id).|
|» resourceObjectId|string(uuid)¦null|false|none|Azure AD/Entra ID object ID for this user.<br>Used when user is discovered from Azure AD scanning.|
|» activeDirectoryDomainId|string(uuid)¦null|false|none|Id of active directory domain to which this user belongs.|
|» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»» id|string(uuid)|false|none|Unique id and DB key for this domain.|
|»» name|string¦null|false|none|Name of this domain, e.g. sbitsinc.|
|»» domainName|string¦null|false|none|Fully qualified name of this domain|
|»» netBiosName|string¦null|false|none|NetBios name of this domain|
|»» domainController|string¦null|false|none|Name of the domain controller for this domain.|
|»» usnChanged|integer(int64)¦null|false|none|Update sequence number (USN) assigned by the directory for the latest change.|
|»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|NPS Id of the active directory domain configuration.|
|»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|»»» id|string(uuid)|false|none|Gets or sets the unique identifier of the configuration.|
|»»» activeDirectoryDomain|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)]¦null|false|read-only|Gets the list of Active Directory domains.|
|»»» name|string¦null|false|none|Gets or sets the name of the configuration.|
|»»» controllers|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryController](../Models/sbpam.activedirectory.models.activedirectorycontroller.md)]¦null|false|read-only|Gets the list of Active Directory controllers.|
|»»»» id|string(uuid)|false|none|Gets or sets the unique identifier for the Active Directory Controller.|
|»»»» name|string¦null|false|none|Name of the Active Directory Controller.|
|»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|Configuration ID for the Active Directory Domain.|
|»»»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» enabled|boolean|false|none|Gets or sets a value indicating whether the configuration is enabled.|
|»»» credentialId|string(uuid)¦null|false|none|Gets or sets the credential identifier.|
|»»» useSsl|boolean|false|none|Gets or sets a value indicating whether SSL is used.|
|»»» functionalLevel|string¦null|false|none|Gets or sets the name of the domain's functional level.|
|»»» syncActionQueueId|string(uuid)¦null|false|none|Gets or sets the synchronization action queue identifier.|
|»»» nodeId|string(uuid)|false|none|Internal identifier for the node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when the object was created in the database).|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» functionalLevel|string¦null|false|none|Name of this domain controller's functional level|
|»» activeDirectoryGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Active Directory Groups within this domain.|
|»»» id|string(uuid)|false|none|Gets or sets the unique identifier for the group.|
|»»» samaccountname|string¦null|false|none|Gets or sets the SAM account name.|
|»»» usnchanged|integer(int64)|false|none|Gets or sets the USN changed value.|
|»»» description|string¦null|false|none|Gets or sets the description of the group.|
|»»» distinguishedName|string¦null|false|none|Gets or sets the distinguished name of the group.|
|»»» displayName|string¦null|false|none|Gets or sets the display name of the group.|
|»»» email|string¦null|false|none|Gets or sets the email of the group.|
|»»» added|string(date-time)|false|none|Gets or sets the date when the group was added.|
|»»» groupToken|string(byte)¦null|false|none|Gets or sets the group token.|
|»»» activeDirectoryGroupHostUser|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupHostUser](../Models/sbpam.activedirectory.models.activedirectorygrouphostuser.md)]¦null|false|none|Gets or sets the collection of ActiveDirectoryGroupHostUser.|
|»»»» id|string(uuid)|false|none|Gets or sets the unique identifier for the group member.|
|»»»» groupId|string(uuid)|false|none|Gets or sets the unique identifier for the group.|
|»»»» memberId|string(uuid)|false|none|Gets or sets the unique identifier for the member.|
|»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»» member|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|This model represents a user which may be associated with target host.|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» activeDirectoryGroupGroupGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|Gets or sets the collection of ActiveDirectoryGroupGroupGroup.|
|»»»» id|string(uuid)|false|none|Id of AD group.|
|»»»» memberId|string(uuid)|false|none|AD group member ID.|
|»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»» member|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»» groupId|string(uuid)|false|none|Id of AD group.|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» activeDirectoryGroupGroupMember|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|Gets or sets the collection of ActiveDirectoryGroupGroupMember.|
|»»» activeDirectoryDomainId|string(uuid)|false|none|Gets or sets the Active Directory domain identifier.|
|»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»» groupTokenId|integer(int32)¦null|false|none|Gets or sets the group token identifier.|
|»»» name|string¦null|false|none|Gets or sets the name of the group.|
|»»» sid|string¦null|false|none|Gets or sets the SID of the group.|
|»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|Gets or sets the collection of HostGroupGroupJoins.|
|»»»» hostGroupId|string(uuid)|false|none|Id of the parent group|
|»»»» hostGroup|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|This model represents a group which may be associated with target host.|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»» resourceObjectId|string(uuid)¦null|false|none|Azure AD/Entra ID object ID for this group.<br>Used when group is discovered from Azure AD scanning.|
|»»»»» name|string¦null|false|none|Name for this group.|
|»»»»» sid|string¦null|false|none|Windows Security ID for group|
|»»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a group on a Unix host.|
|»»»»» hostId|string(uuid)¦null|false|none|Id of host to which this group belongs.|
|»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this host.|
|»»»»»» activeDirectoryObjectId|string(uuid)¦null|false|none|Unique id from AD sync (usually same as Id).|
|»»»»»» name|string¦null|false|none|Name of the host.|
|»»»»»» distinguishedName|string¦null|false|none|Distingished name from active directory|
|»»»»»» ipAddress|string¦null|false|none|IP address of host.|
|»»»»»» os|string¦null|false|none|Name of OS on host.|
|»»»»»» version|string¦null|false|none|Verion of OS on host.|
|»»»»»» lsaLookupCache|string¦null|false|none|Most recent LsaLookupCacheMaxSize|
|»»»»»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|Date/time of last system update.|
|»»»»»» credentialId|string(uuid)¦null|false|none|Id of service account for this host|
|»»»»»» hasSSH|boolean|false|none|True if the host supports SSH.|
|»»»»»» activeDirectoryDomainId|string(uuid)¦null|false|none|Id of active directory domain if host is a member of a domain.|
|»»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»»»» dnsHostName|string¦null|false|none|DNS hostname.|
|»»»»»» netBiosName|string¦null|false|none|NetBios hostname.|
|»»»»»» platformId|string(uuid)¦null|false|none|PlatformId|
|»»»»»» users|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|List of users associated with this host.|
|»»»»»» groups|[[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)]¦null|false|read-only|List of groups associated with this host.|
|»»»»»» features|[[SbPAM.ActiveDirectory.Models.HostFeature](../Models/sbpam.activedirectory.models.hostfeature.md)]¦null|false|read-only|List of features installed on this host.|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» version|string¦null|false|none|none|
|»»»»»»» description|string¦null|false|none|none|
|»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» hostId|string(uuid)|false|none|Id of host with this installed feature.|
|»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»» services|[[SbPAM.ActiveDirectory.Models.HostService](../Models/sbpam.activedirectory.models.hostservice.md)]¦null|false|read-only|List of services that have accounts that can be managed.|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» displayName|string¦null|false|none|none|
|»»»»»»» description|string¦null|false|none|none|
|»»»»»»» startType|[SbPAM.Models.Common.ServiceStartType](../Models/sbpam.models.common.servicestarttype.md)(int32)|false|none|none|
|»»»»»»» userName|string¦null|false|none|none|
|»»»»»»» binaryPathName|string¦null|false|none|none|
|»»»»»»» dependentServices|string¦null|false|none|none|
|»»»»»»» canPauseAndContinue|boolean|false|none|none|
|»»»»»»» canShutdown|boolean|false|none|none|
|»»»»»»» canStop|boolean|false|none|none|
|»»»»»»» serviceType|[SbPAM.Models.Common.ServiceTypeFlags](../Models/sbpam.models.common.servicetypeflags.md)(int32)|false|none|none|
|»»»»»»» delayedStart|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» hostId|string(uuid)|false|none|Gets or sets the unique identifier for the host.|
|»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»» credentialId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the credential.|
|»»»»»»» hostUserId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the host user.|
|»»»»»» scheduledTasks|[[SbPAM.ActiveDirectory.Models.HostScheduledTask](../Models/sbpam.activedirectory.models.hostscheduledtask.md)]¦null|false|read-only|List of scheduled tasks that have accounts that can be managed.|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» userName|string¦null|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» taskPath|string¦null|false|none|none|
|»»»»»»» description|string¦null|false|none|none|
|»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» source|string¦null|false|none|none|
|»»»»»»» nextRunTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastRunTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastRunResult|integer(int32)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» hostId|string(uuid)|false|none|Gets or sets the unique identifier for the host.|
|»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»» credentialId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the credential.|
|»»»»»»» hostUserId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the host user.|
|»»»»»» databases|[[SbPAM.ActiveDirectory.Models.HostDatabase](../Models/sbpam.activedirectory.models.hostdatabase.md)]¦null|false|read-only|List of SQL Server database server instances found on Windows host|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» fullName|string¦null|false|none|none|
|»»»»»»» product|string¦null|false|none|none|
|»»»»»»» version|string¦null|false|none|none|
|»»»»»»» isClustered|boolean|false|none|none|
|»»»»»»» clusterName|string¦null|false|none|none|
|»»»»»»» type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)(int32)|false|none|none|
|»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» hostId|string(uuid)|false|none|Gets or sets the Id of the host with this database.|
|»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»» databaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|List of SQL Server databases found on Windows host|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» databaseId|string¦null|false|none|none|
|»»»»»»» ownerSid|string¦null|false|none|none|
|»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»» isOnline|boolean|false|none|none|
|»»»»»»» statusDesc|string¦null|false|none|none|
|»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» hostId|string(uuid)|false|none|Gets or sets the ID of the host associated with this database.|
|»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|Gets the users which are in this database.|
|»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Gets or sets the domain groups which are in this database.|
|»»»»»»» hostDbRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|none|Gets or sets the roles of the host database.|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» sid|string¦null|false|none|none|
|»»»»»»»» principalId|string¦null|false|none|none|
|»»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»»» modifyDate|string(date-time)|false|none|none|
|»»»»»»»» isDisabled|boolean|false|none|none|
|»»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»»» deleted|boolean|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» hostId|string(uuid)|false|none|Id of host database with this database.|
|»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»»» databaseDbId|string(uuid)¦null|false|none|Null if a server role.|
|»»»»»»»» databaseDb|[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)|false|none|Represents a host database.|
|»»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|Users which are assigned the role.|
|»»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Domain groups which are assigned this role.|
|»»»»»» databaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|List of SQL Server databse roles found on Windows host|
|»»»»»» samaccountname|string¦null|false|none|sAMAccountname for host (from ActiveDirectory) NOTE: this includes the NETBIOS name to make it unique|
|»»»»»» isDomainController|boolean|false|none|Boolean indicating if this host is a Domain Controller|
|»»»»»» isGlobalCatalog|boolean¦null|false|none|Boolean indicating if this host is a Global Catalog server|
|»»»»»» usnChanged|integer(int64)|false|none|USN from Active Directory|
|»»»»»» objectSid|string¦null|false|none|SID from Active Directory|
|»»»»»» added|string(date-time)|false|none|UTC Time of when host was Added to NPS|
|»»»»»» deleted|boolean|false|none|True if this host has been deleted.|
|»»»»»» lastScannedUtc|string(date-time)¦null|false|none|When this host was last scanned (UTC)<br>Used to determine data freshness and identify users/groups that were not found in the most recent scan.<br>Compare with HostUser.LastSeenUtc to detect deleted users.|
|»»»»»» scanStartedUtc|string(date-time)¦null|false|none|When the current scan started (UTC).<br>Set when scan begins, used during scan for last_seen_utc timestamps.<br>Cleared when scan completes (copied to LastScannedUtc).|
|»»»»»» isVirtual|boolean|false|none|True if not a real host<br>Used for AzureAD tenants|
|»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|Users which are in this group via join table.|
|»»»»»» userId|string(uuid)|false|none|Id of AD user.|
|»»»»»» user|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|This model represents a user which may be associated with target host.|
|»»»»»» groupId|string(uuid)|false|none|Id of AD group.|
|»»»»»» group|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|This model represents a group which may be associated with target host.|
|»»»»»» lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|»»»»»» deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|Domain groups which are in this group via join table|
|»»»»» lastSeenUtc|string(date-time)¦null|false|none|When this group was last seen in a host scan (UTC).<br>Used to track when a group was last discovered.<br>Compare with Host.LastScannedUtc to detect removed groups.|
|»»»»» deleted|boolean|false|none|True if this group has been deleted (soft delete).|
|»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»» domainGroupMemberId|string(uuid)|false|none|Id of the member ActiveDirectoryGroup|
|»»»» domainGroupMember|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»» lastSeenUtc|string(date-time)¦null|false|none|When this group membership was last seen in a host scan (UTC).<br>Used to track when a domain group membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|»»»» deleted|boolean|false|none|True if this group membership has been deleted (soft delete).|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» deleted|boolean|false|none|True if this group has been deleted.|
|»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» objectSid|string¦null|false|none|Object SID for the domain controller this record represents|
|»» maxRenewAge|integer(int32)¦null|false|none|Max renew age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxrenewage">MS Documentation</a>|
|»» maxTicketAge|integer(int32)¦null|false|none|Max ticket age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxticketage">MS Documentation</a>|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» displayName|string¦null|false|none|Display name for this user.|
|» enabled|boolean|false|none|True if this user is enabled.|
|» unixId|integer(int32)¦null|false|none|Unix id if this is a user on a Unix host.|
|» unixGroupId|integer(int32)¦null|false|none|Unix group id if this is a user on a Unix host.|
|» homeDirectory|string¦null|false|none|Home directory for user if this is a user on a Unix host.|
|» shell|string¦null|false|none|Shell for user if this is a user on a Unix host.|
|» expirationDate|string(date-time)¦null|false|none|Expiration date for this user.|
|» managed|boolean|false|none|True if this user should be managed.|
|» hostId|string(uuid)¦null|false|none|Id of host to which this user belongs.|
|» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|» primaryGroupTokenId|integer(int32)¦null|false|none|Id of primary group token.|
|» primaryGroupToken|string(byte)¦null|false|none|Primary group token.|
|» managerSamaccountname|string¦null|false|none|SAM account name of Manager.|
|» title|string¦null|false|none|Title of this user.|
|» samaccountname|string¦null|false|none|SAM account name of user, e.g. Domain\Username.<br>https://docs.microsoft.com/en-us/windows/win32/ad/naming-properties#samaccountname|
|» userPrincipalName|string¦null|false|none|The userPrincipalName attribute is the logon name for the user.<br>https://docs.microsoft.com/en-us/windows/win32/ad/naming-properties#userprincipalname|
|» distinguishedName|string¦null|false|none|Distinguished name of user from active directory.|
|» department|string¦null|false|none|Department to which this user belongs.|
|» email|string¦null|false|none|Email address for this user.|
|» lastLogonTimestamp|string(date-time)¦null|false|none|When this user last logged in.|
|» name|string¦null|false|none|Short name|
|» sid|string¦null|false|none|Windows Security ID for user|
|» firstName|string¦null|false|none|User's first name - AD attribute 'givenName'|
|» lastName|string¦null|false|none|User's surname - AD attribute 'sn'|
|» passwordHash|string¦null|false|none|Hash of password from linux /etc/shadow|
|» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|Time we last changed password.|
|» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|When does password expire?|
|» forcePasswordReset|boolean|false|none|If true, need to change password.|
|» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|Groups to which this user belongs via join table.|
|» hostDatabaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|Databases to which this user belongs via join table.|
|» hostDatabaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|Roles to which this user belongs via join table.|
|» deleted|boolean|false|none|True if this user has been deleted.|
|» lastSeenUtc|string(date-time)¦null|false|none|When this user was last seen in a host scan (UTC).<br>Used to track when a user was last discovered on the host.<br>Compare with Host.LastScannedUtc to detect deleted users.|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

#### Enumerated Values

|Property|Value|
|---|---|
|startType|Boot|
|startType|System|
|startType|Automatic|
|startType|Manual|
|startType|Disabled|
|serviceType|KernelDriver|
|serviceType|FileSystemDriver|
|serviceType|Adapter|
|serviceType|RecognizerDriver|
|serviceType|Win32OwnProcess|
|serviceType|Win32ShareProcess|
|serviceType|InteractiveProcess|
|type|PostgreSQL|
|type|SqlServer|
|type|Sqlite|
|type|Oracle|
|type|MySql|
|type|Unknown|
|privilege|NotSet|
|privilege|Administrator|
|privilege|PowerUser|
|privilege|Guest|
|privilege|User|
|privilege|SuperUser|
|privilege|LinuxUser|
|privilege|CiscoPrivilege_0|
|privilege|CiscoPrivilege_1|
|privilege|CiscoPrivilege_2|
|privilege|CiscoPrivilege_3|
|privilege|CiscoPrivilege_4|
|privilege|CiscoPrivilege_5|
|privilege|CiscoPrivilege_6|
|privilege|CiscoPrivilege_7|
|privilege|CiscoPrivilege_8|
|privilege|CiscoPrivilege_9|
|privilege|CiscoPrivilege_10|
|privilege|CiscoPrivilege_11|
|privilege|CiscoPrivilege_12|
|privilege|CiscoPrivilege_13|
|privilege|CiscoPrivilege_14|
|privilege|CiscoPrivilege_15|
|privilege|DomainAdmin|
|privilege|EnterpriseAdmin|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


