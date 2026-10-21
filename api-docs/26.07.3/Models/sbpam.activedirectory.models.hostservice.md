
<h2 id="tocS_SbPAM.ActiveDirectory.Models.HostService">SbPAM.ActiveDirectory.Models.HostService</h2>

<a id="schemasbpam.activedirectory.models.hostservice"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.HostService"></a>
<a id="tocSsbpam.activedirectory.models.hostservice"></a>
<a id="tocssbpam.activedirectory.models.hostservice"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "displayName": "string",
  "description": "string",
  "startType": "Boot",
  "userName": "string",
  "binaryPathName": "string",
  "dependentServices": "string",
  "canPauseAndContinue": true,
  "canShutdown": true,
  "canStop": true,
  "serviceType": "KernelDriver",
  "delayedStart": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
  "lastSeenUtc": "2019-08-24T14:15:22Z",
  "deleted": true,
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
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
}

```

Represents a service associated with a host.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|displayName|string¦null|false|none|none|
|description|string¦null|false|none|none|
|startType|[SbPAM.Models.Common.ServiceStartType](../Models/sbpam.models.common.servicestarttype.md)|false|none|none|
|userName|string¦null|false|none|none|
|binaryPathName|string¦null|false|none|none|
|dependentServices|string¦null|false|none|none|
|canPauseAndContinue|boolean|false|none|none|
|canShutdown|boolean|false|none|none|
|canStop|boolean|false|none|none|
|serviceType|[SbPAM.Models.Common.ServiceTypeFlags](../Models/sbpam.models.common.servicetypeflags.md)|false|none|none|
|delayedStart|boolean|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|discoveredDateTimeUtc|string(date-time)|false|none|none|
|lastSeenUtc|string(date-time)¦null|false|none|none|
|deleted|boolean|false|none|none|
|hostId|string(uuid)|false|none|Gets or sets the unique identifier for the host.|
|host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|credentialId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the credential.|
|hostUserId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the host user.|


