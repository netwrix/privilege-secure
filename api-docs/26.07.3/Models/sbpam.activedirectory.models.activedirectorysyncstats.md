
<h2 id="tocS_SbPAM.ActiveDirectory.Models.ActiveDirectorySyncStats">SbPAM.ActiveDirectory.Models.ActiveDirectorySyncStats</h2>

<a id="schemasbpam.activedirectory.models.activedirectorysyncstats"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.ActiveDirectorySyncStats"></a>
<a id="tocSsbpam.activedirectory.models.activedirectorysyncstats"></a>
<a id="tocssbpam.activedirectory.models.activedirectorysyncstats"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "domainController": "string",
  "usersProcessed": 0,
  "groupsProcessed": 0,
  "membersProcessed": 0,
  "computersProcessed": 0,
  "serviceAccountsProcessed": 0,
  "startTimeUtc": "2019-08-24T14:15:22Z",
  "endTimeUtc": "2019-08-24T14:15:22Z",
  "errorCount": 0,
  "warningCount": 0,
  "jobSettingsId": "3277a8a1-4241-45e6-8dc5-5e96ee1f5f49",
  "jobSettings": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "specificGroups": "string",
    "nameFormat": "DistinguishedName",
    "useGlobalCatalog": false,
    "domain": "\r\n            example.com\r\n            ",
    "domainController": "\r\n            dc.example.com\r\n            ",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
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
  "status": "Created",
  "activeDirectorySyncStatsError": [
    {
      "id": "e7b8f8d2-3c4b-4b8e-9f8d-2c3b4b8e9f8d",
      "errorTimeUtc": "2024-01-01T12:00:00Z",
      "errorMessage": "Failed to sync due to network error.",
      "activeDirectorySyncStatsId": "c9d8e7f6-5b4a-3c2b-1a0e-9f8d7c6b5a4e",
      "activeDirectorySyncStats": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "domainController": "string",
        "usersProcessed": 0,
        "groupsProcessed": 0,
        "membersProcessed": 0,
        "computersProcessed": 0,
        "serviceAccountsProcessed": 0,
        "startTimeUtc": "2019-08-24T14:15:22Z",
        "endTimeUtc": "2019-08-24T14:15:22Z",
        "errorCount": 0,
        "warningCount": 0,
        "jobSettingsId": "3277a8a1-4241-45e6-8dc5-5e96ee1f5f49",
        "jobSettings": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "specificGroups": "string",
          "nameFormat": "DistinguishedName",
          "useGlobalCatalog": false,
          "domain": "\r\n            example.com\r\n            ",
          "domainController": "\r\n            dc.example.com\r\n            ",
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
        },
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
        "status": "Created",
        "activeDirectorySyncStatsError": [],
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "2024-01-01T05:07:08.555Z",
      "modifiedDateTimeUtc": "2024-01-02T05:07:08.555Z"
    }
  ],
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

Represents the statistics of an Active Directory synchronization process.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Gets or sets the unique identifier for the synchronization statistics.|
|domainController|string¦null|false|none|Gets or sets the domain controller used for the synchronization.|
|usersProcessed|integer(int32)|false|none|Gets or sets the number of users processed during the synchronization.|
|groupsProcessed|integer(int32)|false|none|Gets or sets the number of groups processed during the synchronization.|
|membersProcessed|integer(int32)|false|none|Gets or sets the number of members processed during the synchronization.|
|computersProcessed|integer(int32)|false|none|Gets or sets the number of computers processed during the synchronization.|
|serviceAccountsProcessed|integer(int32)|false|none|Gets or sets the number of service accounts processed during the synchronization.|
|startTimeUtc|string(date-time)¦null|false|none|Gets or sets the start time of the synchronization in UTC.|
|endTimeUtc|string(date-time)¦null|false|none|Gets or sets the end time of the synchronization in UTC.|
|errorCount|integer(int32)|false|none|Gets or sets the number of errors encountered during the synchronization.|
|warningCount|integer(int32)|false|none|Gets or sets the number of warnings encountered during the synchronization.|
|jobSettingsId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the job settings associated with the synchronization.|
|jobSettings|[SbPAM.ActiveDirectory.Models.AdSyncInput](../Models/sbpam.activedirectory.models.adsyncinput.md)|false|none|Represents the input for Active Directory synchronization.|
|activeDirectoryDomainId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the Active Directory domain associated with the synchronization.|
|activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|status|[SbPAM.ActiveDirectory.Models.Enums.ActiveDirectorySyncStatusType](../Models/sbpam.activedirectory.models.enums.activedirectorysyncstatustype.md)|false|none|none|
|activeDirectorySyncStatsError|[[SbPAM.ActiveDirectory.Models.ActiveDirectorySyncStatsError](../Models/sbpam.activedirectory.models.activedirectorysyncstatserror.md)]¦null|false|read-only|Gets the collection of errors encountered during the synchronization.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


