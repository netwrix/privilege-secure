
## Get list of members for protected group (Auth roles: Admin,App)

<a id="opIdGetallowedMembers"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/ProtectedGroup/{groupId}/AllowedMembers \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ManagedResource/ProtectedGroup/{groupId}/AllowedMembers -Headers $Headers -ContentType "application/json"
```

`GET /api/v1/ManagedResource/ProtectedGroup/{groupId}/AllowedMembers`

<h3 id="get-list-of-members-for-protected-group-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|groupId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "userName": "string",
    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
    "allowedProtectedGroupId": "9d480d33-faff-4107-bf1e-2318ef1cb9ba",
    "allowedProtectedGroup": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "allowedProtectedGroupMember": [
        {}
      ],
      "currentProtectedGroupMember": [
        {}
      ],
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "managedResource": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "type": "Host",
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
                    "member": {},
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
                    "hostGroup": {},
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
          "users": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
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
                  "activeDirectoryDomain": [
                    {}
                  ],
                  "name": "string",
                  "controllers": [
                    {}
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
                    "activeDirectoryGroupHostUser": [],
                    "activeDirectoryGroupGroupGroup": [],
                    "activeDirectoryGroupGroupMember": [],
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "groupTokenId": 0,
                    "name": "string",
                    "sid": "string",
                    "hostGroupGroupJoins": [],
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
                  "host": {},
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
                  "host": {},
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
            }
          ],
          "groups": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "sid": "string",
              "unixId": 0,
              "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
              "host": {},
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
                    "activeDirectoryGroupHostUser": [],
                    "activeDirectoryGroupGroupGroup": [],
                    "activeDirectoryGroupGroupMember": [],
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "groupTokenId": 0,
                    "name": "string",
                    "sid": "string",
                    "hostGroupGroupJoins": [],
                    "deleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
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
              "scheduledTaskTriggers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "enabled": true,
                  "endBoundary": "string",
                  "executionThrottleLimit": "string",
                  "taskName": "string",
                  "startBoundary": "string",
                  "repetitionDuration": "string",
                  "repetitionInterval": "string",
                  "repetitionStopAtDurationEnd": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "scheduledTaskActions": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "classId": "f0846d40-4884-40d5-8fc5-9f2c5ef371c4",
                  "data": "string",
                  "arguments": "string",
                  "execute": "string",
                  "workingDirectory": "string",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
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
              "hostUsers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "hostUserGroupJoin": [
                    {}
                  ],
                  "hostDatabaseDbs": [
                    {}
                  ],
                  "hostDatabaseRoles": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
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
                    {}
                  ],
                  "activeDirectoryGroupGroupGroup": [
                    {}
                  ],
                  "activeDirectoryGroupGroupMember": [
                    {}
                  ],
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "groupTokenId": 0,
                  "name": "string",
                  "sid": "string",
                  "hostGroupGroupJoins": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                  "host": {},
                  "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
                  "databaseDb": {},
                  "hostUsers": [
                    {}
                  ],
                  "hostGroups": [
                    {}
                  ]
                }
              ]
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
                "hostUsers": [
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
                    "activeDirectoryGroupHostUser": [],
                    "activeDirectoryGroupGroupGroup": [],
                    "activeDirectoryGroupGroupMember": [],
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "groupTokenId": 0,
                    "name": "string",
                    "sid": "string",
                    "hostGroupGroupJoins": [],
                    "deleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "hostDbRoles": [
                  {}
                ]
              },
              "hostUsers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "hostUserGroupJoin": [
                    {}
                  ],
                  "hostDatabaseDbs": [
                    {}
                  ],
                  "hostDatabaseRoles": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
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
                    {}
                  ],
                  "activeDirectoryGroupGroupGroup": [
                    {}
                  ],
                  "activeDirectoryGroupGroupMember": [
                    {}
                  ],
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "groupTokenId": 0,
                  "name": "string",
                  "sid": "string",
                  "hostGroupGroupJoins": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ]
            }
          ],
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
        "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
        "hostScanHost": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "dnsHostName": "string",
          "ipAddress": "string",
          "os": "string",
          "version": "string",
          "lsaLookupCache": "string",
          "lastUpdatedDateTimeUtc": "2019-08-24T14:15:22Z",
          "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
          "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
          "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
          "lastScanTimeUtc": "2019-08-24T14:15:22Z",
          "lastScanStartTimeUtc": "2019-08-24T14:15:22Z",
          "hostScanUser": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "displayName": "string",
              "samaccountname": "string",
              "lastLogonTimestamp": "2019-08-24T14:15:22Z",
              "sid": "string",
              "passwordHash": "string",
              "passwordChangedDateTimeUtc": "2019-08-24T14:15:22Z",
              "passwordExpirationDateTimeUtc": "2019-08-24T14:15:22Z",
              "unixId": 0,
              "unixGroupId": 0,
              "homeDirectory": "string",
              "shell": "string",
              "privilege": "NotSet",
              "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
              "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "hostScanUserGroupJoin": [
                {
                  "hostScanUserId": "0dbfca4b-3606-4b03-8341-fbc8d48cc555",
                  "hostScanUser": {},
                  "hostScanGroupId": "3a6ac6b0-81d0-4735-a9aa-15ee925f1be7",
                  "hostScanGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "sid": "string",
                    "unixId": 0,
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "hostScanUserGroupJoin": [],
                    "hostScanGroupGroupJoin": [],
                    "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
              "isDisabled": true,
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "hostScanGroup": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "sid": "string",
              "unixId": 0,
              "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "hostScanUserGroupJoin": [
                {
                  "hostScanUserId": "0dbfca4b-3606-4b03-8341-fbc8d48cc555",
                  "hostScanUser": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "displayName": "string",
                    "samaccountname": "string",
                    "lastLogonTimestamp": "2019-08-24T14:15:22Z",
                    "sid": "string",
                    "passwordHash": "string",
                    "passwordChangedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "passwordExpirationDateTimeUtc": "2019-08-24T14:15:22Z",
                    "unixId": 0,
                    "unixGroupId": 0,
                    "homeDirectory": "string",
                    "shell": "string",
                    "privilege": "NotSet",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "hostScanUserGroupJoin": [],
                    "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                    "isDisabled": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "hostScanGroupId": "3a6ac6b0-81d0-4735-a9aa-15ee925f1be7",
                  "hostScanGroup": {}
                }
              ],
              "hostScanGroupGroupJoin": [
                {
                  "hostScanGroupId": "3a6ac6b0-81d0-4735-a9aa-15ee925f1be7",
                  "hostScanGroup": {},
                  "hostScanGroupMemberId": "efff20d8-6643-4ee0-9dc4-4b0f3fee8eb4"
                }
              ],
              "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "hostScanFeature": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "version": "string",
              "description": "string",
              "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "hostObjectId": "427648af-40d4-4fb9-b489-a7fa0537c5f4"
            }
          ],
          "hostScanJobHostJoin": [
            {
              "hostScanJobId": "1fe689d7-5921-4446-816e-c9f37551fba6",
              "hostScanJob": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdByUserName": "string",
                "createdFromAddress": "string",
                "hostScanJobHostJoin": [
                  {}
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
              "actionQueue": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
                "runUserId": "11e1d3c5-42aa-462d-9662-c4e7c8fe20b0",
                "timeCreated": "2019-08-24T14:15:22Z",
                "timeStarted": "2019-08-24T14:15:22Z",
                "timeFinished": "2019-08-24T14:15:22Z",
                "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
                "status": null,
                "statusDescription": "string",
                "failureReason": null,
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "trigger": true,
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "action": [
                    {}
                  ],
                  "actionGroupJob": [
                    {}
                  ],
                  "actionQueue": [
                    {}
                  ]
                },
                "actionQueueAction": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "action": {},
                    "status": null,
                    "jobType": "None",
                    "statusDescription": "string",
                    "result": "string",
                    "results": "string",
                    "actionQueueActionParameter": [],
                    "actionLog": [],
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "startTime": "2019-08-24T14:15:22Z",
                    "endTime": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "heartbeatUtc": "2019-08-24T14:15:22Z",
                    "complete": true
                  }
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "hostConnected": true,
          "netBiosName": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
        "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
        "website": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "avatarUrl": "string",
          "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
          "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
          "logonUrl": "string",
          "uris": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
              "website": {},
              "uri": "string",
              "match": "Domain",
              "matchType": "Domain",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "isVirtual": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
        "azureAdTenant": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "tenantId": "string",
          "logonUrl": "string",
          "emailDomain": "string",
          "associatedDomainId": "ff9f5d4c-96c6-4b4d-bd1f-f4b6029efcd8",
          "processGroupMembership": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
        "secretVault": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
        "managedDatabase": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "server": "string",
          "port": 0,
          "type": "PostgreSQL",
          "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
          "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
          "integratedSecurity": true,
          "trustServerCertificate": true,
          "encrypted": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
        "platform": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "builtInAccount": "string",
          "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
          "passwordComplexityPolicy": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "lowerCase": true,
            "upperCase": true,
            "specialCharacter": true,
            "space": true,
            "numeric": true,
            "mustEndWith": "None",
            "mustStartWith": "None",
            "length": 0,
            "maxConsecutive": 0,
            "charsToExclude": "string",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
            "type": "Password"
          },
          "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
          "scheduledChangePolicy": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
          "protectionPolicySchedule": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
          "scanSchedule": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
          "verificationSchedule": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "resetOnMismatch": true,
          "icon": "string",
          "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
          "type": "Unspecified",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "displayName": "string",
        "ipAddress": "string",
        "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
        "serviceAccount": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "domain": "string",
          "username": "string",
          "password": "string",
          "salt": "string",
          "enablePassword": "string",
          "enableSalt": "string",
          "name": "string",
          "description": "string",
          "type": "Configuration",
          "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
          "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
          "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
          "platform": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "builtInAccount": "string",
            "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
            "passwordComplexityPolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "lowerCase": true,
              "upperCase": true,
              "specialCharacter": true,
              "space": true,
              "numeric": true,
              "mustEndWith": "None",
              "mustStartWith": "None",
              "length": 0,
              "maxConsecutive": 0,
              "charsToExclude": "string",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "type": "Password"
            },
            "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
            "scheduledChangePolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
            "protectionPolicySchedule": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
            "scanSchedule": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
            "verificationSchedule": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "resetOnMismatch": true,
            "icon": "string",
            "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
            "type": "Unspecified",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "sudoCommand": "string",
          "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
          "passwordVaultConnector": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "connectorConfigurationId": "a5468742-db00-4969-b437-badd97e00c25",
            "connectorTemplateId": "5434828d-4b09-4271-b749-170dedf7f68a",
            "monitorActionQueueId": "e8840e41-7d09-4628-a1fc-a5094a65eb9c",
            "monitorActionQueue": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
              "runUserId": "11e1d3c5-42aa-462d-9662-c4e7c8fe20b0",
              "timeCreated": "2019-08-24T14:15:22Z",
              "timeStarted": "2019-08-24T14:15:22Z",
              "timeFinished": "2019-08-24T14:15:22Z",
              "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
              "status": null,
              "statusDescription": "string",
              "failureReason": null,
              "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
              "actionGroup": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "trigger": true,
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "action": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionTemplate": {},
                    "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                    "actionGroup": {},
                    "actionParameter": [],
                    "continueOnFail": true,
                    "executionOrder": 0,
                    "executionPath": "string",
                    "timeout": 0,
                    "displayName": "string",
                    "actionQueueAction": [],
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "classification": null,
                    "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                    "pairedAction": {},
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true
                  }
                ],
                "actionGroupJob": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                    "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
                    "job": {},
                    "actionGroup": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "actionQueue": [
                  {}
                ]
              },
              "actionQueueAction": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                  "actionQueue": {},
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "action": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionTemplate": {},
                    "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                    "actionGroup": {},
                    "actionParameter": [],
                    "continueOnFail": true,
                    "executionOrder": 0,
                    "executionPath": "string",
                    "timeout": 0,
                    "displayName": "string",
                    "actionQueueAction": [],
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "classification": null,
                    "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                    "pairedAction": {},
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true
                  },
                  "status": null,
                  "jobType": "None",
                  "statusDescription": "string",
                  "result": "string",
                  "results": "string",
                  "actionQueueActionParameter": [
                    {}
                  ],
                  "actionLog": [
                    {}
                  ],
                  "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                  "registeredService": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "type": "ActionService",
                    "name": "string",
                    "added": "2019-08-24T14:15:22Z",
                    "refreshToken": "string",
                    "appTokenId": "bf560fff-9cd4-435c-bb81-f9886099325d",
                    "appToken": {},
                    "status": null,
                    "description": "string",
                    "version": "string",
                    "serviceRegistrationId": "6322e579-32c5-4925-9aad-e20adc6d7ecb",
                    "serviceRegistration": {},
                    "actionServiceProperty": [],
                    "actionQueueAction": [],
                    "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "startTime": "2019-08-24T14:15:22Z",
                  "endTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "heartbeatUtc": "2019-08-24T14:15:22Z",
                  "complete": true
                }
              ],
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "configuration": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "integrationConnector": {},
              "integrationConnectorTemplate": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "type": "GenericConnector",
                "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                "configurationValues": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                    "name": "string",
                    "value": "string",
                    "defaultValue": "string",
                    "description": "string",
                    "displayOrder": 0,
                    "required": true,
                    "connectorId": "7200b21f-cb26-4f4f-9504-421d49021e96",
                    "integrationConnectorTemplateId": "6a61e246-6003-44f9-ac05-d03d337f7459",
                    "connectorConfiguration": {},
                    "type": "Uri",
                    "advanced": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "configurationValues": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                "name": "string",
                "value": "string",
                "defaultValue": "string",
                "description": "string",
                "displayOrder": 0,
                "required": true,
                "connectorId": "7200b21f-cb26-4f4f-9504-421d49021e96",
                "integrationConnectorTemplateId": "6a61e246-6003-44f9-ac05-d03d337f7459",
                "connectorConfiguration": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "integrationConnector": {},
                  "integrationConnectorTemplate": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "type": "GenericConnector",
                    "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                    "configurationValues": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "type": "Uri",
                "advanced": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
            ],
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "passwordVaultInfo": "string",
          "changeOnCheckout": true,
          "changeOnRelease": true,
          "showPassword": true,
          "credentialJoin": [
            {
              "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
              "credential": {},
              "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
              "credentialGroup": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "credentialJoin": [
                  {}
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
            }
          ],
          "isDeleted": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "authenticationMethod": "Password",
          "keyGenAlgorithm": "string",
          "keyLength": 0,
          "autoGenPassphrase": true,
          "passphrase": "string",
          "privateKey": "string",
          "publicKey": "string"
        },
        "manageAccount": "Unmanaged",
        "protectedGroup": [
          {}
        ],
        "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
        "activityConfiguration": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "type": "Generic",
          "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
          "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "isDefault": true,
          "isDeleted": true,
          "isUserModified": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "activityConfigurationSettings": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "key": "string",
              "value": "string",
              "type": "String",
              "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "customFields": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
              "customFieldNumber": 0,
              "name": "string",
              "label": "string",
              "description": "string",
              "options": "string",
              "length": 0,
              "customFieldDataType": "Integer",
              "required": true,
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "deleteAccount": true,
          "sessionRetryInterval": 0,
          "approvedWorkflowEmailTemplateId": "7323f20a-d61f-4cbd-9b9a-1ce63404d7a1",
          "notifyApproversWorkflowEmailTemplateId": "5997e1ba-a294-43d0-acaa-18d25ec8482f",
          "maxSessionLength": 0,
          "allowSessionExtension": true,
          "sessionExtensionMinutes": 0,
          "sessionExtensionCount": 0,
          "sessionMonitorInterval": 0,
          "expirationTimeoutThreshold": 0,
          "rdpProxyHost": "string",
          "sshProxyHost": "string",
          "sshScanDc": true,
          "recordAudio": true,
          "proxyAutoConnect": true,
          "record": true,
          "approvalTypeRequired": "Deny",
          "approvalWorkflowId": "2db777ef-e869-4d8f-8dc2-f01750b5b4aa",
          "approvalWorkflowEmailTemplateId": "3416bc31-9e7f-4338-b33c-7314dfcb92d4",
          "monitorEntireSession": true,
          "allowViewPassword": true,
          "allowPasswordAccess": true,
          "allowAutofillPassword": true,
          "leaveInGroup": true,
          "activityTokenComplexity": "123519da-14b2-440d-af88-b17b69fb9aa6",
          "clearWebsiteDataAfterStop": true,
          "clearWebsiteDataBeforeStart": true,
          "notesRequired": true,
          "ticketRequired": true,
          "viewPasswordInSeconds": 0
        },
        "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
        "actionQueue": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
          "runUserId": "11e1d3c5-42aa-462d-9662-c4e7c8fe20b0",
          "timeCreated": "2019-08-24T14:15:22Z",
          "timeStarted": "2019-08-24T14:15:22Z",
          "timeFinished": "2019-08-24T14:15:22Z",
          "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
          "status": null,
          "statusDescription": "string",
          "failureReason": null,
          "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
          "actionGroup": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "trigger": true,
            "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "action": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                "actionTemplate": {
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "displayName": "string",
                  "description": "string",
                  "newActionDisplayName": "string",
                  "icon": "string",
                  "definition": "string",
                  "userDefined": true,
                  "actionTemplateParameter": [
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
                  ],
                  "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                  "actionPack": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "icon": "string",
                    "description": "string",
                    "version": "string",
                    "timeoutOverride": 0,
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {},
                "actionParameter": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "value": "string",
                    "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "continueOnFail": true,
                "executionOrder": 0,
                "executionPath": "string",
                "timeout": 0,
                "displayName": "string",
                "actionQueueAction": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "action": {},
                    "status": null,
                    "jobType": "None",
                    "statusDescription": "string",
                    "result": "string",
                    "results": "string",
                    "actionQueueActionParameter": [],
                    "actionLog": [],
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "startTime": "2019-08-24T14:15:22Z",
                    "endTime": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "heartbeatUtc": "2019-08-24T14:15:22Z",
                    "complete": true
                  }
                ],
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "classification": null,
                "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                "pairedAction": {},
                "isDeleted": true,
                "isDefault": true,
                "isUserModified": true
              }
            ],
            "actionGroupJob": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
                "job": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "actionGroupJob": [
                    {}
                  ],
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionGroup": {},
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
            ],
            "actionQueue": [
              {}
            ]
          },
          "actionQueueAction": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
              "actionQueue": {},
              "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
              "action": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                "actionTemplate": {
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "displayName": "string",
                  "description": "string",
                  "newActionDisplayName": "string",
                  "icon": "string",
                  "definition": "string",
                  "userDefined": true,
                  "actionTemplateParameter": [
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
                  ],
                  "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                  "actionPack": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "icon": "string",
                    "description": "string",
                    "version": "string",
                    "timeoutOverride": 0,
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "trigger": true,
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "action": [
                    {}
                  ],
                  "actionGroupJob": [
                    {}
                  ],
                  "actionQueue": [
                    {}
                  ]
                },
                "actionParameter": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "value": "string",
                    "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "continueOnFail": true,
                "executionOrder": 0,
                "executionPath": "string",
                "timeout": 0,
                "displayName": "string",
                "actionQueueAction": [
                  {}
                ],
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "classification": null,
                "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                "pairedAction": {},
                "isDeleted": true,
                "isDefault": true,
                "isUserModified": true
              },
              "status": null,
              "jobType": "None",
              "statusDescription": "string",
              "result": "string",
              "results": "string",
              "actionQueueActionParameter": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "value": "string",
                  "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                  "actionTemplateParameter": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "displayName": "string",
                    "description": "string",
                    "sortOrder": 0,
                    "required": true,
                    "type": null,
                    "multiline": true,
                    "defaultValue": "string",
                    "shouldSerialize_ValueSet": true,
                    "_ValueSet": "string",
                    "valueSet": [],
                    "limitToValueSet": true,
                    "helperText": "string",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "actionQueueActionId": "e164a984-e446-491c-add7-9f34c69273d9",
                  "actionQueueAction": {}
                }
              ],
              "actionLog": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "type": null,
                  "hResult": 0,
                  "timestamp": "2019-08-24T14:15:22Z",
                  "message": "string",
                  "version": "string",
                  "actionQueueActionId": "e164a984-e446-491c-add7-9f34c69273d9",
                  "actionQueueAction": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
              "registeredService": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "type": "ActionService",
                "name": "string",
                "added": "2019-08-24T14:15:22Z",
                "refreshToken": "string",
                "appTokenId": "bf560fff-9cd4-435c-bb81-f9886099325d",
                "appToken": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "token": "string",
                  "tokenSalt": "string",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "expirationDate": "2019-08-24T14:15:22Z",
                  "revoked": true,
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "status": null,
                "description": "string",
                "version": "string",
                "serviceRegistrationId": "6322e579-32c5-4925-9aad-e20adc6d7ecb",
                "serviceRegistration": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "type": "ActionService",
                  "dnsHostName": "string",
                  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                  "serviceName": "string",
                  "settingsFilePath": "string",
                  "settingsFileContents": "string",
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                  "actionQueue": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionServiceProperty": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "value": "string",
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "actionQueueAction": [
                  {}
                ],
                "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "startTime": "2019-08-24T14:15:22Z",
              "endTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "heartbeatUtc": "2019-08-24T14:15:22Z",
              "complete": true
            }
          ],
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "managedResourceJoin": [
          {
            "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
            "managedResource": {},
            "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
            "managedResourceGroup": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "type": "Local",
              "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
              "manageAccounts": "PerResource",
              "notificationEmailList": "string",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "managedResourceJoin": [
                {}
              ],
              "platform": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "builtInAccount": "string",
                "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                "passwordComplexityPolicy": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "lowerCase": true,
                  "upperCase": true,
                  "specialCharacter": true,
                  "space": true,
                  "numeric": true,
                  "mustEndWith": "None",
                  "mustStartWith": "None",
                  "length": 0,
                  "maxConsecutive": 0,
                  "charsToExclude": "string",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "type": "Password"
                },
                "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
                "scheduledChangePolicy": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
                "protectionPolicySchedule": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
                "scanSchedule": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                "verificationSchedule": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "resetOnMismatch": true,
                "icon": "string",
                "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
                "type": "Unspecified",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "managedResourceGroupPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {},
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "priority": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true,
                    "managedAccountPolicyJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "managedResourcePolicyJoin": [],
                    "managedResourceGroupPolicyJoin": [],
                    "activityJoin": [],
                    "activityGroupJoin": [],
                    "credentialPolicyJoin": [],
                    "credentialGroupPolicyJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
                    "policyType": "Resource",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "manageResourceGroupProtectionPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {},
                  "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
                  "protectionPolicy": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "groupMonitorInterval": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "protectionPolicyGroup": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "ouMappingEnabled": true,
              "ouFqdn": "string",
              "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
              "ouDomainConfig": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "activeDirectoryDomain": [
                  {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
              "ouAutoOnboard": true,
              "ouIncludeChildren": true
            }
          }
        ],
        "managedResourcePolicyJoin": [
          {
            "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
            "managedResource": {},
            "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
            "accessControlPolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
              "activityConfiguration": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "type": "Generic",
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "isDefault": true,
                "isDeleted": true,
                "isUserModified": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "activityConfigurationSettings": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "key": "string",
                    "value": "string",
                    "type": "String",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "customFields": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "customFieldNumber": 0,
                    "name": "string",
                    "label": "string",
                    "description": "string",
                    "options": "string",
                    "length": 0,
                    "customFieldDataType": "Integer",
                    "required": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "deleteAccount": true,
                "sessionRetryInterval": 0,
                "approvedWorkflowEmailTemplateId": "7323f20a-d61f-4cbd-9b9a-1ce63404d7a1",
                "notifyApproversWorkflowEmailTemplateId": "5997e1ba-a294-43d0-acaa-18d25ec8482f",
                "maxSessionLength": 0,
                "allowSessionExtension": true,
                "sessionExtensionMinutes": 0,
                "sessionExtensionCount": 0,
                "sessionMonitorInterval": 0,
                "expirationTimeoutThreshold": 0,
                "rdpProxyHost": "string",
                "sshProxyHost": "string",
                "sshScanDc": true,
                "recordAudio": true,
                "proxyAutoConnect": true,
                "record": true,
                "approvalTypeRequired": "Deny",
                "approvalWorkflowId": "2db777ef-e869-4d8f-8dc2-f01750b5b4aa",
                "approvalWorkflowEmailTemplateId": "3416bc31-9e7f-4338-b33c-7314dfcb92d4",
                "monitorEntireSession": true,
                "allowViewPassword": true,
                "allowPasswordAccess": true,
                "allowAutofillPassword": true,
                "leaveInGroup": true,
                "activityTokenComplexity": "123519da-14b2-440d-af88-b17b69fb9aa6",
                "clearWebsiteDataAfterStop": true,
                "clearWebsiteDataBeforeStart": true,
                "notesRequired": true,
                "ticketRequired": true,
                "viewPasswordInSeconds": 0
              },
              "priority": 0,
              "isDisabled": true,
              "isDeleted": true,
              "isDefault": true,
              "isUserModified": true,
              "managedAccountPolicyJoin": [
                {
                  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                  "managedAccount": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "HostUser",
                    "locked": true,
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "managedAccountJoin": [],
                    "managedAccountPolicyJoin": [],
                    "sid": "string",
                    "userCollectionJoin": [],
                    "isReviewer": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {}
                }
              ],
              "managedAccountGroupPolicyJoin": [
                {
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Local",
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "mfaConnectorId": "360d3915-9c3c-42c2-9c41-55ba84bbd9f8",
                    "isReviewer": true,
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {}
                }
              ],
              "managedResourcePolicyJoin": [
                {}
              ],
              "managedResourceGroupPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Local",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "manageAccounts": "PerResource",
                    "notificationEmailList": "string",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
                    "ouAutoOnboard": true,
                    "ouIncludeChildren": true
                  },
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {}
                }
              ],
              "activityJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
                  "activity": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
                    "name": "string",
                    "description": "string",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "startActionGroupId": "fe816897-035e-41a8-b765-786a26e1fd7e",
                    "duringActionGroupId": "42ac0cdb-f5d6-410c-aef7-524cbda8a405",
                    "endActionGroupId": "129c4b86-8e07-4184-83ec-2719a1a163e2",
                    "activityType": "Interactive",
                    "loginAccount": "Requester",
                    "loginAccountNameFormat": "string",
                    "requesterLoginFormat": "Samaccountname",
                    "applicationToLaunch": "string",
                    "preferredRDSHostId": "14c3f91d-da41-4a85-9329-5b28802d466f",
                    "connectCredentialId": "28819070-8040-4b05-9bbf-5d58cd54636a",
                    "createAccount": true,
                    "activityGroupActivities": [],
                    "deleteAccount": true,
                    "vaultId": "867f3a98-ec66-42f4-abbc-5980239e4a28",
                    "vaultInfo": "string",
                    "logonUrl": "string",
                    "isDefault": true,
                    "isDeleted": true,
                    "isUserModified": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "isDefault": true,
                  "isDeleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "activityGroupJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                  "activityGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "name": "string",
                    "description": "string",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "activityGroupActivities": [],
                    "isDefault": true,
                    "isDeleted": true,
                    "isUserModified": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "credentialPolicyJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                  "credential": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "domain": "string",
                    "username": "string",
                    "password": "string",
                    "salt": "string",
                    "enablePassword": "string",
                    "enableSalt": "string",
                    "name": "string",
                    "description": "string",
                    "type": "Configuration",
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "sudoCommand": "string",
                    "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
                    "passwordVaultConnector": {},
                    "passwordVaultInfo": "string",
                    "changeOnCheckout": true,
                    "changeOnRelease": true,
                    "showPassword": true,
                    "credentialJoin": [],
                    "isDeleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "authenticationMethod": "Password",
                    "keyGenAlgorithm": "string",
                    "keyLength": 0,
                    "autoGenPassphrase": true,
                    "passphrase": "string",
                    "privateKey": "string",
                    "publicKey": "string"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "credentialGroupPolicyJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
                  "credentialGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "credentialJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "userAndGroupCollectionPolicyJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                  "userAndGroupCollection": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
                    "isReviewer": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "policyType": "Resource",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          }
        ],
        "manageResourceProtectionPolicyJoin": [
          {
            "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
            "managedResource": {},
            "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
            "protectionPolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "groupMonitorInterval": 0,
              "isDisabled": true,
              "isDeleted": true,
              "protectionPolicyGroup": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "deleted": true,
                  "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
                  "protectionPolicy": {},
                  "protectionPolicyGroupMember": [
                    {}
                  ],
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "manageResourceProtectionPolicyJoin": [
                {}
              ],
              "manageResourceGroupProtectionPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Local",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "manageAccounts": "PerResource",
                    "notificationEmailList": "string",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
                    "ouAutoOnboard": true,
                    "ouIncludeChildren": true
                  },
                  "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
                  "protectionPolicy": {}
                }
              ],
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          }
        ],
        "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
        "verificationSchedule": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "frequency": null,
          "periodValue": 0,
          "daysOfWeek": "string",
          "dayNumber": 0,
          "localTime": "2019-08-24T14:15:22Z",
          "utcTime": "2019-08-24T14:15:22Z",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
        "passwordComplexityPolicy": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "lowerCase": true,
          "upperCase": true,
          "specialCharacter": true,
          "space": true,
          "numeric": true,
          "mustEndWith": "None",
          "mustStartWith": "None",
          "length": 0,
          "maxConsecutive": 0,
          "charsToExclude": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "type": "Password"
        },
        "portSsh": 0,
        "portRdp": 0,
        "portWinRm": 0,
        "portWinRmHttps": 0,
        "winRmHttpSetting": "UseHttp",
        "disableWinRm": true,
        "acceptThumbprintOnFirstDiscovery": true,
        "trustedThumbprint": "string",
        "discoveredThumbprint": "string",
        "sshTrustActionType": null,
        "certificateType": null,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "isSystem": true,
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "currentProtectedGroupId": "81709e2c-ecdf-47e8-b646-c36a4fa22d8b",
    "currentProtectedGroup": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "allowedProtectedGroupMember": [
        {}
      ],
      "currentProtectedGroupMember": [
        {}
      ],
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "managedResource": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "type": "Host",
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
                    "member": {},
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
                    "hostGroup": {},
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
          "users": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
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
                  "activeDirectoryDomain": [
                    {}
                  ],
                  "name": "string",
                  "controllers": [
                    {}
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
                    "activeDirectoryGroupHostUser": [],
                    "activeDirectoryGroupGroupGroup": [],
                    "activeDirectoryGroupGroupMember": [],
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "groupTokenId": 0,
                    "name": "string",
                    "sid": "string",
                    "hostGroupGroupJoins": [],
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
                  "host": {},
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
                  "host": {},
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
            }
          ],
          "groups": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "sid": "string",
              "unixId": 0,
              "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
              "host": {},
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
                    "activeDirectoryGroupHostUser": [],
                    "activeDirectoryGroupGroupGroup": [],
                    "activeDirectoryGroupGroupMember": [],
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "groupTokenId": 0,
                    "name": "string",
                    "sid": "string",
                    "hostGroupGroupJoins": [],
                    "deleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
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
              "scheduledTaskTriggers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "enabled": true,
                  "endBoundary": "string",
                  "executionThrottleLimit": "string",
                  "taskName": "string",
                  "startBoundary": "string",
                  "repetitionDuration": "string",
                  "repetitionInterval": "string",
                  "repetitionStopAtDurationEnd": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "scheduledTaskActions": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "classId": "f0846d40-4884-40d5-8fc5-9f2c5ef371c4",
                  "data": "string",
                  "arguments": "string",
                  "execute": "string",
                  "workingDirectory": "string",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
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
              "hostUsers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "hostUserGroupJoin": [
                    {}
                  ],
                  "hostDatabaseDbs": [
                    {}
                  ],
                  "hostDatabaseRoles": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
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
                    {}
                  ],
                  "activeDirectoryGroupGroupGroup": [
                    {}
                  ],
                  "activeDirectoryGroupGroupMember": [
                    {}
                  ],
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "groupTokenId": 0,
                  "name": "string",
                  "sid": "string",
                  "hostGroupGroupJoins": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                  "host": {},
                  "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
                  "databaseDb": {},
                  "hostUsers": [
                    {}
                  ],
                  "hostGroups": [
                    {}
                  ]
                }
              ]
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
                "hostUsers": [
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
                    "activeDirectoryGroupHostUser": [],
                    "activeDirectoryGroupGroupGroup": [],
                    "activeDirectoryGroupGroupMember": [],
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "groupTokenId": 0,
                    "name": "string",
                    "sid": "string",
                    "hostGroupGroupJoins": [],
                    "deleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "hostDbRoles": [
                  {}
                ]
              },
              "hostUsers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "hostUserGroupJoin": [
                    {}
                  ],
                  "hostDatabaseDbs": [
                    {}
                  ],
                  "hostDatabaseRoles": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
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
                    {}
                  ],
                  "activeDirectoryGroupGroupGroup": [
                    {}
                  ],
                  "activeDirectoryGroupGroupMember": [
                    {}
                  ],
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  "groupTokenId": 0,
                  "name": "string",
                  "sid": "string",
                  "hostGroupGroupJoins": [
                    {}
                  ],
                  "deleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ]
            }
          ],
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
        "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
        "hostScanHost": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "dnsHostName": "string",
          "ipAddress": "string",
          "os": "string",
          "version": "string",
          "lsaLookupCache": "string",
          "lastUpdatedDateTimeUtc": "2019-08-24T14:15:22Z",
          "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
          "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
          "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
          "lastScanTimeUtc": "2019-08-24T14:15:22Z",
          "lastScanStartTimeUtc": "2019-08-24T14:15:22Z",
          "hostScanUser": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "displayName": "string",
              "samaccountname": "string",
              "lastLogonTimestamp": "2019-08-24T14:15:22Z",
              "sid": "string",
              "passwordHash": "string",
              "passwordChangedDateTimeUtc": "2019-08-24T14:15:22Z",
              "passwordExpirationDateTimeUtc": "2019-08-24T14:15:22Z",
              "unixId": 0,
              "unixGroupId": 0,
              "homeDirectory": "string",
              "shell": "string",
              "privilege": "NotSet",
              "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
              "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "hostScanUserGroupJoin": [
                {
                  "hostScanUserId": "0dbfca4b-3606-4b03-8341-fbc8d48cc555",
                  "hostScanUser": {},
                  "hostScanGroupId": "3a6ac6b0-81d0-4735-a9aa-15ee925f1be7",
                  "hostScanGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "sid": "string",
                    "unixId": 0,
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "hostScanUserGroupJoin": [],
                    "hostScanGroupGroupJoin": [],
                    "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
              "isDisabled": true,
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "hostScanGroup": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "sid": "string",
              "unixId": 0,
              "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "hostScanUserGroupJoin": [
                {
                  "hostScanUserId": "0dbfca4b-3606-4b03-8341-fbc8d48cc555",
                  "hostScanUser": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "displayName": "string",
                    "samaccountname": "string",
                    "lastLogonTimestamp": "2019-08-24T14:15:22Z",
                    "sid": "string",
                    "passwordHash": "string",
                    "passwordChangedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "passwordExpirationDateTimeUtc": "2019-08-24T14:15:22Z",
                    "unixId": 0,
                    "unixGroupId": 0,
                    "homeDirectory": "string",
                    "shell": "string",
                    "privilege": "NotSet",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "hostScanUserGroupJoin": [],
                    "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                    "isDisabled": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "hostScanGroupId": "3a6ac6b0-81d0-4735-a9aa-15ee925f1be7",
                  "hostScanGroup": {}
                }
              ],
              "hostScanGroupGroupJoin": [
                {
                  "hostScanGroupId": "3a6ac6b0-81d0-4735-a9aa-15ee925f1be7",
                  "hostScanGroup": {},
                  "hostScanGroupMemberId": "efff20d8-6643-4ee0-9dc4-4b0f3fee8eb4"
                }
              ],
              "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "hostScanFeature": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "version": "string",
              "description": "string",
              "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "hostObjectId": "427648af-40d4-4fb9-b489-a7fa0537c5f4"
            }
          ],
          "hostScanJobHostJoin": [
            {
              "hostScanJobId": "1fe689d7-5921-4446-816e-c9f37551fba6",
              "hostScanJob": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdByUserName": "string",
                "createdFromAddress": "string",
                "hostScanJobHostJoin": [
                  {}
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
              "hostScanHost": {},
              "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
              "actionQueue": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
                "runUserId": "11e1d3c5-42aa-462d-9662-c4e7c8fe20b0",
                "timeCreated": "2019-08-24T14:15:22Z",
                "timeStarted": "2019-08-24T14:15:22Z",
                "timeFinished": "2019-08-24T14:15:22Z",
                "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
                "status": null,
                "statusDescription": "string",
                "failureReason": null,
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "trigger": true,
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "action": [
                    {}
                  ],
                  "actionGroupJob": [
                    {}
                  ],
                  "actionQueue": [
                    {}
                  ]
                },
                "actionQueueAction": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "action": {},
                    "status": null,
                    "jobType": "None",
                    "statusDescription": "string",
                    "result": "string",
                    "results": "string",
                    "actionQueueActionParameter": [],
                    "actionLog": [],
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "startTime": "2019-08-24T14:15:22Z",
                    "endTime": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "heartbeatUtc": "2019-08-24T14:15:22Z",
                    "complete": true
                  }
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "hostConnected": true,
          "netBiosName": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
        "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
        "website": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "avatarUrl": "string",
          "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
          "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
          "logonUrl": "string",
          "uris": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
              "website": {},
              "uri": "string",
              "match": "Domain",
              "matchType": "Domain",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "isVirtual": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
        "azureAdTenant": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "tenantId": "string",
          "logonUrl": "string",
          "emailDomain": "string",
          "associatedDomainId": "ff9f5d4c-96c6-4b4d-bd1f-f4b6029efcd8",
          "processGroupMembership": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
        "secretVault": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
        "managedDatabase": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "server": "string",
          "port": 0,
          "type": "PostgreSQL",
          "hostDatabaseId": "f58f2189-2fc4-4903-8a65-b512f87a8978",
          "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
          "integratedSecurity": true,
          "trustServerCertificate": true,
          "encrypted": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
        "platform": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "builtInAccount": "string",
          "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
          "passwordComplexityPolicy": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "lowerCase": true,
            "upperCase": true,
            "specialCharacter": true,
            "space": true,
            "numeric": true,
            "mustEndWith": "None",
            "mustStartWith": "None",
            "length": 0,
            "maxConsecutive": 0,
            "charsToExclude": "string",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
            "type": "Password"
          },
          "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
          "scheduledChangePolicy": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
          "protectionPolicySchedule": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
          "scanSchedule": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
          "verificationSchedule": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "frequency": null,
            "periodValue": 0,
            "daysOfWeek": "string",
            "dayNumber": 0,
            "localTime": "2019-08-24T14:15:22Z",
            "utcTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "resetOnMismatch": true,
          "icon": "string",
          "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
          "type": "Unspecified",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "displayName": "string",
        "ipAddress": "string",
        "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
        "serviceAccount": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "domain": "string",
          "username": "string",
          "password": "string",
          "salt": "string",
          "enablePassword": "string",
          "enableSalt": "string",
          "name": "string",
          "description": "string",
          "type": "Configuration",
          "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
          "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
          "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
          "platform": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "builtInAccount": "string",
            "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
            "passwordComplexityPolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "lowerCase": true,
              "upperCase": true,
              "specialCharacter": true,
              "space": true,
              "numeric": true,
              "mustEndWith": "None",
              "mustStartWith": "None",
              "length": 0,
              "maxConsecutive": 0,
              "charsToExclude": "string",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "type": "Password"
            },
            "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
            "scheduledChangePolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
            "protectionPolicySchedule": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
            "scanSchedule": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
            "verificationSchedule": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "frequency": null,
              "periodValue": 0,
              "daysOfWeek": "string",
              "dayNumber": 0,
              "localTime": "2019-08-24T14:15:22Z",
              "utcTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "resetOnMismatch": true,
            "icon": "string",
            "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
            "type": "Unspecified",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "sudoCommand": "string",
          "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
          "passwordVaultConnector": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "connectorConfigurationId": "a5468742-db00-4969-b437-badd97e00c25",
            "connectorTemplateId": "5434828d-4b09-4271-b749-170dedf7f68a",
            "monitorActionQueueId": "e8840e41-7d09-4628-a1fc-a5094a65eb9c",
            "monitorActionQueue": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
              "runUserId": "11e1d3c5-42aa-462d-9662-c4e7c8fe20b0",
              "timeCreated": "2019-08-24T14:15:22Z",
              "timeStarted": "2019-08-24T14:15:22Z",
              "timeFinished": "2019-08-24T14:15:22Z",
              "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
              "status": null,
              "statusDescription": "string",
              "failureReason": null,
              "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
              "actionGroup": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "trigger": true,
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "action": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionTemplate": {},
                    "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                    "actionGroup": {},
                    "actionParameter": [],
                    "continueOnFail": true,
                    "executionOrder": 0,
                    "executionPath": "string",
                    "timeout": 0,
                    "displayName": "string",
                    "actionQueueAction": [],
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "classification": null,
                    "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                    "pairedAction": {},
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true
                  }
                ],
                "actionGroupJob": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                    "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
                    "job": {},
                    "actionGroup": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "actionQueue": [
                  {}
                ]
              },
              "actionQueueAction": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                  "actionQueue": {},
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "action": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionTemplate": {},
                    "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                    "actionGroup": {},
                    "actionParameter": [],
                    "continueOnFail": true,
                    "executionOrder": 0,
                    "executionPath": "string",
                    "timeout": 0,
                    "displayName": "string",
                    "actionQueueAction": [],
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "classification": null,
                    "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                    "pairedAction": {},
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true
                  },
                  "status": null,
                  "jobType": "None",
                  "statusDescription": "string",
                  "result": "string",
                  "results": "string",
                  "actionQueueActionParameter": [
                    {}
                  ],
                  "actionLog": [
                    {}
                  ],
                  "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                  "registeredService": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "type": "ActionService",
                    "name": "string",
                    "added": "2019-08-24T14:15:22Z",
                    "refreshToken": "string",
                    "appTokenId": "bf560fff-9cd4-435c-bb81-f9886099325d",
                    "appToken": {},
                    "status": null,
                    "description": "string",
                    "version": "string",
                    "serviceRegistrationId": "6322e579-32c5-4925-9aad-e20adc6d7ecb",
                    "serviceRegistration": {},
                    "actionServiceProperty": [],
                    "actionQueueAction": [],
                    "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "startTime": "2019-08-24T14:15:22Z",
                  "endTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "heartbeatUtc": "2019-08-24T14:15:22Z",
                  "complete": true
                }
              ],
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "configuration": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "integrationConnector": {},
              "integrationConnectorTemplate": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "type": "GenericConnector",
                "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                "configurationValues": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                    "name": "string",
                    "value": "string",
                    "defaultValue": "string",
                    "description": "string",
                    "displayOrder": 0,
                    "required": true,
                    "connectorId": "7200b21f-cb26-4f4f-9504-421d49021e96",
                    "integrationConnectorTemplateId": "6a61e246-6003-44f9-ac05-d03d337f7459",
                    "connectorConfiguration": {},
                    "type": "Uri",
                    "advanced": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            },
            "configurationValues": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                "name": "string",
                "value": "string",
                "defaultValue": "string",
                "description": "string",
                "displayOrder": 0,
                "required": true,
                "connectorId": "7200b21f-cb26-4f4f-9504-421d49021e96",
                "integrationConnectorTemplateId": "6a61e246-6003-44f9-ac05-d03d337f7459",
                "connectorConfiguration": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "integrationConnector": {},
                  "integrationConnectorTemplate": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "type": "GenericConnector",
                    "configurationId": "254ffdcc-3725-465c-b0a0-22afb2bec267",
                    "configurationValues": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "type": "Uri",
                "advanced": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
            ],
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "passwordVaultInfo": "string",
          "changeOnCheckout": true,
          "changeOnRelease": true,
          "showPassword": true,
          "credentialJoin": [
            {
              "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
              "credential": {},
              "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
              "credentialGroup": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "credentialJoin": [
                  {}
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
            }
          ],
          "isDeleted": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "authenticationMethod": "Password",
          "keyGenAlgorithm": "string",
          "keyLength": 0,
          "autoGenPassphrase": true,
          "passphrase": "string",
          "privateKey": "string",
          "publicKey": "string"
        },
        "manageAccount": "Unmanaged",
        "protectedGroup": [
          {}
        ],
        "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
        "activityConfiguration": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "type": "Generic",
          "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
          "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "isDefault": true,
          "isDeleted": true,
          "isUserModified": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "activityConfigurationSettings": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "key": "string",
              "value": "string",
              "type": "String",
              "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "customFields": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
              "customFieldNumber": 0,
              "name": "string",
              "label": "string",
              "description": "string",
              "options": "string",
              "length": 0,
              "customFieldDataType": "Integer",
              "required": true,
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ],
          "deleteAccount": true,
          "sessionRetryInterval": 0,
          "approvedWorkflowEmailTemplateId": "7323f20a-d61f-4cbd-9b9a-1ce63404d7a1",
          "notifyApproversWorkflowEmailTemplateId": "5997e1ba-a294-43d0-acaa-18d25ec8482f",
          "maxSessionLength": 0,
          "allowSessionExtension": true,
          "sessionExtensionMinutes": 0,
          "sessionExtensionCount": 0,
          "sessionMonitorInterval": 0,
          "expirationTimeoutThreshold": 0,
          "rdpProxyHost": "string",
          "sshProxyHost": "string",
          "sshScanDc": true,
          "recordAudio": true,
          "proxyAutoConnect": true,
          "record": true,
          "approvalTypeRequired": "Deny",
          "approvalWorkflowId": "2db777ef-e869-4d8f-8dc2-f01750b5b4aa",
          "approvalWorkflowEmailTemplateId": "3416bc31-9e7f-4338-b33c-7314dfcb92d4",
          "monitorEntireSession": true,
          "allowViewPassword": true,
          "allowPasswordAccess": true,
          "allowAutofillPassword": true,
          "leaveInGroup": true,
          "activityTokenComplexity": "123519da-14b2-440d-af88-b17b69fb9aa6",
          "clearWebsiteDataAfterStop": true,
          "clearWebsiteDataBeforeStart": true,
          "notesRequired": true,
          "ticketRequired": true,
          "viewPasswordInSeconds": 0
        },
        "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
        "actionQueue": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
          "runUserId": "11e1d3c5-42aa-462d-9662-c4e7c8fe20b0",
          "timeCreated": "2019-08-24T14:15:22Z",
          "timeStarted": "2019-08-24T14:15:22Z",
          "timeFinished": "2019-08-24T14:15:22Z",
          "heartBeatDateTimeUtc": "2019-08-24T14:15:22Z",
          "status": null,
          "statusDescription": "string",
          "failureReason": null,
          "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
          "actionGroup": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "trigger": true,
            "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "action": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                "actionTemplate": {
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "displayName": "string",
                  "description": "string",
                  "newActionDisplayName": "string",
                  "icon": "string",
                  "definition": "string",
                  "userDefined": true,
                  "actionTemplateParameter": [
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
                  ],
                  "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                  "actionPack": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "icon": "string",
                    "description": "string",
                    "version": "string",
                    "timeoutOverride": 0,
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {},
                "actionParameter": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "value": "string",
                    "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "continueOnFail": true,
                "executionOrder": 0,
                "executionPath": "string",
                "timeout": 0,
                "displayName": "string",
                "actionQueueAction": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "action": {},
                    "status": null,
                    "jobType": "None",
                    "statusDescription": "string",
                    "result": "string",
                    "results": "string",
                    "actionQueueActionParameter": [],
                    "actionLog": [],
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "startTime": "2019-08-24T14:15:22Z",
                    "endTime": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "heartbeatUtc": "2019-08-24T14:15:22Z",
                    "complete": true
                  }
                ],
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "classification": null,
                "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                "pairedAction": {},
                "isDeleted": true,
                "isDefault": true,
                "isUserModified": true
              }
            ],
            "actionGroupJob": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
                "job": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "actionGroupJob": [
                    {}
                  ],
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionGroup": {},
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
            ],
            "actionQueue": [
              {}
            ]
          },
          "actionQueueAction": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
              "actionQueue": {},
              "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
              "action": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                "actionTemplate": {
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "displayName": "string",
                  "description": "string",
                  "newActionDisplayName": "string",
                  "icon": "string",
                  "definition": "string",
                  "userDefined": true,
                  "actionTemplateParameter": [
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
                  ],
                  "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                  "actionPack": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "icon": "string",
                    "description": "string",
                    "version": "string",
                    "timeoutOverride": 0,
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "trigger": true,
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "action": [
                    {}
                  ],
                  "actionGroupJob": [
                    {}
                  ],
                  "actionQueue": [
                    {}
                  ]
                },
                "actionParameter": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "value": "string",
                    "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "continueOnFail": true,
                "executionOrder": 0,
                "executionPath": "string",
                "timeout": 0,
                "displayName": "string",
                "actionQueueAction": [
                  {}
                ],
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "classification": null,
                "pairedActionId": "422a6947-448b-43e8-ba5a-32ee4ea06296",
                "pairedAction": {},
                "isDeleted": true,
                "isDefault": true,
                "isUserModified": true
              },
              "status": null,
              "jobType": "None",
              "statusDescription": "string",
              "result": "string",
              "results": "string",
              "actionQueueActionParameter": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "value": "string",
                  "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                  "actionTemplateParameter": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "displayName": "string",
                    "description": "string",
                    "sortOrder": 0,
                    "required": true,
                    "type": null,
                    "multiline": true,
                    "defaultValue": "string",
                    "shouldSerialize_ValueSet": true,
                    "_ValueSet": "string",
                    "valueSet": [],
                    "limitToValueSet": true,
                    "helperText": "string",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "actionQueueActionId": "e164a984-e446-491c-add7-9f34c69273d9",
                  "actionQueueAction": {}
                }
              ],
              "actionLog": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "type": null,
                  "hResult": 0,
                  "timestamp": "2019-08-24T14:15:22Z",
                  "message": "string",
                  "version": "string",
                  "actionQueueActionId": "e164a984-e446-491c-add7-9f34c69273d9",
                  "actionQueueAction": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
              "registeredService": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "type": "ActionService",
                "name": "string",
                "added": "2019-08-24T14:15:22Z",
                "refreshToken": "string",
                "appTokenId": "bf560fff-9cd4-435c-bb81-f9886099325d",
                "appToken": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "token": "string",
                  "tokenSalt": "string",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "expirationDate": "2019-08-24T14:15:22Z",
                  "revoked": true,
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "status": null,
                "description": "string",
                "version": "string",
                "serviceRegistrationId": "6322e579-32c5-4925-9aad-e20adc6d7ecb",
                "serviceRegistration": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "type": "ActionService",
                  "dnsHostName": "string",
                  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                  "serviceName": "string",
                  "settingsFilePath": "string",
                  "settingsFileContents": "string",
                  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                  "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                  "actionQueue": {},
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "actionServiceProperty": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "value": "string",
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "actionQueueAction": [
                  {}
                ],
                "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "startTime": "2019-08-24T14:15:22Z",
              "endTime": "2019-08-24T14:15:22Z",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "heartbeatUtc": "2019-08-24T14:15:22Z",
              "complete": true
            }
          ],
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "managedResourceJoin": [
          {
            "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
            "managedResource": {},
            "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
            "managedResourceGroup": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "type": "Local",
              "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
              "manageAccounts": "PerResource",
              "notificationEmailList": "string",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
              "managedResourceJoin": [
                {}
              ],
              "platform": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "builtInAccount": "string",
                "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                "passwordComplexityPolicy": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "lowerCase": true,
                  "upperCase": true,
                  "specialCharacter": true,
                  "space": true,
                  "numeric": true,
                  "mustEndWith": "None",
                  "mustStartWith": "None",
                  "length": 0,
                  "maxConsecutive": 0,
                  "charsToExclude": "string",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                  "type": "Password"
                },
                "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
                "scheduledChangePolicy": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
                "protectionPolicySchedule": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
                "scanSchedule": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                "verificationSchedule": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "frequency": null,
                  "periodValue": 0,
                  "daysOfWeek": "string",
                  "dayNumber": 0,
                  "localTime": "2019-08-24T14:15:22Z",
                  "utcTime": "2019-08-24T14:15:22Z",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "resetOnMismatch": true,
                "icon": "string",
                "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
                "type": "Unspecified",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "managedResourceGroupPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {},
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "priority": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true,
                    "managedAccountPolicyJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "managedResourcePolicyJoin": [],
                    "managedResourceGroupPolicyJoin": [],
                    "activityJoin": [],
                    "activityGroupJoin": [],
                    "credentialPolicyJoin": [],
                    "credentialGroupPolicyJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
                    "policyType": "Resource",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "manageResourceGroupProtectionPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {},
                  "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
                  "protectionPolicy": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "groupMonitorInterval": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "protectionPolicyGroup": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "ouMappingEnabled": true,
              "ouFqdn": "string",
              "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
              "ouDomainConfig": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "activeDirectoryDomain": [
                  {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
              "ouAutoOnboard": true,
              "ouIncludeChildren": true
            }
          }
        ],
        "managedResourcePolicyJoin": [
          {
            "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
            "managedResource": {},
            "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
            "accessControlPolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
              "activityConfiguration": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "type": "Generic",
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "isDefault": true,
                "isDeleted": true,
                "isUserModified": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "activityConfigurationSettings": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "key": "string",
                    "value": "string",
                    "type": "String",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "customFields": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "customFieldNumber": 0,
                    "name": "string",
                    "label": "string",
                    "description": "string",
                    "options": "string",
                    "length": 0,
                    "customFieldDataType": "Integer",
                    "required": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "deleteAccount": true,
                "sessionRetryInterval": 0,
                "approvedWorkflowEmailTemplateId": "7323f20a-d61f-4cbd-9b9a-1ce63404d7a1",
                "notifyApproversWorkflowEmailTemplateId": "5997e1ba-a294-43d0-acaa-18d25ec8482f",
                "maxSessionLength": 0,
                "allowSessionExtension": true,
                "sessionExtensionMinutes": 0,
                "sessionExtensionCount": 0,
                "sessionMonitorInterval": 0,
                "expirationTimeoutThreshold": 0,
                "rdpProxyHost": "string",
                "sshProxyHost": "string",
                "sshScanDc": true,
                "recordAudio": true,
                "proxyAutoConnect": true,
                "record": true,
                "approvalTypeRequired": "Deny",
                "approvalWorkflowId": "2db777ef-e869-4d8f-8dc2-f01750b5b4aa",
                "approvalWorkflowEmailTemplateId": "3416bc31-9e7f-4338-b33c-7314dfcb92d4",
                "monitorEntireSession": true,
                "allowViewPassword": true,
                "allowPasswordAccess": true,
                "allowAutofillPassword": true,
                "leaveInGroup": true,
                "activityTokenComplexity": "123519da-14b2-440d-af88-b17b69fb9aa6",
                "clearWebsiteDataAfterStop": true,
                "clearWebsiteDataBeforeStart": true,
                "notesRequired": true,
                "ticketRequired": true,
                "viewPasswordInSeconds": 0
              },
              "priority": 0,
              "isDisabled": true,
              "isDeleted": true,
              "isDefault": true,
              "isUserModified": true,
              "managedAccountPolicyJoin": [
                {
                  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                  "managedAccount": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "HostUser",
                    "locked": true,
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "managedAccountJoin": [],
                    "managedAccountPolicyJoin": [],
                    "sid": "string",
                    "userCollectionJoin": [],
                    "isReviewer": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {}
                }
              ],
              "managedAccountGroupPolicyJoin": [
                {
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Local",
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "mfaConnectorId": "360d3915-9c3c-42c2-9c41-55ba84bbd9f8",
                    "isReviewer": true,
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {}
                }
              ],
              "managedResourcePolicyJoin": [
                {}
              ],
              "managedResourceGroupPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Local",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "manageAccounts": "PerResource",
                    "notificationEmailList": "string",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
                    "ouAutoOnboard": true,
                    "ouIncludeChildren": true
                  },
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "accessControlPolicy": {}
                }
              ],
              "activityJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
                  "activity": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
                    "name": "string",
                    "description": "string",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "startActionGroupId": "fe816897-035e-41a8-b765-786a26e1fd7e",
                    "duringActionGroupId": "42ac0cdb-f5d6-410c-aef7-524cbda8a405",
                    "endActionGroupId": "129c4b86-8e07-4184-83ec-2719a1a163e2",
                    "activityType": "Interactive",
                    "loginAccount": "Requester",
                    "loginAccountNameFormat": "string",
                    "requesterLoginFormat": "Samaccountname",
                    "applicationToLaunch": "string",
                    "preferredRDSHostId": "14c3f91d-da41-4a85-9329-5b28802d466f",
                    "connectCredentialId": "28819070-8040-4b05-9bbf-5d58cd54636a",
                    "createAccount": true,
                    "activityGroupActivities": [],
                    "deleteAccount": true,
                    "vaultId": "867f3a98-ec66-42f4-abbc-5980239e4a28",
                    "vaultInfo": "string",
                    "logonUrl": "string",
                    "isDefault": true,
                    "isDeleted": true,
                    "isUserModified": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "isDefault": true,
                  "isDeleted": true,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "activityGroupJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                  "activityGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                    "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "name": "string",
                    "description": "string",
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "activityGroupActivities": [],
                    "isDefault": true,
                    "isDeleted": true,
                    "isUserModified": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "credentialPolicyJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                  "credential": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "domain": "string",
                    "username": "string",
                    "password": "string",
                    "salt": "string",
                    "enablePassword": "string",
                    "enableSalt": "string",
                    "name": "string",
                    "description": "string",
                    "type": "Configuration",
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "sudoCommand": "string",
                    "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
                    "passwordVaultConnector": {},
                    "passwordVaultInfo": "string",
                    "changeOnCheckout": true,
                    "changeOnRelease": true,
                    "showPassword": true,
                    "credentialJoin": [],
                    "isDeleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "authenticationMethod": "Password",
                    "keyGenAlgorithm": "string",
                    "keyLength": 0,
                    "autoGenPassphrase": true,
                    "passphrase": "string",
                    "privateKey": "string",
                    "publicKey": "string"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "credentialGroupPolicyJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
                  "credentialGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "credentialJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "userAndGroupCollectionPolicyJoin": [
                {
                  "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                  "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                  "userAndGroupCollection": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
                    "isReviewer": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "policyType": "Resource",
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          }
        ],
        "manageResourceProtectionPolicyJoin": [
          {
            "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
            "managedResource": {},
            "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
            "protectionPolicy": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "description": "string",
              "groupMonitorInterval": 0,
              "isDisabled": true,
              "isDeleted": true,
              "protectionPolicyGroup": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "deleted": true,
                  "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
                  "protectionPolicy": {},
                  "protectionPolicyGroupMember": [
                    {}
                  ],
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "manageResourceProtectionPolicyJoin": [
                {}
              ],
              "manageResourceGroupProtectionPolicyJoin": [
                {
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Local",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "manageAccounts": "PerResource",
                    "notificationEmailList": "string",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
                    "ouAutoOnboard": true,
                    "ouIncludeChildren": true
                  },
                  "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
                  "protectionPolicy": {}
                }
              ],
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          }
        ],
        "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
        "verificationSchedule": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "frequency": null,
          "periodValue": 0,
          "daysOfWeek": "string",
          "dayNumber": 0,
          "localTime": "2019-08-24T14:15:22Z",
          "utcTime": "2019-08-24T14:15:22Z",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
        "passwordComplexityPolicy": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "description": "string",
          "lowerCase": true,
          "upperCase": true,
          "specialCharacter": true,
          "space": true,
          "numeric": true,
          "mustEndWith": "None",
          "mustStartWith": "None",
          "length": 0,
          "maxConsecutive": 0,
          "charsToExclude": "string",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "type": "Password"
        },
        "portSsh": 0,
        "portRdp": 0,
        "portWinRm": 0,
        "portWinRmHttps": 0,
        "winRmHttpSetting": "UseHttp",
        "disableWinRm": true,
        "acceptThumbprintOnFirstDiscovery": true,
        "trustedThumbprint": "string",
        "discoveredThumbprint": "string",
        "sshTrustActionType": null,
        "certificateType": null,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "isSystem": true,
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "isTransient": true,
    "isSystem": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="get-list-of-members-for-protected-group-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Error has occurred, see Web log for details|None|

<h3 id="get-list-of-members-for-protected-group-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ProtectedGroupMember](../Models/sbpam.models.protectedgroupmember.md)]|false|none|[This model represents a member of a protected group associated with a managed resource.]|
|» id|string(uuid)|false|none|Unique id and DB key for this member.|
|» userName|string¦null|false|none|UserName of this member.|
|» userId|string(uuid)¦null|false|none|Id of user if this member is a user.|
|» allowedProtectedGroupId|string(uuid)¦null|false|none|Id of group to which this member is allowed.|
|» allowedProtectedGroup|[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)|false|none|This model represents a protected group associated with a managed resource.|
|»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»» name|string¦null|false|none|Name of this group.|
|»» allowedProtectedGroupMember|[[SbPAM.Models.ProtectedGroupMember](../Models/sbpam.models.protectedgroupmember.md)]¦null|false|none|Members allowed in this group.|
|»» currentProtectedGroupMember|[[SbPAM.Models.ProtectedGroupMember](../Models/sbpam.models.protectedgroupmember.md)]¦null|false|none|Current members in this group.|
|»» managedResourceId|string(uuid)|false|none|Id of managed resource which protects this group.|
|»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»»» id|string(uuid)|false|none|Unique id and DB key for this resource.|
|»»» name|string¦null|false|none|Name of this managed resource.|
|»»» type|[SbPAM.Models.ManagedResourceType](../Models/sbpam.models.managedresourcetype.md)(int32)|false|none|none|
|»»» hostId|string(uuid)¦null|false|none|Host id  If this resource is a host.|
|»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»» id|string(uuid)|false|none|Unique id and DB key for this host.|
|»»»» activeDirectoryObjectId|string(uuid)¦null|false|none|Unique id from AD sync (usually same as Id).|
|»»»» name|string¦null|false|none|none|
|»»»» distinguishedName|string¦null|false|none|Distingished name from active directory|
|»»»» ipAddress|string¦null|false|none|IP address of host.|
|»»»» os|string¦null|false|none|Name of OS on host.|
|»»»» version|string¦null|false|none|Verion of OS on host.|
|»»»» lsaLookupCache|string¦null|false|none|Most recent LsaLookupCacheMaxSize|
|»»»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|Date/time of last system update.|
|»»»» credentialId|string(uuid)¦null|false|none|Id of service account for this host|
|»»»» hasSSH|boolean|false|none|True if the host supports SSH.|
|»»»» activeDirectoryDomainId|string(uuid)¦null|false|none|Id of active directory domain if host is a member of a domain.|
|»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this domain.|
|»»»»» name|string¦null|false|none|Name of this domain, e.g. sbitsinc.|
|»»»»» domainName|string¦null|false|none|Fully qualified name of this domain|
|»»»»» netBiosName|string¦null|false|none|none|
|»»»»» domainController|string¦null|false|none|Name of the domain controller for this domain.|
|»»»»» usnChanged|integer(int64)¦null|false|none|Update sequence number (USN) assigned by the directory for the latest change.|
|»»»»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|NPS Id of the active directory domain configuration.|
|»»»»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» activeDirectoryDomain|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)]¦null|false|read-only|This model represents an active directory domain.|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» controllers|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryController](../Models/sbpam.activedirectory.models.activedirectorycontroller.md)]¦null|false|read-only|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»»»»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|none|
|»»»»»»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» enabled|boolean|false|none|none|
|»»»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»»»» useSsl|boolean|false|none|none|
|»»»»»» functionalLevel|string¦null|false|none|Name of the domain's functional level|
|»»»»»» syncActionQueueId|string(uuid)¦null|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» functionalLevel|string¦null|false|none|Name of this domain controller's functional level|
|»»»»» activeDirectoryGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Active Directory Groups within this domain.|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» samaccountname|string¦null|false|none|none|
|»»»»»» usnchanged|integer(int64)|false|none|none|
|»»»»»» description|string¦null|false|none|none|
|»»»»»» distinguishedName|string¦null|false|none|none|
|»»»»»» displayName|string¦null|false|none|none|
|»»»»»» email|string¦null|false|none|none|
|»»»»»» added|string(date-time)|false|none|none|
|»»»»»» groupToken|string(byte)¦null|false|none|none|
|»»»»»» activeDirectoryGroupHostUser|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupHostUser](../Models/sbpam.activedirectory.models.activedirectorygrouphostuser.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» groupId|string(uuid)|false|none|none|
|»»»»»»» memberId|string(uuid)|false|none|none|
|»»»»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»»» member|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|This model represents a user which may be associated with target host.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this user.|
|»»»»»»»» activeDirectoryObjectId|string(uuid)¦null|false|none|Unique id from AD sync (usually same as Id).|
|»»»»»»»» activeDirectoryDomainId|string(uuid)¦null|false|none|Id of active directory domain to which this user belongs.|
|»»»»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»»»»»» displayName|string¦null|false|none|Display name for this user.|
|»»»»»»»» enabled|boolean|false|none|True if this user is enabled.|
|»»»»»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a user on a Unix host.|
|»»»»»»»» unixGroupId|integer(int32)¦null|false|none|Unix group id if this is a user on a Unix host.|
|»»»»»»»» homeDirectory|string¦null|false|none|Home directory for user if this is a user on a Unix host.|
|»»»»»»»» shell|string¦null|false|none|Shell for user if this is a user on a Unix host.|
|»»»»»»»» expirationDate|string(date-time)¦null|false|none|Expiration date for this user.|
|»»»»»»»» managed|boolean|false|none|True if this user should be managed.|
|»»»»»»»» hostId|string(uuid)¦null|false|none|Id of host to which this user belongs.|
|»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»»» primaryGroupTokenId|integer(int32)¦null|false|none|Id of primary group token.|
|»»»»»»»» primaryGroupToken|string(byte)¦null|false|none|Primary group token.|
|»»»»»»»» managerSamaccountname|string¦null|false|none|SAM account name of Manager.|
|»»»»»»»» title|string¦null|false|none|Title of this user.|
|»»»»»»»» samaccountname|string¦null|false|none|SAM account name of user, e.g. Domain\Username.<br>https://docs.microsoft.com/en-us/windows/win32/ad/naming-properties#samaccountname|
|»»»»»»»» userPrincipalName|string¦null|false|none|The userPrincipalName attribute is the logon name for the user.<br>https://docs.microsoft.com/en-us/windows/win32/ad/naming-properties#userprincipalname|
|»»»»»»»» distinguishedName|string¦null|false|none|Distinguished name of user from active directory.|
|»»»»»»»» department|string¦null|false|none|Department to which this user belongs.|
|»»»»»»»» email|string¦null|false|none|Email address for this user.|
|»»»»»»»» lastLogonTimestamp|string(date-time)¦null|false|none|When this user last logged in.|
|»»»»»»»» name|string¦null|false|none|Short name|
|»»»»»»»» sid|string¦null|false|none|Windows Security ID for user|
|»»»»»»»» firstName|string¦null|false|none|User's first name - AD attribute 'givenName'|
|»»»»»»»» lastName|string¦null|false|none|User's surname - AD attribute 'sn'|
|»»»»»»»» passwordHash|string¦null|false|none|Hash of password from linux /etc/shadow|
|»»»»»»»» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|Time we last changed password.|
|»»»»»»»» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|When does password expire?|
|»»»»»»»» forcePasswordReset|boolean|false|none|If true, need to change password.|
|»»»»»»»» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|»»»»»»»» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|Groups to which this user belongs via join table.|
|»»»»»»»»» userId|string(uuid)|false|none|Id of AD user.|
|»»»»»»»»» user|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|This model represents a user which may be associated with target host.|
|»»»»»»»»» groupId|string(uuid)|false|none|Id of AD group.|
|»»»»»»»»» group|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|This model represents a group which may be associated with target host.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»»»»» name|string¦null|false|none|Name for this group.|
|»»»»»»»»»» sid|string¦null|false|none|Windows Security ID for group|
|»»»»»»»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a group on a Unix host.|
|»»»»»»»»»» hostId|string(uuid)¦null|false|none|Id of host to which this group belongs.|
|»»»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»»»»» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|Users which are in this group via join table.|
|»»»»»»»»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|Domain groups which are in this group via join table|
|»»»»»»»»»»» hostGroupId|string(uuid)|false|none|Id of the parent group|
|»»»»»»»»»»» hostGroup|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|This model represents a group which may be associated with target host.|
|»»»»»»»»»»» domainGroupMemberId|string(uuid)|false|none|Id of the member ActiveDirectoryGroup|
|»»»»»»»»»»» domainGroupMember|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» hostDatabaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» databaseId|string¦null|false|none|none|
|»»»»»»»»» ownerSid|string¦null|false|none|none|
|»»»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»»»» isOnline|boolean|false|none|none|
|»»»»»»»»» statusDesc|string¦null|false|none|none|
|»»»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» hostId|string(uuid)|false|none|Id of host database with this database.|
|»»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|Users which are in this database|
|»»»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Domain groups which are in this database|
|»»»»»»»»» hostDbRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» sid|string¦null|false|none|none|
|»»»»»»»»»» principalId|string¦null|false|none|none|
|»»»»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»»»»» modifyDate|string(date-time)|false|none|none|
|»»»»»»»»»» isDisabled|boolean|false|none|none|
|»»»»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» hostId|string(uuid)|false|none|Id of host database with this database.|
|»»»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»»»»» databaseDbId|string(uuid)¦null|false|none|Null if a server role|
|»»»»»»»»»» databaseDb|[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)|false|none|none|
|»»»»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|Users which are assigned the role|
|»»»»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Domain groups which are assigned this role|
|»»»»»»»» hostDatabaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|none|
|»»»»»»»» deleted|boolean|false|none|True if this user has been deleted.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» activeDirectoryGroupGroupGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» memberId|string(uuid)|false|none|none|
|»»»»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»»» member|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»»» groupId|string(uuid)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» activeDirectoryGroupGroupMember|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|none|
|»»»»»» activeDirectoryDomainId|string(uuid)|false|none|none|
|»»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»»»» groupTokenId|integer(int32)¦null|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» sid|string¦null|false|none|none|
|»»»»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|none|
|»»»»»» deleted|boolean|false|none|True if this group has been deleted.|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» objectSid|string¦null|false|none|Object SID for the domain controller this record represents|
|»»»»» maxRenewAge|integer(int32)¦null|false|none|Max renew age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxrenewage">MS Documentation</a>|
|»»»»» maxTicketAge|integer(int32)¦null|false|none|Max ticket age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxticketage">MS Documentation</a>|
|»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»» dnsHostName|string¦null|false|none|DNS hostname.|
|»»»» netBiosName|string¦null|false|none|NetBios hostname.|
|»»»» users|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|List of users associated with this host.|
|»»»» groups|[[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)]¦null|false|read-only|List of groups associated with this host.|
|»»»» features|[[SbPAM.ActiveDirectory.Models.HostFeature](../Models/sbpam.activedirectory.models.hostfeature.md)]¦null|false|read-only|List of features installed on this host.|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» version|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» hostId|string(uuid)|false|none|Id of host with this installed feature.|
|»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»» services|[[SbPAM.ActiveDirectory.Models.HostService](../Models/sbpam.activedirectory.models.hostservice.md)]¦null|false|read-only|List of services that have accounts that can be managed.|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» displayName|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» startType|[SbPAM.Models.Common.ServiceStartType](../Models/sbpam.models.common.servicestarttype.md)(int32)|false|none|none|
|»»»»» userName|string¦null|false|none|none|
|»»»»» binaryPathName|string¦null|false|none|none|
|»»»»» dependentServices|string¦null|false|none|none|
|»»»»» canPauseAndContinue|boolean|false|none|none|
|»»»»» canShutdown|boolean|false|none|none|
|»»»»» canStop|boolean|false|none|none|
|»»»»» serviceType|[SbPAM.Models.Common.ServiceTypeFlags](../Models/sbpam.models.common.servicetypeflags.md)(int32)|false|none|none|
|»»»»» delayedStart|boolean|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»» hostId|string(uuid)|false|none|none|
|»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»»» hostUserId|string(uuid)¦null|false|none|none|
|»»»» scheduledTasks|[[SbPAM.ActiveDirectory.Models.HostScheduledTask](../Models/sbpam.activedirectory.models.hostscheduledtask.md)]¦null|false|read-only|List of scheduled tasks that have accounts that can be managed.|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» userName|string¦null|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» taskPath|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»» source|string¦null|false|none|none|
|»»»»» nextRunTimeUtc|string(date-time)|false|none|none|
|»»»»» lastRunTimeUtc|string(date-time)|false|none|none|
|»»»»» lastRunResult|integer(int32)|false|none|none|
|»»»»» scheduledTaskTriggers|[[SbPAM.Models.Common.ScheduledTaskTrigger](../Models/sbpam.models.common.scheduledtasktrigger.md)]¦null|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» enabled|boolean|false|none|none|
|»»»»»» endBoundary|string¦null|false|none|none|
|»»»»»» executionThrottleLimit|string¦null|false|none|none|
|»»»»»» taskName|string¦null|false|none|none|
|»»»»»» startBoundary|string¦null|false|none|none|
|»»»»»» repetitionDuration|string¦null|false|none|none|
|»»»»»» repetitionInterval|string¦null|false|none|none|
|»»»»»» repetitionStopAtDurationEnd|boolean|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» scheduledTaskActions|[[SbPAM.Models.Common.ScheduledTaskAction](../Models/sbpam.models.common.scheduledtaskaction.md)]¦null|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» classId|string(uuid)¦null|false|none|none|
|»»»»»» data|string¦null|false|none|none|
|»»»»»» arguments|string¦null|false|none|none|
|»»»»»» execute|string¦null|false|none|none|
|»»»»»» workingDirectory|string¦null|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» hostId|string(uuid)|false|none|none|
|»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»»» hostUserId|string(uuid)¦null|false|none|none|
|»»»» databases|[[SbPAM.ActiveDirectory.Models.HostDatabase](../Models/sbpam.activedirectory.models.hostdatabase.md)]¦null|false|read-only|List of SQL Server database server instances found on Windows host|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» fullName|string¦null|false|none|none|
|»»»»» product|string¦null|false|none|none|
|»»»»» version|string¦null|false|none|none|
|»»»»» isClustered|boolean|false|none|none|
|»»»»» clusterName|string¦null|false|none|none|
|»»»»» type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)(int32)|false|none|none|
|»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» hostId|string(uuid)|false|none|Id of host with this database.|
|»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»» databaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|List of SQL Server databases found on Windows host|
|»»»» databaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|List of SQL Server databse roles found on Windows host|
|»»»» samaccountname|string¦null|false|none|sAMAccountname for host (from ActiveDirectory) NOTE: this includes the NETBIOS name to make it unique|
|»»»» isDomainController|boolean|false|none|Boolean indicating if this host is a Domain Controller|
|»»»» isGlobalCatalog|boolean¦null|false|none|Boolean indicating if this host is a Global Catalog server|
|»»»» usnChanged|integer(int64)|false|none|USN from Active Directory|
|»»»» objectSid|string¦null|false|none|SID from Active Directory|
|»»»» added|string(date-time)|false|none|UTC Time of when host was Added to NPS|
|»»»» deleted|boolean|false|none|True if this host has been deleted.|
|»»»» isVirtual|boolean|false|none|True if not a real host<br>Used for AzureAD tenants|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» hostScanHostId|string(uuid)¦null|false|none|Scanned host id  If this resource is a host.|
|»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»» id|string(uuid)|false|none|Unique id and DB key for this host.|
|»»»» name|string¦null|false|none|name of host.|
|»»»» dnsHostName|string¦null|false|none|DNS hostname.|
|»»»» ipAddress|string¦null|false|none|IP address of host.|
|»»»» os|string¦null|false|none|Name of OS on host.|
|»»»» version|string¦null|false|none|Version of OS on host.|
|»»»» lsaLookupCache|string¦null|false|none|Most recent LsaLookupCacheMaxSize|
|»»»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|Date/time of last system update.|
|»»»» hostId|string(uuid)¦null|false|none|Id of host created/updated by this scan.|
|»»»» credentialId|string(uuid)|false|none|Id of credentials for host.|
|»»»» platformId|string(uuid)¦null|false|none|Id of platform for host.|
|»»»» lastScanTimeUtc|string(date-time)¦null|false|none|Date time the host scan completed for the host.|
|»»»» lastScanStartTimeUtc|string(date-time)|false|none|Date time the last host scan was started for the host.|
|»»»» hostScanUser|[[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)]¦null|false|none|Users which belong to this host.|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this user.|
|»»»»» name|string¦null|false|none|Short name|
|»»»»» displayName|string¦null|false|none|Long name for this user.|
|»»»»» samaccountname|string¦null|false|none|SAM account name of user e.g. Domain\Username.|
|»»»»» lastLogonTimestamp|string(date-time)¦null|false|none|When this user last logged in.|
|»»»»» sid|string¦null|false|none|Windows Security ID for user|
|»»»»» passwordHash|string¦null|false|none|Hash of password from linux /etc/shadow|
|»»»»» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|Time we last changed password.|
|»»»»» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|When does password expire?|
|»»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a user on a Unix host.|
|»»»»» unixGroupId|integer(int32)¦null|false|none|Unix group id if this is a user on a Unix host.|
|»»»»» homeDirectory|string¦null|false|none|Home directory for user if this is a user on a Unix host.|
|»»»»» shell|string¦null|false|none|Shell for user if this is a user on a Unix host.|
|»»»»» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|»»»»» discoveredDateTimeUtc|string(date-time)¦null|false|none|Date time this user was last discovered.|
|»»»»» userId|string(uuid)¦null|false|none|Id of user created/updated by this scan.|
|»»»»» hostScanHostId|string(uuid)¦null|false|none|Id of host scan host to which this user belongs.<br>Note: Not set for domain users.|
|»»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|Groups to which this user belongs via join table.|
|»»»»»» hostScanUserId|string(uuid)|false|none|Id of host scan user.|
|»»»»»» hostScanUser|[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)|false|none|This model is used to store user information from a host scan.|
|»»»»»» hostScanGroupId|string(uuid)|false|none|Id of host scan group.|
|»»»»»» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|This model is used to store group information from a host scan.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»» name|string¦null|false|none|Name of this group|
|»»»»»»» sid|string¦null|false|none|Windows Security ID for group|
|»»»»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a group on a Unix host.|
|»»»»»»» groupId|string(uuid)¦null|false|none|Id of group created/updated by this scan.|
|»»»»»»» hostScanHostId|string(uuid)|false|none|Id of host scan host to which this group belongs.|
|»»»»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»»»»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|Users which are in this group via join table.|
|»»»»»»» hostScanGroupGroupJoin|[[SbPAM.Models.HostScanGroupGroupJoin](../Models/sbpam.models.hostscangroupgroupjoin.md)]¦null|false|none|Groups which this group is a member of via join table.<br>Domain groups in local groups only.|
|»»»»»»»» hostScanGroupId|string(uuid)|false|none|Id of the parent group|
|»»»»»»»» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|This model is used to store group information from a host scan.|
|»»»»»»»» hostScanGroupMemberId|string(uuid)|false|none|Id of the member ActiveDirectoryGroup|
|»»»»»»» resourceObjectId|string(uuid)¦null|false|none|Unique object Id in resource context.|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» resourceObjectId|string(uuid)¦null|false|none|Unique object Id in resource context.|
|»»»»» isDisabled|boolean|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostScanGroup|[[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)]¦null|false|none|Groups which belong to this host.|
|»»»» hostScanFeature|[[SbPAM.Models.HostScanFeature](../Models/sbpam.models.hostscanfeature.md)]¦null|false|none|Features which are installed on this host.|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» version|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» hostScanHostId|string(uuid)|false|none|Id of host scan host on which this feature is installed.|
|»»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»»» hostObjectId|string(uuid)¦null|false|none|Id of feature created/updated by this scanned feature.|
|»»»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|Jobs which reference this host via join table.|
|»»»»» hostScanJobId|string(uuid)|false|none|Id of host scan job.|
|»»»»» hostScanJob|[SbPAM.Models.HostScanJob](../Models/sbpam.models.hostscanjob.md)|false|none|This model represent a job to scan a collection of hosts to obtain os type and version info.|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this job.|
|»»»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this job.|
|»»»»»» createdByUserName|string¦null|false|none|Name of user that created this job.|
|»»»»»» createdFromAddress|string¦null|false|none|IP address of user that created this job.|
|»»»»»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|Host(s) scanned by this job via join table.|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» hostScanHostId|string(uuid)|false|none|Id of host scan host.|
|»»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»»» actionQueueId|string(uuid)¦null|false|none|Id of action queue to execute to scan this host.|
|»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action queue.|
|»»»»»» actionJobId|string(uuid)¦null|false|none|Action Job that created this ActionQueue|
|»»»»»» runUserId|string(uuid)¦null|false|none|Id associated with the logged in user which created this action queue.|
|»»»»»» timeCreated|string(date-time)|false|none|When this action queue was created.|
|»»»»»» timeStarted|string(date-time)|false|none|When this action queue started execution.|
|»»»»»» timeFinished|string(date-time)|false|none|When this action queue finished execution.|
|»»»»»» heartBeatDateTimeUtc|string(date-time)|false|none|Heartbeat for this ActionQueue - this gets updated when an ActionQueueAction<br>associated with the Queue is updated.<br>If the Queue isn't updated frequently enough, the scheduler will<br>post a healthcheck for it|
|»»»»»» status|any|false|none|none|
|»»»»»» statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|»»»»»» failureReason|any|false|none|none|
|»»»»»» actionGroupId|string(uuid)|false|none|Id of action group associated with this action queue.|
|»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action group.|
|»»»»»»» name|string¦null|false|none|Human readable name for this action group.|
|»»»»»»» description|string¦null|false|none|Human readable desciption for this action group.|
|»»»»»»» trigger|boolean|false|none|Not used???|
|»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this action group was created.|
|»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When this action group was last modified.|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions associated with this action group.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»»»»» actionTemplateId|string(uuid)|false|none|Id of template for this action.|
|»»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this template.|
|»»»»»»»»» displayName|string¦null|false|none|Name for this template.|
|»»»»»»»»» description|string¦null|false|none|Human readable description of this template.|
|»»»»»»»»» newActionDisplayName|string¦null|false|none|Optional alternative to DisplayName for populating new actions's .DisplayName<br>properties. This is also a template. It can include bracketed parameter names<br>to insert parameter vales (e.g., "Add User to '{GroupToUpdate}' Group").|
|»»»»»»»»» icon|string¦null|false|none|Icon for this template.|
|»»»»»»»»» definition|string¦null|false|none|Human readable definition of this template.|
|»»»»»»»»» userDefined|boolean|false|none|True if created by a user???|
|»»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|List of parameters defined for this template.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»»»» name|string¦null|false|none|Name for this parameter.|
|»»»»»»»»»» displayName|string¦null|false|none|Long name for this parameter.|
|»»»»»»»»»» description|string¦null|false|none|Human readable description for this parameter.|
|»»»»»»»»»» sortOrder|integer(int32)|false|none|The order these will appear in lists and reports|
|»»»»»»»»»» required|boolean|false|none|True if parameter is required.|
|»»»»»»»»»» type|any|false|none|none|
|»»»»»»»»»» multiline|boolean|false|none|Tell UI to make this multiline|
|»»»»»»»»»» defaultValue|string¦null|false|none|Default value.|
|»»»»»»»»»» shouldSerialize_ValueSet|boolean|false|read-only|Allowed values (if restricted).|
|»»»»»»»»»» _ValueSet|string¦null|false|none|none|
|»»»»»»»»»» valueSet|[string]¦null|false|none|none|
|»»»»»»»»»» limitToValueSet|boolean|false|none|If true (default) and .ValueSet is given then the user may not enter something off that list|
|»»»»»»»»»» helperText|string¦null|false|none|none|
|»»»»»»»»»» actionTemplateId|string(uuid)¦null|false|none|Id of action template which contains this parameter.|
|»»»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions derived from this template.|
|»»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|List of action template demands derived from this template.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this demand template.|
|»»»»»»»»»» name|string¦null|false|none|Name of this demand template.|
|»»»»»»»»»» value|string¦null|false|none|Value of this demand template.|
|»»»»»»»»»» type|any|false|none|none|
|»»»»»»»»»» actionTemplateId|string(uuid)|false|none|Id of action template used to associate an action with this demand template.|
|»»»»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»»» icon|string¦null|false|none|none|
|»»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»»»»» timeoutOverride|integer(int32)|false|none|none|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»» actionTemplate|[[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)]¦null|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|[This model represents a template for a parameter associated with an action group action.]|
|»»»»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|This model represents a demand template that is used to find an action service<br>    that can process a particular type of action.  This is done by searching for<br>    this demand template using the template id associated with the action and<br>    then matching this demand template's name and value against a property associated<br>    with a registered action service.|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionPackId|string(uuid)¦null|false|none|Id of action pack which contains this template|
|»»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»»» classification|any|false|none|none|
|»»»»»»»»» pairedActionTemplateId|string(uuid)¦null|false|none|Reference to another template representing the end to this start or start to this end action|
|»»»»»»»»» pairedActionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionGroupId|string(uuid)|false|none|Id for action group that this action belongs to.|
|»»»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»»»» actionParameter|[[SbPAM.Models.ActionParameter](../Models/sbpam.models.actionparameter.md)]¦null|false|none|Parameters associated with this action.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» continueOnFail|boolean|false|none|If true then next action in action group will be executed<br>    even if this action fails.|
|»»»»»»»» executionOrder|integer(int32)|false|none|This determines the order of execution of the actions<br>    in this action group.  Lowest value first.|
|»»»»»»»» executionPath|string¦null|false|none|none|
|»»»»»»»» timeout|integer(int32)¦null|false|none|This defines a timeout for the action, in seconds,<br>    after which it will be failed if it hasn't completed.|
|»»»»»»»» displayName|string¦null|false|none|Human readable description of this action.|
|»»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|Current action queues which refer to this action, if any.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»»»»»» actionQueueId|string(uuid)|false|none|Id of action queue which contains this action.|
|»»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»»»»» actionId|string(uuid)|false|none|Id of action group action which was used to create this action queue action.|
|»»»»»»»»» action|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»»»»»» status|any|false|none|none|
|»»»»»»»»» jobType|[SbPAM.Models.ActionJobType](../Models/sbpam.models.actionjobtype.md)(int32)|true|none|none|
|»»»»»»»»» statusDescription|string¦null|false|none|Human readable description of the action status.|
|»»»»»»»»» result|string¦null|false|none|Json result.|
|»»»»»»»»» results|string¦null|false|none|Json results from previous steps.|
|»»»»»»»»» actionQueueActionParameter|[[SbPAM.Models.ActionQueueActionParameter](../Models/sbpam.models.actionqueueactionparameter.md)]¦null|false|none|Dynamic parameters associated with this action.<br>Note: These may override the static parameters saved with the action group action.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action to which this parameter belongs.|
|»»»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»»»»» actionLog|[[SbPAM.Models.ActionLog](../Models/sbpam.models.actionlog.md)]¦null|false|none|Log entries associated with the execution of this action queue action.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action log entry.|
|»»»»»»»»»» type|any|false|none|none|
|»»»»»»»»»» hResult|integer(int32)|false|none|Internal reason for action failure if available.|
|»»»»»»»»»» timestamp|string(date-time)|false|none|When this log entry was created.|
|»»»»»»»»»» message|string¦null|false|none|Human readable message associate with this log entry.|
|»»»»»»»»»» version|string¦null|false|none|Current version captured in the log.|
|»»»»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action associated with this log entry.|
|»»»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionServiceId|string(uuid)¦null|false|none|Id of action service which was selected to execute this action.|
|»»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service.|
|»»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|Host name for this service.|
|»»»»»»»»»» added|string(date-time)|false|none|When this service was registered.|
|»»»»»»»»»» refreshToken|string¦null|false|none|Refresh token to the service (encrypted)|
|»»»»»»»»»» appTokenId|string(uuid)¦null|false|none|Id of App token assigned to this service.|
|»»»»»»»»»» appToken|[SbPAM.Models.AppToken](../Models/sbpam.models.apptoken.md)|false|none|This model represents a token that can be used by a service for authorization.|
|»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this token.|
|»»»»»»»»»»» name|string¦null|false|none|Name for this token.|
|»»»»»»»»»»» description|string¦null|false|none|Human readable description of this token.|
|»»»»»»»»»»» token|string¦null|false|none|Encrypted JWT Authorization BEARER token.|
|»»»»»»»»»»» tokenSalt|string¦null|false|none|Salt for token encryption.|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this token was created.|
|»»»»»»»»»»» expirationDate|string(date-time)|false|none|Expiration date/time for this token.|
|»»»»»»»»»»» revoked|boolean|false|none|True if this token has been revoked.|
|»»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this token.|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» status|any|false|none|none|
|»»»»»»»»»» description|string¦null|false|none|Human readable description of service status.|
|»»»»»»»»»» version|string¦null|false|none|Version number reported by the service.|
|»»»»»»»»»» serviceRegistrationId|string(uuid)¦null|false|none|Id of service registration associated with this service.|
|»»»»»»»»»» serviceRegistration|[SbPAM.Models.ServiceRegistration](../Models/sbpam.models.serviceregistration.md)|false|none|This model represents a registration for a remote service.|
|»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service registration.|
|»»»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»»»» dnsHostName|string¦null|false|none|Host name for this service registration.|
|»»»»»»»»»»» credentialId|string(uuid)¦null|false|none|Id of credentials for host.|
|»»»»»»»»»»» serviceName|string¦null|false|none|Service name for this service registration.|
|»»»»»»»»»»» settingsFilePath|string¦null|false|none|Settings file path for this service registration.|
|»»»»»»»»»»» settingsFileContents|string¦null|false|none|Settings file contents for this service registration.|
|»»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this registration.|
|»»»»»»»»»»» actionQueueId|string(uuid)¦null|false|none|Id of action queue which registers this service.|
|»»»»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» actionServiceProperty|[[SbPAM.Models.ActionServiceProperty](../Models/sbpam.models.actionserviceproperty.md)]¦null|false|none|A list of properties associated with this service.|
|»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this property.|
|»»»»»»»»»»» name|string¦null|false|none|Name of this property.|
|»»»»»»»»»»» value|string¦null|false|none|Value of this property.|
|»»»»»»»»»»» actionServiceId|string(uuid)|false|none|Id of action service which owns this property.|
|»»»»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|A list of action queue actions currently active on this service if this is an action service.|
|»»»»»»»»»» serviceNodeId|string(uuid)¦null|false|none|Id of the node this service is running from|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» startTime|string(date-time)|false|none|When the job started|
|»»»»»»»»» endTime|string(date-time)|false|none|When the job finished|
|»»»»»»»»» nodeId|string(uuid)|false|none|The action service node id|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When the job was created|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When the job was modified|
|»»»»»»»»» heartbeatUtc|string(date-time)|false|none|Heartbeat is used by the scheduler service to determine if a action job has stalled etc.|
|»»»»»»»»» complete|boolean|false|none|Complete is set true when the action step has completed successfully or continue on failure|
|»»»»»»»» createdBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this action was created.|
|»»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When this action was last modified.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» classification|any|false|none|none|
|»»»»»»»» pairedActionId|string(uuid)¦null|false|none|Reference to another action representing the end to this start or start to this end action|
|»»»»»»»» pairedAction|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|Current action group jobs which refer to this action group, if any.<br>Note: Is this obsolete???|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»»»»» jobId|string(uuid)|false|none|none|
|»»»»»»»» job|[SbPAM.Models.Job](../Models/sbpam.models.job.md)|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionQueue|[[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)]¦null|false|none|Current action queues which refer to this action group, if any.|
|»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|List of action queue action associate with this action queue.|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostConnected|boolean|false|none|True if the host was connected to during the last scan|
|»»»» netBiosName|string¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» domainConfigId|string(uuid)¦null|false|none|When a resource represents an AD domain then we need to link to it|
|»»» websiteId|string(uuid)¦null|false|none|When a resource represents a website then we need to link to it|
|»»» website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|This is the detail record for web-type manged resources|
|»»»» id|string(uuid)|false|none|Unique Id|
|»»»» name|string¦null|false|none|required - name of Website|
|»»»» avatarUrl|string¦null|false|none|optional - URL to avatar image (size 96x96)|
|»»»» activeDirectoryDomainId|string(uuid)¦null|false|none|required - Default to WellKnown Website Platform|
|»»»» associatedResourceId|string(uuid)¦null|false|none|A ManagedResource entity representing the server that hosts this website|
|»»»» logonUrl|string¦null|false|none|Where to send the browser for the user to get into the site; typically a login page|
|»»»» uris|[[SbPAM.Models.WebsiteUri](../Models/sbpam.models.websiteuri.md)]¦null|false|none|List of whole URIs or match patterns that this website incorporates|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» websiteId|string(uuid)|false|none|none|
|»»»»» website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|This is the detail record for web-type manged resources|
|»»»»» uri|string¦null|false|none|none|
|»»»»» match|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)(int32)|false|none|none|
|»»»»» matchType|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)(int32)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» isVirtual|boolean|false|none|True if not a real website<br>Used for AzureAD tenants|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» azureAdTenantId|string(uuid)¦null|false|none|When a resource represents an AzureAD tenant then we need to link to it|
|»»» azureAdTenant|[SbPAM.Models.AzureAdTenant](../Models/sbpam.models.azureadtenant.md)|false|none|none|
|»»»» id|string(uuid)|false|none|Unique Id|
|»»»» name|string¦null|false|none|Required - name of AzureAD tenant|
|»»»» description|string¦null|false|none|Description of the AzureAD tenant|
|»»»» tenantId|string¦null|false|none|Required - tenant identifier<br>"https://login.microsoftonline.com/$TenantId/oauth2/v2.0/token"|
|»»»» logonUrl|string¦null|false|none|Required - where to send the browser for the user to get into the site; typically a login page|
|»»»» emailDomain|string¦null|false|none|The '@whatever.com' part of the email address <br>Activity Token random characters will form the prefix|
|»»»» associatedDomainId|string(uuid)¦null|false|none|Optional link to ActiveDirectory domain|
|»»»» processGroupMembership|boolean|false|none|Enable/disable group membership processing|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» secretVaultId|string(uuid)¦null|false|none|When a resource represents a Secret Vault we need a link to it|
|»»» secretVault|[SbPAM.Models.SecretVault](../Models/sbpam.models.secretvault.md)|false|none|none|
|»»»» id|string(uuid)|false|read-only|none|
|»»»» name|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» managedDatabaseId|string(uuid)¦null|false|none|When a resource represents a database we need a link to it|
|»»» managedDatabase|[SbPAM.Models.ManagedDatabase](../Models/sbpam.models.manageddatabase.md)|false|none|none|
|»»»» id|string(uuid)|false|none|Unique id and DB key for this resource.|
|»»»» name|string¦null|false|none|Name of this managed resource.|
|»»»» server|string¦null|false|none|none|
|»»»» port|integer(int32)|false|none|none|
|»»»» type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)(int32)|false|none|none|
|»»»» hostDatabaseId|string(uuid)¦null|false|none|none|
|»»»» domainId|string(uuid)¦null|false|none|none|
|»»»» integratedSecurity|boolean|false|none|For SQL|
|»»»» trustServerCertificate|boolean|false|none|none|
|»»»» encrypted|boolean|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» platformId|string(uuid)¦null|false|none|Id of platform that this activity can be performed on.|
|»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»»»» id|string(uuid)|false|none|Unique identifier for this platform.|
|»»»» name|string¦null|false|none|Name for this platform.|
|»»»» description|string¦null|false|none|Description for this platform.|
|»»»» builtInAccount|string¦null|false|none|none|
|»»»» passwordComplexityPolicyId|string(uuid)¦null|false|none|none|
|»»»» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» lowerCase|boolean|false|none|none|
|»»»»» upperCase|boolean|false|none|none|
|»»»»» specialCharacter|boolean|false|none|none|
|»»»»» space|boolean|false|none|none|
|»»»»» numeric|boolean|false|none|none|
|»»»»» mustEndWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»»»» mustStartWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»»»» length|integer(int32)|false|none|none|
|»»»»» maxConsecutive|integer(int32)|false|none|none|
|»»»»» charsToExclude|string¦null|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» type|[SbPAM.Models.PasswordComplexityTypeEnum](../Models/sbpam.models.passwordcomplexitytypeenum.md)(int32)|false|none|none|
|»»»» scheduledChangePolicyId|string(uuid)¦null|false|none|none|
|»»»» scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» frequency|any|false|none|none|
|»»»»» periodValue|integer(int32)|false|none|none|
|»»»»» daysOfWeek|string¦null|false|none|none|
|»»»»» dayNumber|integer(int32)|false|none|none|
|»»»»» localTime|string(date-time)|false|none|none|
|»»»»» utcTime|string(date-time)¦null|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» protectionPolicyScheduleId|string(uuid)¦null|false|none|none|
|»»»» protectionPolicySchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»»» scanScheduleId|string(uuid)¦null|false|none|none|
|»»»» scanSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»»» verificationScheduleId|string(uuid)¦null|false|none|none|
|»»»» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»»» resetOnMismatch|boolean|false|none|none|
|»»»» icon|string(byte)¦null|false|none|none|
|»»»» basePlatformId|string(uuid)¦null|false|none|none|
|»»»» type|[SbPAM.Models.PlatformTypeEnum](../Models/sbpam.models.platformtypeenum.md)(int32)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» displayName|string¦null|false|none|Display name for resource.|
|»»» ipAddress|string¦null|false|none|IP Address for resource.|
|»»» serviceAccountId|string(uuid)¦null|false|none|Service Account used to connect to the resource.|
|»»» serviceAccount|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»»»» id|string(uuid)|false|none|Unique id and DB key for this credential.|
|»»»» domain|string¦null|false|none|Domain|
|»»»» username|string¦null|false|none|Username|
|»»»» password|string¦null|false|none|Password (encrypted while persisted).|
|»»»» salt|string¦null|false|none|Some salt for the password encryption|
|»»»» enablePassword|string¦null|false|none|Enable Password (encrypted while persisted).|
|»»»» enableSalt|string¦null|false|none|Some salt for the enable password encryption|
|»»»» name|string¦null|false|none|Name for this username password pair|
|»»»» description|string¦null|false|none|Description for username password pair|
|»»»» type|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)(int32)|false|none|none|
|»»»» userId|string(uuid)¦null|false|none|Host User Id, if there is one|
|»»»» managedAccountId|string(uuid)¦null|false|none|Host User Id, if there is one|
|»»»» platformId|string(uuid)¦null|false|none|Platform identifier for these credentials<br>Use this to group credentials for a platform|
|»»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»»»» sudoCommand|string¦null|false|none|Command to use for elevated commands on Linux, default "sudo".|
|»»»» passwordVaultConnectorId|string(uuid)¦null|false|none|Id for password vault integration connector for these credentials<br>Use this to manage credentials for this user.|
|»»»» passwordVaultConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»»» id|string(uuid)|false|none|Unique identifier for this integration connector.|
|»»»»» name|string¦null|false|none|Name for integration connector.|
|»»»»» description|string¦null|false|none|Description for integration connector|
|»»»»» connectorConfigurationId|string(uuid)|false|none|Configuration Id for integration connector|
|»»»»» connectorTemplateId|string(uuid)|false|none|The template that this connector is based on.|
|»»»»» monitorActionQueueId|string(uuid)¦null|false|none|Id of periodic action queue to execute, e.g. to fetch managed user list for a password vault.|
|»»»»» monitorActionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»» configuration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»»»» id|string(uuid)|false|none|Unique identifier for available connector.|
|»»»»»» name|string¦null|false|none|Name for configuration type of connector.|
|»»»»»» integrationConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»»»» integrationConnectorTemplate|[SbPAM.Models.IntegrationConnectorTemplate](../Models/sbpam.models.integrationconnectortemplate.md)|false|none|none|
|»»»»»»» id|string(uuid)|false|none|Unique identifier for this integration connector.|
|»»»»»»» name|string¦null|false|none|Name for integration connector, this corresponds to the "type" of the connector|
|»»»»»»» description|string¦null|false|none|Description for integration connector template.|
|»»»»»»» type|[SbPAM.Models.IntegrationConnectorType](../Models/sbpam.models.integrationconnectortype.md)(int32)|false|none|none|
|»»»»»»» configurationId|string(uuid)|false|none|Configuration Id for integration connector template.<br>The configuration of a template provide defaults for a new instance of a connector.|
|»»»»»»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|List of available connector settings|
|»»»»»»»» id|string(uuid)|false|none|Unique identifier for connector configuration values.|
|»»»»»»»» configurationId|string(uuid)|false|none|Unique identifier of connector configuration set.|
|»»»»»»»» name|string¦null|false|none|Name of configuration value.|
|»»»»»»»» value|string¦null|false|none|Set value for configuration.|
|»»»»»»»» defaultValue|string¦null|false|none|Default value for configuration.|
|»»»»»»»» description|string¦null|false|none|Description for configuration set.|
|»»»»»»»» displayOrder|integer(int32)|false|none|Numerical order display of configuration set for use in UI.|
|»»»»»»»» required|boolean|false|none|Determines whether a configuration value is required or optional.|
|»»»»»»»» connectorId|string(uuid)¦null|false|none|Unique identifier of integration connector|
|»»»»»»»» integrationConnectorTemplateId|string(uuid)¦null|false|none|Unique identifier of integration connector|
|»»»»»»»» connectorConfiguration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»»»»»» type|[SbPAM.Models.ConnectorConfigurationValueType](../Models/sbpam.models.connectorconfigurationvaluetype.md)(int32)|false|none|none|
|»»»»»»»» advanced|boolean|false|none|Advanced setting|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|Settings for this connector|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» passwordVaultInfo|string¦null|false|none|Extra info needed for password vault integration.|
|»»»» changeOnCheckout|boolean¦null|false|none|Settings for managed users on checkout change|
|»»»» changeOnRelease|boolean¦null|false|none|Settings for managed users on release change|
|»»»» showPassword|boolean|false|none|none|
|»»»» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between credentials and credential groups.|
|»»»»» credentialId|string(uuid)|false|none|Id of credential.|
|»»»»» credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»»»»» credentialGroupId|string(uuid)|false|none|Id of credential group.|
|»»»»» credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» description|string¦null|false|none|none|
|»»»»»» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between credentials and credential groups.|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» isDeleted|boolean|false|none|Credentials are marked as deleted when the owning user is removed|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» authenticationMethod|[SbPAM.Models.AuthenticationMethodType](../Models/sbpam.models.authenticationmethodtype.md)(int32)|false|none|none|
|»»»» keyGenAlgorithm|string¦null|false|none|none|
|»»»» keyLength|integer(int32)¦null|false|none|none|
|»»»» autoGenPassphrase|boolean¦null|false|none|none|
|»»»» passphrase|string¦null|false|none|none|
|»»»» privateKey|string¦null|false|none|none|
|»»»» publicKey|string¦null|false|none|none|
|»»» manageAccount|[SbPAM.Models.ManagedResourceManageAccountEnum](../Models/sbpam.models.managedresourcemanageaccountenum.md)(int32)|false|none|none|
|»»» protectedGroup|[[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)]¦null|false|none|Group(s) protected by this resource.|
|»»» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this policy.|
|»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|»»»» id|string(uuid)|false|none|Unique id for this collection.|
|»»»» name|string¦null|false|none|Name for this collection of configuration settings.|
|»»»» description|string¦null|false|none|Description of the collection.|
|»»»» type|[SbPAM.Models.ActivityConfigurationType](../Models/sbpam.models.activityconfigurationtype.md)(int32)|false|none|none|
|»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this collection.|
|»»»» modifiedBy|string(uuid)¦null|false|none|Id of user that modified this collection.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Creation date time in UTC|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Modified date time in UTC|
|»»»» isDefault|boolean|false|none|none|
|»»»» isDeleted|boolean|false|none|none|
|»»»» isUserModified|boolean|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» activityConfigurationSettings|[[SbPAM.Models.ActivityConfigurationSetting](../Models/sbpam.models.activityconfigurationsetting.md)]¦null|false|none|Settings which are part of this collection.|
|»»»»» id|string(uuid)|false|none|Unique id for this setting.|
|»»»»» name|string¦null|false|none|Display Name for this configuration setting.|
|»»»»» key|string¦null|false|none|Key for this setting.|
|»»»»» value|string¦null|false|none|Value for this setting.|
|»»»»» type|[SbPAM.Models.ActivityConfigurationSettingType](../Models/sbpam.models.activityconfigurationsettingtype.md)(int32)|false|none|none|
|»»»»» activityConfigurationId|string(uuid)|false|none|Id of configuration collection to which this setting belongs.|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» customFields|[[SbPAM.Models.CustomField](../Models/sbpam.models.customfield.md)]¦null|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» activityConfigurationId|string(uuid)|false|none|none|
|»»»»» customFieldNumber|integer(int32)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» label|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» options|string¦null|false|none|none|
|»»»»» length|integer(int32)¦null|false|none|none|
|»»»»» customFieldDataType|[SbPAM.Models.CustomFieldDataType](../Models/sbpam.models.customfielddatatype.md)(int32)|false|none|none|
|»»»»» required|boolean|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» deleteAccount|boolean|false|none|none|
|»»»» sessionRetryInterval|integer(int32)¦null|false|none|none|
|»»»» approvedWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|»»»» notifyApproversWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|»»»» maxSessionLength|integer(int32)¦null|false|none|none|
|»»»» allowSessionExtension|boolean|false|none|none|
|»»»» sessionExtensionMinutes|integer(int32)¦null|false|none|none|
|»»»» sessionExtensionCount|integer(int32)¦null|false|none|none|
|»»»» sessionMonitorInterval|integer(int32)¦null|false|none|none|
|»»»» expirationTimeoutThreshold|integer(int32)¦null|false|none|none|
|»»»» rdpProxyHost|string¦null|false|none|none|
|»»»» sshProxyHost|string¦null|false|none|none|
|»»»» sshScanDc|boolean|false|none|none|
|»»»» recordAudio|boolean|false|none|none|
|»»»» proxyAutoConnect|boolean|false|none|none|
|»»»» record|boolean|false|none|none|
|»»»» approvalTypeRequired|[SbPAM.Models.ApprovalType](../Models/sbpam.models.approvaltype.md)(int32)|false|none|none|
|»»»» approvalWorkflowId|string(uuid)¦null|false|none|none|
|»»»» approvalWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|»»»» monitorEntireSession|boolean|false|none|none|
|»»»» allowViewPassword|boolean|false|none|none|
|»»»» allowPasswordAccess|boolean|false|none|none|
|»»»» allowAutofillPassword|boolean|false|none|none|
|»»»» leaveInGroup|boolean|false|none|none|
|»»»» activityTokenComplexity|string(uuid)¦null|false|none|none|
|»»»» clearWebsiteDataAfterStop|boolean|false|none|none|
|»»»» clearWebsiteDataBeforeStart|boolean|false|none|none|
|»»»» notesRequired|boolean|false|none|none|
|»»»» ticketRequired|boolean|false|none|none|
|»»»» viewPasswordInSeconds|integer(int32)¦null|false|none|none|
|»»» actionQueueId|string(uuid)¦null|false|none|Id of Action queue which manages this resource.|
|»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»» managedResourceJoin|[[SbPAM.Models.ManagedResourceJoin](../Models/sbpam.models.managedresourcejoin.md)]¦null|false|none|Groups to which this resource belongs via join table.|
|»»»» managedResourceId|string(uuid)|false|none|Id of managed resource.|
|»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»»»» managedResourceGroupId|string(uuid)|false|none|Id of managed resource group.|
|»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»» name|string¦null|false|none|Name of this group.|
|»»»»» type|[SbPAM.Models.ManagedResourceGroupType](../Models/sbpam.models.managedresourcegrouptype.md)(int32)|false|none|none|
|»»»»» platformId|string(uuid)¦null|false|none|If this is a built-in platform resource group then for which platform?|
|»»»»» manageAccounts|[SbPAM.Models.ManagedResourceGroupManageAccountsEnum](../Models/sbpam.models.managedresourcegroupmanageaccountsenum.md)(int32)|false|none|none|
|»»»»» notificationEmailList|string¦null|false|none|Comma-delimited list of email addresses to send notifications to|
|»»»»» nodeId|string(uuid)|false|none|Support multi-master data clustering|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» managedResourceJoin|[[SbPAM.Models.ManagedResourceJoin](../Models/sbpam.models.managedresourcejoin.md)]¦null|false|read-only|Managed resources in this group via join table.|
|»»»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»»»»» managedResourceGroupPolicyJoin|[[SbPAM.Models.ManagedResourceGroupPolicyJoin](../Models/sbpam.models.managedresourcegrouppolicyjoin.md)]¦null|false|read-only|Policies which reference this group via join table.|
|»»»»»» managedResourceGroupId|string(uuid)|false|none|Id of managed resource group.|
|»»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|none|
|»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this item.|
|»»»»»»» name|string¦null|false|none|Name of this policy.|
|»»»»»»» description|string¦null|false|none|Human readable description of this policy.|
|»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this policy.|
|»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|»»»»»»» priority|integer(int32)|false|none|Priority of this policy relative to other matching policies.<br>Note: 0 is the lowest priority.|
|»»»»»»» isDisabled|boolean|false|none|True if this policy has been disabled.|
|»»»»»»» isDeleted|boolean|false|none|True if this policy has been deleted.|
|»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»» managedAccountPolicyJoin|[[SbPAM.Models.ManagedAccountPolicyJoin](../Models/sbpam.models.managedaccountpolicyjoin.md)]¦null|false|none|Managed account(s) referenced by this policy via join table.|
|»»»»»»»» managedAccountId|string(uuid)|false|none|Id of managed account.|
|»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|This model represents a managed account.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this account.|
|»»»»»»»»» name|string¦null|false|none|Name of this user.|
|»»»»»»»»» type|[SbPAM.Models.ManagedAccountType](../Models/sbpam.models.managedaccounttype.md)(int32)|false|none|none|
|»»»»»»»»» locked|boolean|false|none|Activity Lock - while true prevents from creating new activities|
|»»»»»»»»» userId|string(uuid)¦null|false|none|AD user id associated with this user.|
|»»»»»»»»» managedAccountJoin|[[SbPAM.Models.ManagedAccountJoin](../Models/sbpam.models.managedaccountjoin.md)]¦null|false|none|Groups to which this account belongs via join table.|
|»»»»»»»»»» managedAccountId|string(uuid)|false|none|Id of managed account.|
|»»»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|This model represents a managed account.|
|»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|Id of managed account group.|
|»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|This model represents a group of managed accounts.|
|»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»»»»»» name|string¦null|false|none|Name of this group.|
|»»»»»»»»»»» type|[SbPAM.Models.ManagedAccountGroupType](../Models/sbpam.models.managedaccountgrouptype.md)(int32)|false|none|none|
|»»»»»»»»»»» groupId|string(uuid)¦null|false|none|AD group id if this is an active directory group|
|»»»»»»»»»»» mfaConnectorId|string(uuid)¦null|false|none|Alternate MFA provider for members of this group. Override this at the User level.|
|»»»»»»»»»»» isReviewer|boolean|false|none|Is assigned reviewer role (for AccessCertification)|
|»»»»»»»»»»» managedAccountJoin|[[SbPAM.Models.ManagedAccountJoin](../Models/sbpam.models.managedaccountjoin.md)]¦null|false|none|Managed accounts in this group via join table.|
|»»»»»»»»»»» managedAccountGroupPolicyJoin|[[SbPAM.Models.ManagedAccountGroupPolicyJoin](../Models/sbpam.models.managedaccountgrouppolicyjoin.md)]¦null|false|none|Policies which reference this account group via join table.|
|»»»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|Id of managed account group.|
|»»»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|This model represents a group of managed accounts.|
|»»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»»»»»» groupCollectionJoin|[[SbPAM.Models.GroupCollectionJoin](../Models/sbpam.models.groupcollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed account groups and user collections.|
|»»»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|Id of Managed Account Group.|
|»»»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|This model represents a group of managed accounts.|
|»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|Id of User Collection.|
|»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»»»»» userCollectionJoin|[[SbPAM.Models.UserCollectionJoin](../Models/sbpam.models.usercollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed accounts and user collections.|
|»»»»»»»»»»»»»» managedAccountId|string(uuid)|false|none|Id of Managed Account.|
|»»»»»»»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|This model represents a managed account.|
|»»»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|Id of User Collection.|
|»»»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»»» groupCollectionJoin|[[SbPAM.Models.GroupCollectionJoin](../Models/sbpam.models.groupcollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed account groups and user collections.|
|»»»»»»»»»»»»» userAndGroupCollectionPolicyJoin|[[SbPAM.Models.UserAndGroupCollectionPolicyJoin](../Models/sbpam.models.userandgroupcollectionpolicyjoin.md)]¦null|false|read-only|none|
|»»»»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|none|
|»»»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»»» isReviewer|boolean|false|none|none|
|»»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» managedAccountPolicyJoin|[[SbPAM.Models.ManagedAccountPolicyJoin](../Models/sbpam.models.managedaccountpolicyjoin.md)]¦null|false|none|Policies which reference this account via join table.|
|»»»»»»»»» sid|string¦null|false|none|Sid of user, this should match an existing HostUser|
|»»»»»»»»» userCollectionJoin|[[SbPAM.Models.UserCollectionJoin](../Models/sbpam.models.usercollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed accounts and user collections.|
|»»»»»»»»» isReviewer|boolean|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»» managedAccountGroupPolicyJoin|[[SbPAM.Models.ManagedAccountGroupPolicyJoin](../Models/sbpam.models.managedaccountgrouppolicyjoin.md)]¦null|false|none|Managed account group(s) referenced by this policy via join table.|
|»»»»»»» managedResourcePolicyJoin|[[SbPAM.Models.ManagedResourcePolicyJoin](../Models/sbpam.models.managedresourcepolicyjoin.md)]¦null|false|none|Managed resource(s) referenced by this policy via join table.|
|»»»»»»»» managedResourceId|string(uuid)|false|none|Id of managed resource.|
|»»»»»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»»»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»» managedResourceGroupPolicyJoin|[[SbPAM.Models.ManagedResourceGroupPolicyJoin](../Models/sbpam.models.managedresourcegrouppolicyjoin.md)]¦null|false|none|Managed resource group(s) referenced by this policy via join table.|
|»»»»»»» activityJoin|[[SbPAM.Models.ActivityJoin](../Models/sbpam.models.activityjoin.md)]¦null|false|none|Activities referenced by this policy via join table.|
|»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»» activityId|string(uuid)|false|none|none|
|»»»»»»»» activity|[SbPAM.Models.Activity](../Models/sbpam.models.activity.md)|false|none|This model represents an activity that a user can perform such as requesting elevated access to a resource.|
|»»»»»»»»» id|string(uuid)|false|none|Unique identifier for this activity.|
|»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this activity.|
|»»»»»»»»» modifiedBy|string(uuid)¦null|false|none|Id of user that modified this activity.|
|»»»»»»»»» name|string¦null|false|none|Activity name - i.e. Add to Local Group|
|»»»»»»»»» description|string¦null|false|none|Description of the activity|
|»»»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this activity.|
|»»»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|»»»»»»»»» platformId|string(uuid)¦null|false|none|Id of platform that this activity can be performed on.|
|»»»»»»»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»»»»»»»»» startActionGroupId|string(uuid)¦null|false|none|Action Group to run at the start of the activity.|
|»»»»»»»»» duringActionGroupId|string(uuid)¦null|false|none|Optional - Action group to run during the activity|
|»»»»»»»»» endActionGroupId|string(uuid)¦null|false|none|Action group to run at the end of the activity.|
|»»»»»»»»» activityType|[SbPAM.Models.ActivityType](../Models/sbpam.models.activitytype.md)(int32)|false|none|none|
|»»»»»»»»» loginAccount|[SbPAM.Models.ActivityLoginType](../Models/sbpam.models.activitylogintype.md)(int32)|false|none|none|
|»»»»»»»»» loginAccountNameFormat|string¦null|false|none|Login account format.|
|»»»»»»»»» requesterLoginFormat|[SbPAM.Models.RequesterLoginFormat](../Models/sbpam.models.requesterloginformat.md)(int32)|false|none|none|
|»»»»»»»»» applicationToLaunch|string¦null|false|none|Launch proxy from path|
|»»»»»»»»» preferredRDSHostId|string(uuid)¦null|false|none|Managed resource for Remote Desktop Server(RDS)|
|»»»»»»»»» connectCredentialId|string(uuid)¦null|false|none|Connect Account for RDS impersonation|
|»»»»»»»»» createAccount|boolean|false|none|Create local account option for activity|
|»»»»»»»»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](../Models/sbpam.models.activitygroupactivity.md)]¦null|false|none|Many to many relationship between activities and activity groups.|
|»»»»»»»»»» activityId|string(uuid)|false|none|none|
|»»»»»»»»»» activity|[SbPAM.Models.Activity](../Models/sbpam.models.activity.md)|false|none|This model represents an activity that a user can perform such as requesting elevated access to a resource.|
|»»»»»»»»»» activityGroupId|string(uuid)|false|none|none|
|»»»»»»»»»» activityGroup|[SbPAM.Models.ActivityGroup](../Models/sbpam.models.activitygroup.md)|false|none|This model represents an group of activities.|
|»»»»»»»»»»» id|string(uuid)|false|none|Unique identifier for this group.|
|»»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this activity.|
|»»»»»»»»»»» modifiedBy|string(uuid)¦null|false|none|Id of user that modified this activity.|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Modified date time in UTC|
|»»»»»»»»»»» name|string¦null|false|none|Name for this group.|
|»»»»»»»»»»» description|string¦null|false|none|Description for this group.|
|»»»»»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this group.|
|»»»»»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|»»»»»»»»»»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](../Models/sbpam.models.activitygroupactivity.md)]¦null|false|none|Many to many relationship between activities and activity groups.|
|»»»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» deleteAccount|boolean|false|none|For a managed account, delete account when finished when false account will be disabled|
|»»»»»»»»» vaultId|string(uuid)¦null|false|none|none|
|»»»»»»»»» vaultInfo|string¦null|false|none|Vault properties, JSON string and specific to the Vault|
|»»»»»»»»» logonUrl|string¦null|false|none|Url for site login|
|»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» activityGroupJoin|[[SbPAM.Models.ActivityGroupJoin](../Models/sbpam.models.activitygroupjoin.md)]¦null|false|none|Activity groups referenced by this policy via join table.|
|»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»» activityGroupId|string(uuid)|false|none|none|
|»»»»»»»» activityGroup|[SbPAM.Models.ActivityGroup](../Models/sbpam.models.activitygroup.md)|false|none|This model represents an group of activities.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» credentialPolicyJoin|[[SbPAM.Models.CredentialPolicyJoin](../Models/sbpam.models.credentialpolicyjoin.md)]¦null|false|none|Credentials referenced by this policy via join table.|
|»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»» credentialId|string(uuid)|false|none|none|
|»»»»»»»» credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» credentialGroupPolicyJoin|[[SbPAM.Models.CredentialGroupPolicyJoin](../Models/sbpam.models.credentialgrouppolicyjoin.md)]¦null|false|none|Credential Groups referenced by this policy via join table.|
|»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»» credentialGroupId|string(uuid)|false|none|none|
|»»»»»»»» credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» userAndGroupCollectionPolicyJoin|[[SbPAM.Models.UserAndGroupCollectionPolicyJoin](../Models/sbpam.models.userandgroupcollectionpolicyjoin.md)]¦null|false|none|User and Group Collections referenced by this policy via join table.|
|»»»»»»» policyType|[SbPAM.Models.PolicyType](../Models/sbpam.models.policytype.md)(int32)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» manageResourceGroupProtectionPolicyJoin|[[SbPAM.Models.ManageResourceGroupProtectionPolicyJoin](../Models/sbpam.models.manageresourcegroupprotectionpolicyjoin.md)]¦null|false|read-only|Policies which reference this group via join table.|
|»»»»»» managedResourceGroupId|string(uuid)|false|none|Id of managed resource group.|
|»»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|none|
|»»»»»» protectionPolicyId|string(uuid)|false|none|Id of protect group policy.|
|»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|This model represents a policy which specifies a group or groups to be protected on a collection of managed resources.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this policy.|
|»»»»»»» name|string¦null|false|none|Name of this policy.|
|»»»»»»» description|string¦null|false|none|Human readable description of this policy.|
|»»»»»»» groupMonitorInterval|integer(int32)|false|none|none|
|»»»»»»» isDisabled|boolean|false|none|True if this policy has been disabled.|
|»»»»»»» isDeleted|boolean|false|none|True if this policy has been deleted.|
|»»»»»»» protectionPolicyGroup|[[SbPAM.Models.ProtectionPolicyGroup](../Models/sbpam.models.protectionpolicygroup.md)]¦null|false|none|Protected groups which belong to this policy.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»»» name|string¦null|false|none|Name of this group.|
|»»»»»»»» deleted|boolean|false|none|Has this group been removed from policy?|
|»»»»»»»» protectionPolicyId|string(uuid)|false|none|Id of policy to which this group belongs.|
|»»»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|This model represents a policy which specifies a group or groups to be protected on a collection of managed resources.|
|»»»»»»»» protectionPolicyGroupMember|[[SbPAM.Models.ProtectionPolicyGroupMember](../Models/sbpam.models.protectionpolicygroupmember.md)]¦null|false|none|Members allowed in this group.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this member.|
|»»»»»»»»» userName|string¦null|false|none|UserName of this member.|
|»»»»»»»»» deleted|boolean|false|none|Has this member been removed from its group?|
|»»»»»»»»» userId|string(uuid)¦null|false|none|Id of user if this member is a user.|
|»»»»»»»»» protectionPolicyGroupId|string(uuid)¦null|false|none|Id of group in which this member is allowed.|
|»»»»»»»»» protectionPolicyGroup|[SbPAM.Models.ProtectionPolicyGroup](../Models/sbpam.models.protectionpolicygroup.md)|false|none|This model represents a group protected by a protected group policy.|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» manageResourceProtectionPolicyJoin|[[SbPAM.Models.ManageResourceProtectionPolicyJoin](../Models/sbpam.models.manageresourceprotectionpolicyjoin.md)]¦null|false|none|Managed resources which use this policy via join table.|
|»»»»»»»» managedResourceId|string(uuid)|false|none|Id of managed resource.|
|»»»»»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»»»»»»»» protectionPolicyId|string(uuid)|false|none|Id of protect group policy.|
|»»»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|This model represents a policy which specifies a group or groups to be protected on a collection of managed resources.|
|»»»»»»» manageResourceGroupProtectionPolicyJoin|[[SbPAM.Models.ManageResourceGroupProtectionPolicyJoin](../Models/sbpam.models.manageresourcegroupprotectionpolicyjoin.md)]¦null|false|none|Managed resource groups which use this policy via join table.|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» ouMappingEnabled|boolean|false|none|Is mapping enabled for this group|
|»»»»» ouFqdn|string¦null|false|none|Fully Qualified Domain Name for the mapped OU|
|»»»»» ouDomainConfigId|string(uuid)¦null|false|none|Id of Domain which contains the mapped OU|
|»»»»» ouDomainConfig|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|none|
|»»»»» ouAutoOnboard|boolean|false|none|Automatically onboard to SbPAM|
|»»»»» ouIncludeChildren|boolean|false|none|Include chiild OUs in the group|
|»»» managedResourcePolicyJoin|[[SbPAM.Models.ManagedResourcePolicyJoin](../Models/sbpam.models.managedresourcepolicyjoin.md)]¦null|false|none|Policies which reference this resource via join table.|
|»»» manageResourceProtectionPolicyJoin|[[SbPAM.Models.ManageResourceProtectionPolicyJoin](../Models/sbpam.models.manageresourceprotectionpolicyjoin.md)]¦null|false|none|Policies which reference this group via join table.|
|»»» verificationScheduleId|string(uuid)¦null|false|none|Id for the managed user verification schedule (can override platform, resource schedule id)|
|»»» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»» passwordComplexityPolicyId|string(uuid)¦null|false|none|Id for password complexity (can override platform, resource password policy id)|
|»»» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|none|
|»»» portSsh|integer(int32)|false|none|none|
|»»» portRdp|integer(int32)|false|none|none|
|»»» portWinRm|integer(int32)|false|none|none|
|»»» portWinRmHttps|integer(int32)|false|none|none|
|»»» winRmHttpSetting|[SbPAM.Models.WinRmHttpSettings](../Models/sbpam.models.winrmhttpsettings.md)(int32)|false|none|none|
|»»» disableWinRm|boolean|false|none|none|
|»»» acceptThumbprintOnFirstDiscovery|boolean|false|none|none|
|»»» trustedThumbprint|string¦null|false|none|none|
|»»» discoveredThumbprint|string¦null|false|none|none|
|»»» sshTrustActionType|any|false|none|none|
|»»» certificateType|any|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» isSystem|boolean|false|none|Protection policy created by|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» currentProtectedGroupId|string(uuid)¦null|false|none|Id of group to which this member belongs.|
|» currentProtectedGroup|[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)|false|none|This model represents a protected group associated with a managed resource.|
|» isTransient|boolean|false|none|Transient group membership (was added by a session)|
|» isSystem|boolean|false|none|System group membership (was added by policy)|
|» nodeId|string(uuid)|false|none|none|
|» createdDateTimeUtc|string(date-time)|false|none|none|
|» modifiedDateTimeUtc|string(date-time)|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|Host|
|type|Domain|
|type|Website|
|type|AzureAdTenant|
|type|SecretVault|
|type|Database|
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
|jobType|None|
|jobType|Protection|
|jobType|PasswordRotation|
|jobType|PasswordVerification|
|jobType|HostScan|
|jobType|DomainSync|
|jobType|DomainSyncTest|
|jobType|ActivitySession|
|jobType|RemoteServiceRegistration|
|jobType|ServiceRotation|
|jobType|PasswordRollback|
|jobType|DomainOUMapping|
|jobType|ResourceConnectionTest|
|jobType|WinRmHttp|
|jobType|Report|
|type|ActionService|
|type|ProxyService|
|type|AgentService|
|type|EmailService|
|type|ServiceNode|
|type|SchedulerService|
|type|SiemService|
|type|ActiveDirectoryService|
|type|WebService|
|type|RagService|
|type|NginxService|
|type|Unknown|
|type|TestService|
|type|ActionService|
|type|ProxyService|
|type|AgentService|
|type|EmailService|
|type|ServiceNode|
|type|SchedulerService|
|type|SiemService|
|type|ActiveDirectoryService|
|type|WebService|
|type|RagService|
|type|NginxService|
|type|Unknown|
|type|TestService|
|match|Domain|
|match|Exact|
|match|Never|
|match|StartsWith|
|match|Regex|
|match|Host|
|match|All|
|matchType|Domain|
|matchType|Exact|
|matchType|Never|
|matchType|StartsWith|
|matchType|Regex|
|matchType|Host|
|matchType|All|
|type|PostgreSQL|
|type|SqlServer|
|type|Sqlite|
|type|Oracle|
|type|MySql|
|type|Unknown|
|mustEndWith|None|
|mustEndWith|Lowercase|
|mustEndWith|Uppercase|
|mustEndWith|Numeric|
|mustEndWith|Symbol|
|mustEndWith|Space|
|mustStartWith|None|
|mustStartWith|Lowercase|
|mustStartWith|Uppercase|
|mustStartWith|Numeric|
|mustStartWith|Symbol|
|mustStartWith|Space|
|type|Password|
|type|Samaccountname|
|type|Unspecified|
|type|Cloud|
|type|Database|
|type|Configuration|
|type|User|
|type|Service|
|type|ActivityToken|
|type|Application|
|type|VaultUser|
|type|SshKeyCert|
|type|Any|
|type|GenericConnector|
|type|StealthAUDITConnector|
|type|PasswordVaultConnector|
|type|Uri|
|type|HostName|
|type|Token|
|type|Credential|
|type|User|
|type|Resource|
|type|String|
|type|Int32|
|type|Int64|
|type|Boolean|
|type|Options|
|type|Password|
|type|PowerShell|
|authenticationMethod|Password|
|authenticationMethod|SshCertificate|
|authenticationMethod|SshCertificateAndPassword|
|manageAccount|Unmanaged|
|manageAccount|Managed|
|type|Generic|
|type|ConnectionProfile|
|type|EmailSettings|
|type|System|
|type|String|
|type|Integer|
|type|UnsignedInteger|
|type|Boolean|
|type|Guid|
|customFieldDataType|Integer|
|customFieldDataType|String|
|customFieldDataType|Options|
|approvalTypeRequired|Deny|
|approvalTypeRequired|Allow|
|approvalTypeRequired|Workflow|
|type|Local|
|manageAccounts|PerResource|
|manageAccounts|Unmanaged|
|manageAccounts|Managed|
|type|HostUser|
|type|HostService|
|type|HostScheduledTask|
|type|Local|
|type|ActiveDirectory|
|activityType|Interactive|
|activityType|InteractiveAppLaunch|
|activityType|TaskAutomation|
|activityType|CredentialRelease|
|loginAccount|Requester|
|loginAccount|Managed|
|loginAccount|ActivityIdentity|
|loginAccount|Vault|
|loginAccount|Resource|
|requesterLoginFormat|Samaccountname|
|requesterLoginFormat|UPN|
|requesterLoginFormat|Email|
|requesterLoginFormat|SamAccountNameOnly|
|requesterLoginFormat|Custom|
|policyType|Resource|
|policyType|Credential|
|winRmHttpSetting|UseHttp|
|winRmHttpSetting|UseHttpsIfAvailable|
|winRmHttpSetting|UseHttpsOnly|
|winRmHttpSetting|Default|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


