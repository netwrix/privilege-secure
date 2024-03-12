
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
    "specificGroups": null,
    "nameFormat": "DistinguishedName",
    "fullScan": false,
    "useGlobalCatalog": false,
    "domain": "string",
    "domainController": "string",
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
  "activeDirectoryDomain": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "domainName": "string",
    "netBiosName": "string",
    "domainController": "string",
    "usnChanged": 0,
    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
    "activeDirectoryDomainConfiguration": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "activeDirectoryDomain": [
        {}
      ],
      "name": "string",
      "controllers": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "activeDirectoryDomain": {},
          "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
          "activeDirectoryDomainConfiguration": {},
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        }
      ],
      "enabled": true,
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "useSsl": true,
      "functionalLevel": "string",
      "syncActionQueueId": "52e1c928-ebc8-4a61-b81e-9a896250c15a",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "functionalLevel": "string",
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
                "distinguishedName": "string",
                "ipAddress": "string",
                "os": "string",
                "version": "string",
                "lsaLookupCache": "string",
                "lastUpdatedDateTimeUtc": "2019-08-24T14:15:22Z",
                "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                "hasSSH": true,
                "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                "activeDirectoryDomain": {},
                "dnsHostName": "string",
                "netBiosName": "string",
                "users": [
                  {}
                ],
                "groups": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "sid": "string",
                    "unixId": 0,
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUserGroupJoin": [],
                    "hostGroupGroupJoins": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "features": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "version": "string",
                    "description": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {}
                  }
                ],
                "services": [
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
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
                  }
                ],
                "scheduledTasks": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "userName": "string",
                    "name": "string",
                    "taskPath": "string",
                    "description": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "source": "string",
                    "nextRunTimeUtc": "2019-08-24T14:15:22Z",
                    "lastRunTimeUtc": "2019-08-24T14:15:22Z",
                    "lastRunResult": 0,
                    "scheduledTaskTriggers": [],
                    "scheduledTaskActions": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
                  }
                ],
                "databases": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "fullName": "string",
                    "product": "string",
                    "version": "string",
                    "isClustered": true,
                    "clusterName": "string",
                    "type": "PostgreSQL",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {}
                  }
                ],
                "databaseDbs": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "databaseId": "string",
                    "ownerSid": "string",
                    "createDate": "2019-08-24T14:15:22Z",
                    "isOnline": true,
                    "statusDesc": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUsers": [],
                    "hostGroups": [],
                    "hostDbRoles": []
                  }
                ],
                "databaseRoles": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "sid": "string",
                    "principalId": "string",
                    "createDate": "2019-08-24T14:15:22Z",
                    "modifyDate": "2019-08-24T14:15:22Z",
                    "isDisabled": true,
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
                    "databaseDb": {},
                    "hostUsers": [],
                    "hostGroups": []
                  }
                ],
                "samaccountname": "string",
                "isDomainController": true,
                "isGlobalCatalog": true,
                "usnChanged": 0,
                "objectSid": "string",
                "added": "2019-08-24T14:15:22Z",
                "deleted": true,
                "isVirtual": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    "name": "string",
                    "sid": "string",
                    "unixId": 0,
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUserGroupJoin": [],
                    "hostGroupGroupJoins": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                  "host": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                    "name": "string",
                    "distinguishedName": "string",
                    "ipAddress": "string",
                    "os": "string",
                    "version": "string",
                    "lsaLookupCache": "string",
                    "lastUpdatedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hasSSH": true,
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "dnsHostName": "string",
                    "netBiosName": "string",
                    "users": [],
                    "groups": [],
                    "features": [],
                    "services": [],
                    "scheduledTasks": [],
                    "databases": [],
                    "databaseDbs": [],
                    "databaseRoles": [],
                    "samaccountname": "string",
                    "isDomainController": true,
                    "isGlobalCatalog": true,
                    "usnChanged": 0,
                    "objectSid": "string",
                    "added": "2019-08-24T14:15:22Z",
                    "deleted": true,
                    "isVirtual": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "hostUsers": [
                    {}
                  ],
                  "hostGroups": [
                    {}
                  ],
                  "hostDbRoles": [
                    {}
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
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                  "host": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                    "name": "string",
                    "distinguishedName": "string",
                    "ipAddress": "string",
                    "os": "string",
                    "version": "string",
                    "lsaLookupCache": "string",
                    "lastUpdatedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hasSSH": true,
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "dnsHostName": "string",
                    "netBiosName": "string",
                    "users": [],
                    "groups": [],
                    "features": [],
                    "services": [],
                    "scheduledTasks": [],
                    "databases": [],
                    "databaseDbs": [],
                    "databaseRoles": [],
                    "samaccountname": "string",
                    "isDomainController": true,
                    "isGlobalCatalog": true,
                    "usnChanged": 0,
                    "objectSid": "string",
                    "added": "2019-08-24T14:15:22Z",
                    "deleted": true,
                    "isVirtual": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUsers": [],
                    "hostGroups": [],
                    "hostDbRoles": []
                  },
                  "hostUsers": [
                    {}
                  ],
                  "hostGroups": [
                    {}
                  ]
                }
              ],
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
                "distinguishedName": "string",
                "ipAddress": "string",
                "os": "string",
                "version": "string",
                "lsaLookupCache": "string",
                "lastUpdatedDateTimeUtc": "2019-08-24T14:15:22Z",
                "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                "hasSSH": true,
                "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                "activeDirectoryDomain": {},
                "dnsHostName": "string",
                "netBiosName": "string",
                "users": [
                  {
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
                    "host": {},
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
                    "hostUserGroupJoin": [],
                    "hostDatabaseDbs": [],
                    "hostDatabaseRoles": [],
                    "deleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "groups": [
                  {}
                ],
                "features": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "version": "string",
                    "description": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {}
                  }
                ],
                "services": [
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
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
                  }
                ],
                "scheduledTasks": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "userName": "string",
                    "name": "string",
                    "taskPath": "string",
                    "description": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "source": "string",
                    "nextRunTimeUtc": "2019-08-24T14:15:22Z",
                    "lastRunTimeUtc": "2019-08-24T14:15:22Z",
                    "lastRunResult": 0,
                    "scheduledTaskTriggers": [],
                    "scheduledTaskActions": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
                  }
                ],
                "databases": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "fullName": "string",
                    "product": "string",
                    "version": "string",
                    "isClustered": true,
                    "clusterName": "string",
                    "type": "PostgreSQL",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {}
                  }
                ],
                "databaseDbs": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "databaseId": "string",
                    "ownerSid": "string",
                    "createDate": "2019-08-24T14:15:22Z",
                    "isOnline": true,
                    "statusDesc": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUsers": [],
                    "hostGroups": [],
                    "hostDbRoles": []
                  }
                ],
                "databaseRoles": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "sid": "string",
                    "principalId": "string",
                    "createDate": "2019-08-24T14:15:22Z",
                    "modifyDate": "2019-08-24T14:15:22Z",
                    "isDisabled": true,
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
                    "databaseDb": {},
                    "hostUsers": [],
                    "hostGroups": []
                  }
                ],
                "samaccountname": "string",
                "isDomainController": true,
                "isGlobalCatalog": true,
                "usnChanged": 0,
                "objectSid": "string",
                "added": "2019-08-24T14:15:22Z",
                "deleted": true,
                "isVirtual": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "hostUserGroupJoin": [
                {
                  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                  "user": {
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
                    "host": {},
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
                    "hostUserGroupJoin": [],
                    "hostDatabaseDbs": [],
                    "hostDatabaseRoles": [],
                    "deleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                  "group": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
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
    "objectSid": "string",
    "maxRenewAge": 0,
    "maxTicketAge": 0,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "status": "Created",
  "activeDirectorySyncStatsError": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "errorTimeUtc": "2019-08-24T14:15:22Z",
      "errorMessage": "string",
      "activeDirectorySyncStatsId": "bc495a2b-2fc6-4b98-a370-0114c0820911",
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
          "specificGroups": null,
          "nameFormat": "DistinguishedName",
          "fullScan": false,
          "useGlobalCatalog": false,
          "domain": "string",
          "domainController": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
        "activeDirectoryDomain": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "domainName": "string",
          "netBiosName": "string",
          "domainController": "string",
          "usnChanged": 0,
          "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
          "activeDirectoryDomainConfiguration": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "activeDirectoryDomain": [
              {}
            ],
            "name": "string",
            "controllers": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "activeDirectoryDomain": {},
                "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                "activeDirectoryDomainConfiguration": {},
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
            ],
            "enabled": true,
            "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
            "useSsl": true,
            "functionalLevel": "string",
            "syncActionQueueId": "52e1c928-ebc8-4a61-b81e-9a896250c15a",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "functionalLevel": "string",
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
                    "host": {},
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
                    "hostUserGroupJoin": [],
                    "hostDatabaseDbs": [],
                    "hostDatabaseRoles": [],
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
                    "host": {},
                    "hostUserGroupJoin": [],
                    "hostGroupGroupJoins": [],
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
          "objectSid": "string",
          "maxRenewAge": 0,
          "maxTicketAge": 0,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "status": "Created",
        "activeDirectorySyncStatsError": [],
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|domainController|string¦null|false|none|none|
|usersProcessed|integer(int32)|false|none|none|
|groupsProcessed|integer(int32)|false|none|none|
|membersProcessed|integer(int32)|false|none|none|
|computersProcessed|integer(int32)|false|none|none|
|serviceAccountsProcessed|integer(int32)|false|none|none|
|startTimeUtc|string(date-time)¦null|false|none|none|
|endTimeUtc|string(date-time)¦null|false|none|none|
|errorCount|integer(int32)|false|none|none|
|warningCount|integer(int32)|false|none|none|
|jobSettingsId|string(uuid)¦null|false|none|none|
|jobSettings|[SbPAM.ActiveDirectory.Models.AdSyncInput](../Models/sbpam.activedirectory.models.adsyncinput.md)|false|none|none|
|activeDirectoryDomainId|string(uuid)¦null|false|none|none|
|activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|none|
|status|[SbPAM.ActiveDirectory.Models.Enums.ActiveDirectorySyncStatusType](../Models/sbpam.activedirectory.models.enums.activedirectorysyncstatustype.md)|false|none|none|
|activeDirectorySyncStatsError|[[SbPAM.ActiveDirectory.Models.ActiveDirectorySyncStatsError](../Models/sbpam.activedirectory.models.activedirectorysyncstatserror.md)]¦null|false|read-only|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


