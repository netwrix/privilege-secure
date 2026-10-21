
<h2 id="tocS_SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain">SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain</h2>

<a id="schemasbpam.activedirectory.models.activedirectorydomain"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain"></a>
<a id="tocSsbpam.activedirectory.models.activedirectorydomain"></a>
<a id="tocssbpam.activedirectory.models.activedirectorydomain"></a>

```json
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
          "activeDirectoryDomainConfiguration": {},
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

```

This model represents an active directory domain.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this domain.|
|name|string¦null|false|none|Name of this domain, e.g. sbitsinc.|
|domainName|string¦null|false|none|Fully qualified name of this domain|
|netBiosName|string¦null|false|none|NetBios name of this domain|
|domainController|string¦null|false|none|Name of the domain controller for this domain.|
|usnChanged|integer(int64)¦null|false|none|Update sequence number (USN) assigned by the directory for the latest change.|
|activeDirectoryDomainConfigurationId|string(uuid)|false|none|NPS Id of the active directory domain configuration.|
|activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|functionalLevel|string¦null|false|none|Name of this domain controller's functional level|
|activeDirectoryGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Active Directory Groups within this domain.|
|objectSid|string¦null|false|none|Object SID for the domain controller this record represents|
|maxRenewAge|integer(int32)¦null|false|none|Max renew age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxrenewage">MS Documentation</a>|
|maxTicketAge|integer(int32)¦null|false|none|Max ticket age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxticketage">MS Documentation</a>|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


