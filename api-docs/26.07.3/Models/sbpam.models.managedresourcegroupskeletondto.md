
<h2 id="tocS_SbPAM.Models.ManagedResourceGroupSkeletonDto">SbPAM.Models.ManagedResourceGroupSkeletonDto</h2>

<a id="schemasbpam.models.managedresourcegroupskeletondto"></a>
<a id="schema_SbPAM.Models.ManagedResourceGroupSkeletonDto"></a>
<a id="tocSsbpam.models.managedresourcegroupskeletondto"></a>
<a id="tocssbpam.models.managedresourcegroupskeletondto"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "ouMappingEnabled": true,
  "ouFqdn": "string",
  "ouAutoOnboard": true,
  "ouIncludeChildren": true,
  "ouDomainConfig": {
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
  "resources": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "displayName": "string",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "dnsHostName": "string",
      "hostDistinguishedName": "string",
      "hostObjectSid": "string",
      "onboardState": "NotOnboard",
      "onboardStateName": "string",
      "ipAddress": "string",
      "manageAccount": "Unmanaged",
      "os": "string",
      "saName": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "platformName": "string",
      "builtInAccount": "string",
      "lastScanDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|ouMappingEnabled|boolean|false|none|none|
|ouFqdn|string¦null|false|none|none|
|ouAutoOnboard|boolean|false|none|none|
|ouIncludeChildren|boolean|false|none|none|
|ouDomainConfig|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|resources|[[SbPAM.Models.ManagedResourceSkeletonDto](../Models/sbpam.models.managedresourceskeletondto.md)]¦null|false|none|[We need to hand off potentially huge numbers of managed resources to the ActionService<br>together with some host information<br>Cut the data down to only what we actually need]|


