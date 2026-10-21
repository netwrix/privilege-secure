
##  (Auth roles: Admin)

<a id="opIdGetLoginByUserAndHostIds"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Login/User/{userId}/Host/{hostId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Login/User/{userId}/Host/{hostId} -Headers $Headers
```

`GET /api/v1/Login/User/{userId}/Host/{hostId}`

<h3 id="-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userId|path|string(uuid)|true|none|
|hostId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "user": {
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
  },
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
  "sessionState": "Inactive",
  "idleTime": 0,
  "loginDateTimeUtc": "20240101T05:07:08.555Z",
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}
```

<h3 id="-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.ActiveDirectory.Models.Login](../Models/sbpam.activedirectory.models.login.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


