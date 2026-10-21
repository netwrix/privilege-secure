
<h2 id="tocS_SbPAM.ActiveDirectory.Models.Host">SbPAM.ActiveDirectory.Models.Host</h2>

<a id="schemasbpam.activedirectory.models.host"></a>
<a id="schema_SbPAM.ActiveDirectory.Models.Host"></a>
<a id="tocSsbpam.activedirectory.models.host"></a>
<a id="tocssbpam.activedirectory.models.host"></a>

```json
{
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
}

```

This model represents a host machine.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this host.|
|activeDirectoryObjectId|string(uuid)¦null|false|none|Unique id from AD sync (usually same as Id).|
|name|string¦null|false|none|Name of the host.|
|distinguishedName|string¦null|false|none|Distingished name from active directory|
|ipAddress|string¦null|false|none|IP address of host.|
|os|string¦null|false|none|Name of OS on host.|
|version|string¦null|false|none|Verion of OS on host.|
|lsaLookupCache|string¦null|false|none|Most recent LsaLookupCacheMaxSize|
|lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|Date/time of last system update.|
|credentialId|string(uuid)¦null|false|none|Id of service account for this host|
|hasSSH|boolean|false|none|True if the host supports SSH.|
|activeDirectoryDomainId|string(uuid)¦null|false|none|Id of active directory domain if host is a member of a domain.|
|activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|dnsHostName|string¦null|false|none|DNS hostname.|
|netBiosName|string¦null|false|none|NetBios hostname.|
|platformId|string(uuid)¦null|false|none|PlatformId|
|users|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|List of users associated with this host.|
|groups|[[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)]¦null|false|read-only|List of groups associated with this host.|
|features|[[SbPAM.ActiveDirectory.Models.HostFeature](../Models/sbpam.activedirectory.models.hostfeature.md)]¦null|false|read-only|List of features installed on this host.|
|services|[[SbPAM.ActiveDirectory.Models.HostService](../Models/sbpam.activedirectory.models.hostservice.md)]¦null|false|read-only|List of services that have accounts that can be managed.|
|scheduledTasks|[[SbPAM.ActiveDirectory.Models.HostScheduledTask](../Models/sbpam.activedirectory.models.hostscheduledtask.md)]¦null|false|read-only|List of scheduled tasks that have accounts that can be managed.|
|databases|[[SbPAM.ActiveDirectory.Models.HostDatabase](../Models/sbpam.activedirectory.models.hostdatabase.md)]¦null|false|read-only|List of SQL Server database server instances found on Windows host|
|databaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|List of SQL Server databases found on Windows host|
|databaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|List of SQL Server databse roles found on Windows host|
|samaccountname|string¦null|false|none|sAMAccountname for host (from ActiveDirectory) NOTE: this includes the NETBIOS name to make it unique|
|isDomainController|boolean|false|none|Boolean indicating if this host is a Domain Controller|
|isGlobalCatalog|boolean¦null|false|none|Boolean indicating if this host is a Global Catalog server|
|usnChanged|integer(int64)|false|none|USN from Active Directory|
|objectSid|string¦null|false|none|SID from Active Directory|
|added|string(date-time)|false|none|UTC Time of when host was Added to NPS|
|deleted|boolean|false|none|True if this host has been deleted.|
|lastScannedUtc|string(date-time)¦null|false|none|When this host was last scanned (UTC)<br>Used to determine data freshness and identify users/groups that were not found in the most recent scan.<br>Compare with HostUser.LastSeenUtc to detect deleted users.|
|scanStartedUtc|string(date-time)¦null|false|none|When the current scan started (UTC).<br>Set when scan begins, used during scan for last_seen_utc timestamps.<br>Cleared when scan completes (copied to LastScannedUtc).|
|isVirtual|boolean|false|none|True if not a real host<br>Used for AzureAD tenants|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


