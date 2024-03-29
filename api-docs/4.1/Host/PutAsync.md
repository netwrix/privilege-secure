
## Update a host (Auth roles: Admin,App)

<a id="opIdPutAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/Host/{id} \
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/Host/{id}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/Host/{id}`

> Body parameter

```json
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
  "activeDirectoryDomain": {
    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
    "name": "example",
    "domainName": "example.local",
    "netBiosName": "string",
    "domainController": "example-dc001.example.local",
    "usnChanged": 12345,
    "activeDirectoryDomainConfigurationId": "7c50cc10-1412-485e-9020-50b41d8070bf",
    "activeDirectoryDomainConfiguration": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "enabled": true,
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "useSsl": true,
      "functionalLevel": "string",
      "syncActionQueueId": "52e1c928-ebc8-4a61-b81e-9a896250c15a",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "functionalLevel": "Windows Server 2016",
    "activeDirectoryGroup": [
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
            "member": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
              "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
              "activeDirectoryDomain": {},
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
                "activeDirectoryDomain": {},
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
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          }
        ],
        "activeDirectoryGroupGroupGroup": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
            "group": {},
            "member": {},
            "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          }
        ],
        "activeDirectoryGroupGroupMember": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
            "group": {},
            "member": {},
            "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          }
        ],
        "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
        "activeDirectoryDomain": {},
        "groupTokenId": 0,
        "name": "string",
        "sid": "string",
        "hostGroupGroupJoins": [
          {
            "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
            "hostGroup": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "sid": "string",
              "unixId": 0,
              "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
              "host": {
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
                "activeDirectoryDomain": {},
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
              },
              "hostGroupGroupJoins": [
                {}
              ],
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
            "domainGroupMember": {}
          }
        ],
        "deleted": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ],
    "objectSid": "S-1-5-21-2801403971-1535060088-509881625",
    "maxRenewAge": 7,
    "maxTicketAge": 10,
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
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
```

<h3 id="update-a-host-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|NPS Host Id|
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
  "nodeId": "00000000-0000-0000-0000-000000000000",
  "createdDateTimeUtc": "0001-01-01T00:00:00Z",
  "modifiedDateTimeUtc": "0001-01-01T00:00:00Z"
}
```

<h3 id="update-a-host-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


