
<h2 id="tocS_SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration">SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration</h2>

<a id="schemasbpam.activedirectory.models.activedirectorydomainconfiguration"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration"></a>
<a id="tocSsbpam.activedirectory.models.activedirectorydomainconfiguration"></a>
<a id="tocssbpam.activedirectory.models.activedirectorydomainconfiguration"></a>

```json
{
  "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
  "activeDirectoryDomain": [
    {
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
    }
  ],
  "name": "ExampleDomainConfiguration",
  "controllers": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
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
      "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
      "activeDirectoryDomainConfiguration": {
        "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
        "activeDirectoryDomain": [
          {
            "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
            "name": "example",
            "domainName": "example.local",
            "netBiosName": "EXAMPLE",
            "domainController": "example-dc001.example.local",
            "usnChanged": 12345,
            "activeDirectoryDomainConfigurationId": "7c50cc10-1412-485e-9020-50b41d8070bf",
            "activeDirectoryDomainConfiguration": {},
            "functionalLevel": "Windows Server 2016",
            "activeDirectoryGroup": [],
            "objectSid": "S-1-5-21-2801403971-1535060088-509881625",
            "maxRenewAge": 7,
            "maxTicketAge": 10,
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
          }
        ],
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
}

```

Represents the configuration for an Active Directory domain.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Gets or sets the unique identifier of the configuration.|
|activeDirectoryDomain|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)]¦null|false|read-only|Gets the list of Active Directory domains.|
|name|string¦null|false|none|Gets or sets the name of the configuration.|
|controllers|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryController](../Models/sbpam.activedirectory.models.activedirectorycontroller.md)]¦null|false|read-only|Gets the list of Active Directory controllers.|
|enabled|boolean|false|none|Gets or sets a value indicating whether the configuration is enabled.|
|credentialId|string(uuid)¦null|false|none|Gets or sets the credential identifier.|
|useSsl|boolean|false|none|Gets or sets a value indicating whether SSL is used.|
|functionalLevel|string¦null|false|none|Gets or sets the name of the domain's functional level.|
|syncActionQueueId|string(uuid)¦null|false|none|Gets or sets the synchronization action queue identifier.|
|nodeId|string(uuid)|false|none|Internal identifier for the node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when the object was created in the database).|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


