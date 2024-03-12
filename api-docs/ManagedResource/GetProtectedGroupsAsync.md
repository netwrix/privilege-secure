
## Return protected groups for given resource (Auth roles: Admin,App)

<a id="opIdGetProtectedGroupsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/{managedResourceId}/ProtectedGroup \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedResource/{managedResourceId}/ProtectedGroup -Headers $Headers
```

`GET /api/v1/ManagedResource/{managedResourceId}/ProtectedGroup`

<h3 id="return-protected-groups-for-given-resource-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceId|path|string(uuid)|true|Managed resource id|
|system|query|boolean|false|Set to true to find temporary protection groups|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "allowedProtectedGroupMember": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "userName": "string",
        "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
        "allowedProtectedGroupId": "9d480d33-faff-4107-bf1e-2318ef1cb9ba",
        "allowedProtectedGroup": {},
        "currentProtectedGroupId": "81709e2c-ecdf-47e8-b646-c36a4fa22d8b",
        "currentProtectedGroup": {},
        "isTransient": true,
        "isSystem": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ],
    "currentProtectedGroupMember": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "userName": "string",
        "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
        "allowedProtectedGroupId": "9d480d33-faff-4107-bf1e-2318ef1cb9ba",
        "allowedProtectedGroup": {},
        "currentProtectedGroupId": "81709e2c-ecdf-47e8-b646-c36a4fa22d8b",
        "currentProtectedGroup": {},
        "isTransient": true,
        "isSystem": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
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
        "distinguishedName": "string",
        "ipAddress": "string",
        "os": "string",
        "version": "string",
        "lsaLookupCache": "string",
        "lastUpdatedDateTimeUtc": "2019-08-24T14:15:22Z",
        "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
        "hasSSH": true,
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
        "dnsHostName": "string",
        "netBiosName": "string",
        "users": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
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
                    {}
                  ],
                  "activeDirectoryGroupGroupGroup": [
                    {}
                  ],
                  "activeDirectoryGroupGroupMember": [
                    {}
                  ],
                  "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                  "activeDirectoryDomain": {},
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
              "objectSid": "string",
              "maxRenewAge": 0,
              "maxTicketAge": 0,
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                  "hostUserGroupJoin": [
                    {}
                  ],
                  "hostGroupGroupJoins": [
                    {}
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
                  "hostUsers": [
                    {}
                  ],
                  "hostGroups": [
                    {}
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
                  "activeDirectoryDomain": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "domainName": "string",
                    "netBiosName": "string",
                    "domainController": "string",
                    "usnChanged": 0,
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "functionalLevel": "string",
                    "activeDirectoryGroup": [],
                    "objectSid": "string",
                    "maxRenewAge": 0,
                    "maxTicketAge": 0,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "domainName": "string",
                    "netBiosName": "string",
                    "domainController": "string",
                    "usnChanged": 0,
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "functionalLevel": "string",
                    "activeDirectoryGroup": [],
                    "objectSid": "string",
                    "maxRenewAge": 0,
                    "maxTicketAge": 0,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "domainName": "string",
                  "netBiosName": "string",
                  "domainController": "string",
                  "usnChanged": 0,
                  "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                  "activeDirectoryDomainConfiguration": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryDomain": [],
                    "name": "string",
                    "controllers": [],
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
                    {}
                  ],
                  "objectSid": "string",
                  "maxRenewAge": 0,
                  "maxTicketAge": 0,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    "group": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "hostDatabaseDbs": [
                  {}
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
                    "databaseDb": {},
                    "hostUsers": [],
                    "hostGroups": []
                  }
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
                    "activeDirectoryDomain": [],
                    "name": "string",
                    "controllers": [],
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
                    {}
                  ],
                  "objectSid": "string",
                  "maxRenewAge": 0,
                  "maxTicketAge": 0,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
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
                  "activeDirectoryDomain": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "domainName": "string",
                    "netBiosName": "string",
                    "domainController": "string",
                    "usnChanged": 0,
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "functionalLevel": "string",
                    "activeDirectoryGroup": [],
                    "objectSid": "string",
                    "maxRenewAge": 0,
                    "maxTicketAge": 0,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "domainName": "string",
                    "netBiosName": "string",
                    "domainController": "string",
                    "usnChanged": 0,
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "functionalLevel": "string",
                    "activeDirectoryGroup": [],
                    "objectSid": "string",
                    "maxRenewAge": 0,
                    "maxTicketAge": 0,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                {}
              ]
            },
            "hostUsers": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
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
                    "activeDirectoryDomain": [],
                    "name": "string",
                    "controllers": [],
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
                    {}
                  ],
                  "objectSid": "string",
                  "maxRenewAge": 0,
                  "maxTicketAge": 0,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    "group": {},
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
                    "hostUsers": [],
                    "hostGroups": [],
                    "hostDbRoles": []
                  }
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
                    "activeDirectoryDomain": [],
                    "name": "string",
                    "controllers": [],
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
                    {}
                  ],
                  "objectSid": "string",
                  "maxRenewAge": 0,
                  "maxTicketAge": 0,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
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
            ]
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
                  "hostScanUserGroupJoin": [
                    {}
                  ],
                  "hostScanGroupGroupJoin": [
                    {}
                  ],
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
                  "hostScanUserGroupJoin": [
                    {}
                  ],
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
                    "actionTemplateParameter": [],
                    "action": [],
                    "actionTemplateDemand": [],
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "actionPack": {},
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
                    {}
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
                    "actionGroupJob": [],
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
                    "actionTemplateParameter": [],
                    "action": [],
                    "actionTemplateDemand": [],
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "actionPack": {},
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
                    "action": [],
                    "actionGroupJob": [],
                    "actionQueue": []
                  },
                  "actionParameter": [
                    {}
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
                    "actionTemplateParameter": {},
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
                    {}
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
                  "configurationValues": [
                    {}
                  ],
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
        ]
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
                  {
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
                  }
                ],
                "action": [
                  {}
                ],
                "actionTemplateDemand": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "value": "string",
                    "type": null,
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionTemplate": {},
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "actionPack": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
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
                  "actionTemplate": [
                    {}
                  ],
                  "actionTemplateParameter": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
                  ],
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
                  {
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
                  }
                ],
                "action": [
                  {}
                ],
                "actionTemplateDemand": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "value": "string",
                    "type": null,
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionTemplate": {},
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "actionPack": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
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
                  "actionTemplate": [
                    {}
                  ],
                  "actionTemplateParameter": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
                  ],
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
              "actionParameter": [
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
                  "valueSet": [
                    "string"
                  ],
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
                    "activityConfigurationSettings": []
                  },
                  "priority": 0,
                  "isDisabled": true,
                  "isDeleted": true,
                  "isDefault": true,
                  "isUserModified": true,
                  "managedAccountPolicyJoin": [
                    {}
                  ],
                  "managedAccountGroupPolicyJoin": [
                    {}
                  ],
                  "managedResourcePolicyJoin": [
                    {}
                  ],
                  "managedResourceGroupPolicyJoin": [
                    {}
                  ],
                  "activityJoin": [
                    {}
                  ],
                  "activityGroupJoin": [
                    {}
                  ],
                  "credentialPolicyJoin": [
                    {}
                  ],
                  "credentialGroupPolicyJoin": [
                    {}
                  ],
                  "userAndGroupCollectionPolicyJoin": [
                    {}
                  ],
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
                  "protectionPolicyGroup": [
                    {}
                  ],
                  "manageResourceProtectionPolicyJoin": [
                    {}
                  ],
                  "manageResourceGroupProtectionPolicyJoin": [
                    {}
                  ],
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
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "domainName": "string",
                  "netBiosName": "string",
                  "domainController": "string",
                  "usnChanged": 0,
                  "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                  "activeDirectoryDomainConfiguration": {},
                  "functionalLevel": "string",
                  "activeDirectoryGroup": [
                    {}
                  ],
                  "objectSid": "string",
                  "maxRenewAge": 0,
                  "maxTicketAge": 0,
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                }
              ],
              "name": "string",
              "controllers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "activeDirectoryDomain": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "domainName": "string",
                    "netBiosName": "string",
                    "domainController": "string",
                    "usnChanged": 0,
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "functionalLevel": "string",
                    "activeDirectoryGroup": [],
                    "objectSid": "string",
                    "maxRenewAge": 0,
                    "maxTicketAge": 0,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
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
              ]
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
                  "managedAccountJoin": [
                    {}
                  ],
                  "managedAccountPolicyJoin": [
                    {}
                  ],
                  "sid": "string",
                  "userCollectionJoin": [
                    {}
                  ],
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
                  "managedAccountJoin": [
                    {}
                  ],
                  "managedAccountGroupPolicyJoin": [
                    {}
                  ],
                  "groupCollectionJoin": [
                    {}
                  ],
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
                  "managedResourceJoin": [
                    {}
                  ],
                  "platform": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "builtInAccount": "string",
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
                    "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
                    "scheduledChangePolicy": {},
                    "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
                    "protectionPolicySchedule": {},
                    "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
                    "scanSchedule": {},
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "resetOnMismatch": true,
                    "icon": "string",
                    "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
                    "type": "Unspecified",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "managedResourceGroupPolicyJoin": [
                    {}
                  ],
                  "manageResourceGroupProtectionPolicyJoin": [
                    {}
                  ],
                  "ouMappingEnabled": true,
                  "ouFqdn": "string",
                  "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                  "ouDomainConfig": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryDomain": [],
                    "name": "string",
                    "controllers": [],
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
                    "activityConfigurationSettings": []
                  },
                  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                  "platform": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "builtInAccount": "string",
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
                    "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
                    "scheduledChangePolicy": {},
                    "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
                    "protectionPolicySchedule": {},
                    "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
                    "scanSchedule": {},
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "resetOnMismatch": true,
                    "icon": "string",
                    "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
                    "type": "Unspecified",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
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
                  "activityGroupActivities": [
                    {}
                  ],
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
                    "activityConfigurationSettings": []
                  },
                  "activityGroupActivities": [
                    {}
                  ],
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
                  "platform": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "builtInAccount": "string",
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
                    "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
                    "scheduledChangePolicy": {},
                    "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
                    "protectionPolicySchedule": {},
                    "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
                    "scanSchedule": {},
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
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
                    "monitorActionQueue": {},
                    "configuration": {},
                    "configurationValues": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "passwordVaultInfo": "string",
                  "changeOnCheckout": true,
                  "changeOnRelease": true,
                  "showPassword": true,
                  "credentialJoin": [
                    {}
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
                  "credentialJoin": [
                    {}
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
            "userAndGroupCollectionPolicyJoin": [
              {
                "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                "userAndGroupCollection": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "userCollectionJoin": [
                    {}
                  ],
                  "groupCollectionJoin": [
                    {}
                  ],
                  "userAndGroupCollectionPolicyJoin": [
                    {}
                  ],
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
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "userName": "string",
                    "deleted": true,
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "protectionPolicyGroupId": "fb59baea-f4aa-4ccf-ba6f-274afb6ed007",
                    "protectionPolicyGroup": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
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
                  "managedResourceJoin": [
                    {}
                  ],
                  "platform": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "builtInAccount": "string",
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
                    "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
                    "scheduledChangePolicy": {},
                    "protectionPolicyScheduleId": "fb8b7dbf-b4af-4812-a27d-fdffc3b2498b",
                    "protectionPolicySchedule": {},
                    "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
                    "scanSchedule": {},
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "resetOnMismatch": true,
                    "icon": "string",
                    "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
                    "type": "Unspecified",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "managedResourceGroupPolicyJoin": [
                    {}
                  ],
                  "manageResourceGroupProtectionPolicyJoin": [
                    {}
                  ],
                  "ouMappingEnabled": true,
                  "ouFqdn": "string",
                  "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                  "ouDomainConfig": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryDomain": [],
                    "name": "string",
                    "controllers": [],
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
  }
]
```

<h3 id="return-protected-groups-for-given-resource-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Error has occurred, see Web log for details|None|

<h3 id="return-protected-groups-for-given-resource-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» allowedProtectedGroupMember|[[SbPAM.Models.ProtectedGroupMember](../Models/sbpam.models.protectedgroupmember.md)]¦null|false|none|none|
|»» id|string(uuid)|false|none|none|
|»» userName|string¦null|false|none|none|
|»» userId|string(uuid)¦null|false|none|none|
|»» allowedProtectedGroupId|string(uuid)¦null|false|none|none|
|»» allowedProtectedGroup|[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)|false|none|none|
|»» currentProtectedGroupId|string(uuid)¦null|false|none|none|
|»» currentProtectedGroup|[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)|false|none|none|
|»» isTransient|boolean|false|none|none|
|»» isSystem|boolean|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» currentProtectedGroupMember|[[SbPAM.Models.ProtectedGroupMember](../Models/sbpam.models.protectedgroupmember.md)]¦null|false|none|none|
|» managedResourceId|string(uuid)|false|none|none|
|» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|none|
|»» id|string(uuid)|false|none|none|
|»» name|string¦null|false|none|none|
|»» type|[SbPAM.Models.ManagedResourceType](../Models/sbpam.models.managedresourcetype.md)(int32)|false|none|none|
|»» hostId|string(uuid)¦null|false|none|none|
|»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» activeDirectoryObjectId|string(uuid)¦null|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» distinguishedName|string¦null|false|none|none|
|»»» ipAddress|string¦null|false|none|none|
|»»» os|string¦null|false|none|none|
|»»» version|string¦null|false|none|none|
|»»» lsaLookupCache|string¦null|false|none|none|
|»»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|none|
|»»» credentialId|string(uuid)¦null|false|none|none|
|»»» hasSSH|boolean|false|none|none|
|»»» activeDirectoryDomainId|string(uuid)¦null|false|none|none|
|»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» domainName|string¦null|false|none|none|
|»»»» netBiosName|string¦null|false|none|none|
|»»»» domainController|string¦null|false|none|none|
|»»»» usnChanged|integer(int64)¦null|false|none|none|
|»»»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|none|
|»»»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» activeDirectoryDomain|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)]¦null|false|read-only|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» controllers|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryController](../Models/sbpam.activedirectory.models.activedirectorycontroller.md)]¦null|false|read-only|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|none|
|»»»»»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|none|
|»»»»»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» enabled|boolean|false|none|none|
|»»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»»» useSsl|boolean|false|none|none|
|»»»»» functionalLevel|string¦null|false|none|none|
|»»»»» syncActionQueueId|string(uuid)¦null|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» functionalLevel|string¦null|false|none|none|
|»»»» activeDirectoryGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» samaccountname|string¦null|false|none|none|
|»»»»» usnchanged|integer(int64)|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» distinguishedName|string¦null|false|none|none|
|»»»»» displayName|string¦null|false|none|none|
|»»»»» email|string¦null|false|none|none|
|»»»»» added|string(date-time)|false|none|none|
|»»»»» groupToken|string(byte)¦null|false|none|none|
|»»»»» activeDirectoryGroupHostUser|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupHostUser](../Models/sbpam.activedirectory.models.activedirectorygrouphostuser.md)]¦null|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» groupId|string(uuid)|false|none|none|
|»»»»»» memberId|string(uuid)|false|none|none|
|»»»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»» member|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» activeDirectoryObjectId|string(uuid)¦null|false|none|none|
|»»»»»»» activeDirectoryDomainId|string(uuid)¦null|false|none|none|
|»»»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|none|
|»»»»»»» displayName|string¦null|false|none|none|
|»»»»»»» enabled|boolean|false|none|none|
|»»»»»»» unixId|integer(int32)¦null|false|none|none|
|»»»»»»» unixGroupId|integer(int32)¦null|false|none|none|
|»»»»»»» homeDirectory|string¦null|false|none|none|
|»»»»»»» shell|string¦null|false|none|none|
|»»»»»»» expirationDate|string(date-time)¦null|false|none|none|
|»»»»»»» managed|boolean|false|none|none|
|»»»»»»» hostId|string(uuid)¦null|false|none|none|
|»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»»»»»» primaryGroupTokenId|integer(int32)¦null|false|none|none|
|»»»»»»» primaryGroupToken|string(byte)¦null|false|none|none|
|»»»»»»» managerSamaccountname|string¦null|false|none|none|
|»»»»»»» title|string¦null|false|none|none|
|»»»»»»» samaccountname|string¦null|false|none|none|
|»»»»»»» userPrincipalName|string¦null|false|none|none|
|»»»»»»» distinguishedName|string¦null|false|none|none|
|»»»»»»» department|string¦null|false|none|none|
|»»»»»»» email|string¦null|false|none|none|
|»»»»»»» lastLogonTimestamp|string(date-time)¦null|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» sid|string¦null|false|none|none|
|»»»»»»» firstName|string¦null|false|none|none|
|»»»»»»» lastName|string¦null|false|none|none|
|»»»»»»» passwordHash|string¦null|false|none|none|
|»»»»»»» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|none|
|»»»»»»» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|none|
|»»»»»»» forcePasswordReset|boolean|false|none|none|
|»»»»»»» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|»»»»»»» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|none|
|»»»»»»»» userId|string(uuid)|false|none|none|
|»»»»»»»» user|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|none|
|»»»»»»»» groupId|string(uuid)|false|none|none|
|»»»»»»»» group|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» sid|string¦null|false|none|none|
|»»»»»»»»» unixId|integer(int32)¦null|false|none|none|
|»»»»»»»»» hostId|string(uuid)¦null|false|none|none|
|»»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»»»»»»»» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|none|
|»»»»»»»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|none|
|»»»»»»»»»» hostGroupId|string(uuid)|false|none|none|
|»»»»»»»»»» hostGroup|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|none|
|»»»»»»»»»» domainGroupMemberId|string(uuid)|false|none|none|
|»»»»»»»»»» domainGroupMember|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» hostDatabaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» databaseId|string¦null|false|none|none|
|»»»»»»»» ownerSid|string¦null|false|none|none|
|»»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»»» isOnline|boolean|false|none|none|
|»»»»»»»» statusDesc|string¦null|false|none|none|
|»»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» hostId|string(uuid)|false|none|none|
|»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|none|
|»»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|none|
|»»»»»»»» hostDbRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» sid|string¦null|false|none|none|
|»»»»»»»»» principalId|string¦null|false|none|none|
|»»»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»»»» modifyDate|string(date-time)|false|none|none|
|»»»»»»»»» isDisabled|boolean|false|none|none|
|»»»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» hostId|string(uuid)|false|none|none|
|»»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»»»»»»»» databaseDbId|string(uuid)¦null|false|none|none|
|»»»»»»»»» databaseDb|[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)|false|none|none|
|»»»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|none|
|»»»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|none|
|»»»»»»» hostDatabaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» activeDirectoryGroupGroupGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» memberId|string(uuid)|false|none|none|
|»»»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»» member|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|none|
|»»»»»» groupId|string(uuid)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» activeDirectoryGroupGroupMember|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|none|
|»»»»» activeDirectoryDomainId|string(uuid)|false|none|none|
|»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|none|
|»»»»» groupTokenId|integer(int32)¦null|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» sid|string¦null|false|none|none|
|»»»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|none|
|»»»»» deleted|boolean|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» objectSid|string¦null|false|none|none|
|»»»» maxRenewAge|integer(int32)¦null|false|none|none|
|»»»» maxTicketAge|integer(int32)¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» dnsHostName|string¦null|false|none|none|
|»»» netBiosName|string¦null|false|none|none|
|»»» users|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|none|
|»»» groups|[[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)]¦null|false|read-only|none|
|»»» features|[[SbPAM.ActiveDirectory.Models.HostFeature](../Models/sbpam.activedirectory.models.hostfeature.md)]¦null|false|read-only|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» version|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostId|string(uuid)|false|none|none|
|»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»» services|[[SbPAM.ActiveDirectory.Models.HostService](../Models/sbpam.activedirectory.models.hostservice.md)]¦null|false|read-only|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» displayName|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» startType|[SbPAM.Models.Common.ServiceStartType](../Models/sbpam.models.common.servicestarttype.md)(int32)|false|none|none|
|»»»» userName|string¦null|false|none|none|
|»»»» binaryPathName|string¦null|false|none|none|
|»»»» dependentServices|string¦null|false|none|none|
|»»»» canPauseAndContinue|boolean|false|none|none|
|»»»» canShutdown|boolean|false|none|none|
|»»»» canStop|boolean|false|none|none|
|»»»» serviceType|[SbPAM.Models.Common.ServiceTypeFlags](../Models/sbpam.models.common.servicetypeflags.md)(int32)|false|none|none|
|»»»» delayedStart|boolean|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostId|string(uuid)|false|none|none|
|»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»» hostUserId|string(uuid)¦null|false|none|none|
|»»» scheduledTasks|[[SbPAM.ActiveDirectory.Models.HostScheduledTask](../Models/sbpam.activedirectory.models.hostscheduledtask.md)]¦null|false|read-only|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» userName|string¦null|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» taskPath|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»» source|string¦null|false|none|none|
|»»»» nextRunTimeUtc|string(date-time)|false|none|none|
|»»»» lastRunTimeUtc|string(date-time)|false|none|none|
|»»»» lastRunResult|integer(int32)|false|none|none|
|»»»» scheduledTaskTriggers|[[SbPAM.Models.Common.ScheduledTaskTrigger](../Models/sbpam.models.common.scheduledtasktrigger.md)]¦null|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» enabled|boolean|false|none|none|
|»»»»» endBoundary|string¦null|false|none|none|
|»»»»» executionThrottleLimit|string¦null|false|none|none|
|»»»»» taskName|string¦null|false|none|none|
|»»»»» startBoundary|string¦null|false|none|none|
|»»»»» repetitionDuration|string¦null|false|none|none|
|»»»»» repetitionInterval|string¦null|false|none|none|
|»»»»» repetitionStopAtDurationEnd|boolean|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» scheduledTaskActions|[[SbPAM.Models.Common.ScheduledTaskAction](../Models/sbpam.models.common.scheduledtaskaction.md)]¦null|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» classId|string(uuid)¦null|false|none|none|
|»»»»» data|string¦null|false|none|none|
|»»»»» arguments|string¦null|false|none|none|
|»»»»» execute|string¦null|false|none|none|
|»»»»» workingDirectory|string¦null|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostId|string(uuid)|false|none|none|
|»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»» hostUserId|string(uuid)¦null|false|none|none|
|»»» databases|[[SbPAM.ActiveDirectory.Models.HostDatabase](../Models/sbpam.activedirectory.models.hostdatabase.md)]¦null|false|read-only|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» fullName|string¦null|false|none|none|
|»»»» product|string¦null|false|none|none|
|»»»» version|string¦null|false|none|none|
|»»»» isClustered|boolean|false|none|none|
|»»»» clusterName|string¦null|false|none|none|
|»»»» type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)(int32)|false|none|none|
|»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostId|string(uuid)|false|none|none|
|»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|none|
|»»» databaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|none|
|»»» databaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|none|
|»»» samaccountname|string¦null|false|none|none|
|»»» isDomainController|boolean|false|none|none|
|»»» isGlobalCatalog|boolean¦null|false|none|none|
|»»» usnChanged|integer(int64)|false|none|none|
|»»» objectSid|string¦null|false|none|none|
|»»» added|string(date-time)|false|none|none|
|»»» deleted|boolean|false|none|none|
|»»» isVirtual|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» hostScanHostId|string(uuid)¦null|false|none|none|
|»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» dnsHostName|string¦null|false|none|none|
|»»» ipAddress|string¦null|false|none|none|
|»»» os|string¦null|false|none|none|
|»»» version|string¦null|false|none|none|
|»»» lsaLookupCache|string¦null|false|none|none|
|»»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|none|
|»»» hostId|string(uuid)¦null|false|none|none|
|»»» credentialId|string(uuid)|false|none|none|
|»»» platformId|string(uuid)¦null|false|none|none|
|»»» lastScanTimeUtc|string(date-time)¦null|false|none|none|
|»»» lastScanStartTimeUtc|string(date-time)|false|none|none|
|»»» hostScanUser|[[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)]¦null|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» displayName|string¦null|false|none|none|
|»»»» samaccountname|string¦null|false|none|none|
|»»»» lastLogonTimestamp|string(date-time)¦null|false|none|none|
|»»»» sid|string¦null|false|none|none|
|»»»» passwordHash|string¦null|false|none|none|
|»»»» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|none|
|»»»» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|none|
|»»»» unixId|integer(int32)¦null|false|none|none|
|»»»» unixGroupId|integer(int32)¦null|false|none|none|
|»»»» homeDirectory|string¦null|false|none|none|
|»»»» shell|string¦null|false|none|none|
|»»»» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|»»»» discoveredDateTimeUtc|string(date-time)¦null|false|none|none|
|»»»» userId|string(uuid)¦null|false|none|none|
|»»»» hostScanHostId|string(uuid)¦null|false|none|none|
|»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|none|
|»»»»» hostScanUserId|string(uuid)|false|none|none|
|»»»»» hostScanUser|[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)|false|none|none|
|»»»»» hostScanGroupId|string(uuid)|false|none|none|
|»»»»» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» sid|string¦null|false|none|none|
|»»»»»» unixId|integer(int32)¦null|false|none|none|
|»»»»»» groupId|string(uuid)¦null|false|none|none|
|»»»»»» hostScanHostId|string(uuid)|false|none|none|
|»»»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»»»»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|none|
|»»»»»» hostScanGroupGroupJoin|[[SbPAM.Models.HostScanGroupGroupJoin](../Models/sbpam.models.hostscangroupgroupjoin.md)]¦null|false|none|none|
|»»»»»»» hostScanGroupId|string(uuid)|false|none|none|
|»»»»»»» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|none|
|»»»»»»» hostScanGroupMemberId|string(uuid)|false|none|none|
|»»»»»» resourceObjectId|string(uuid)¦null|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» resourceObjectId|string(uuid)¦null|false|none|none|
|»»»» isDisabled|boolean|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostScanGroup|[[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)]¦null|false|none|none|
|»»» hostScanFeature|[[SbPAM.Models.HostScanFeature](../Models/sbpam.models.hostscanfeature.md)]¦null|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» version|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostScanHostId|string(uuid)|false|none|none|
|»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»»» hostObjectId|string(uuid)¦null|false|none|none|
|»»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|none|
|»»»» hostScanJobId|string(uuid)|false|none|none|
|»»»» hostScanJob|[SbPAM.Models.HostScanJob](../Models/sbpam.models.hostscanjob.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»» createdByUserName|string¦null|false|none|none|
|»»»»» createdFromAddress|string¦null|false|none|none|
|»»»»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostScanHostId|string(uuid)|false|none|none|
|»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»»» actionQueueId|string(uuid)¦null|false|none|none|
|»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» actionJobId|string(uuid)¦null|false|none|none|
|»»»»» runUserId|string(uuid)¦null|false|none|none|
|»»»»» timeCreated|string(date-time)|false|none|none|
|»»»»» timeStarted|string(date-time)|false|none|none|
|»»»»» timeFinished|string(date-time)|false|none|none|
|»»»»» heartBeatDateTimeUtc|string(date-time)|false|none|none|
|»»»»» status|any|false|none|none|
|»»»»» statusDescription|string¦null|false|none|none|
|»»»»» failureReason|any|false|none|none|
|»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» description|string¦null|false|none|none|
|»»»»»» trigger|boolean|false|none|none|
|»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» actionTemplateId|string(uuid)|false|none|none|
|»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|none|
|»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» displayName|string¦null|false|none|none|
|»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»» newActionDisplayName|string¦null|false|none|none|
|»»»»»»»» icon|string¦null|false|none|none|
|»»»»»»»» definition|string¦null|false|none|none|
|»»»»»»»» userDefined|boolean|false|none|none|
|»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» displayName|string¦null|false|none|none|
|»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»» sortOrder|integer(int32)|false|none|none|
|»»»»»»»»» required|boolean|false|none|none|
|»»»»»»»»» type|any|false|none|none|
|»»»»»»»»» multiline|boolean|false|none|none|
|»»»»»»»»» defaultValue|string¦null|false|none|none|
|»»»»»»»»» shouldSerialize_ValueSet|boolean|false|read-only|none|
|»»»»»»»»» _ValueSet|string¦null|false|none|none|
|»»»»»»»»» valueSet|[string]¦null|false|none|none|
|»»»»»»»»» limitToValueSet|boolean|false|none|none|
|»»»»»»»»» helperText|string¦null|false|none|none|
|»»»»»»»»» actionTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|none|
|»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» value|string¦null|false|none|none|
|»»»»»»»»» type|any|false|none|none|
|»»»»»»»»» actionTemplateId|string(uuid)|false|none|none|
|»»»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|none|
|»»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» icon|string¦null|false|none|none|
|»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»»»» timeoutOverride|integer(int32)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» actionTemplate|[[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)]¦null|false|none|none|
|»»»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|none|
|»»»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»» classification|any|false|none|none|
|»»»»»»»» pairedActionTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»»» pairedActionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|none|
|»»»»»»» actionParameter|[[SbPAM.Models.ActionParameter](../Models/sbpam.models.actionparameter.md)]¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» value|string¦null|false|none|none|
|»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|none|
|»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|none|
|»»»»»»»» actionId|string(uuid)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» continueOnFail|boolean|false|none|none|
|»»»»»»» executionOrder|integer(int32)|false|none|none|
|»»»»»»» executionPath|string¦null|false|none|none|
|»»»»»»» timeout|integer(int32)¦null|false|none|none|
|»»»»»»» displayName|string¦null|false|none|none|
|»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» actionQueueId|string(uuid)|false|none|none|
|»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»»»»»»»» actionId|string(uuid)|false|none|none|
|»»»»»»»» action|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|none|
|»»»»»»»» status|any|false|none|none|
|»»»»»»»» jobType|[SbPAM.Models.ActionJobType](../Models/sbpam.models.actionjobtype.md)(int32)|true|none|none|
|»»»»»»»» statusDescription|string¦null|false|none|none|
|»»»»»»»» result|string¦null|false|none|none|
|»»»»»»»» results|string¦null|false|none|none|
|»»»»»»»» actionQueueActionParameter|[[SbPAM.Models.ActionQueueActionParameter](../Models/sbpam.models.actionqueueactionparameter.md)]¦null|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» value|string¦null|false|none|none|
|»»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|none|
|»»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|none|
|»»»»»»»»» actionId|string(uuid)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionQueueActionId|string(uuid)|false|none|none|
|»»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|none|
|»»»»»»»» actionLog|[[SbPAM.Models.ActionLog](../Models/sbpam.models.actionlog.md)]¦null|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» type|any|false|none|none|
|»»»»»»»»» hResult|integer(int32)|false|none|none|
|»»»»»»»»» timestamp|string(date-time)|false|none|none|
|»»»»»»»»» message|string¦null|false|none|none|
|»»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»»» actionQueueActionId|string(uuid)|false|none|none|
|»»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionServiceId|string(uuid)¦null|false|none|none|
|»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» added|string(date-time)|false|none|none|
|»»»»»»»»» refreshToken|string¦null|false|none|none|
|»»»»»»»»» appTokenId|string(uuid)¦null|false|none|none|
|»»»»»»»»» appToken|[SbPAM.Models.AppToken](../Models/sbpam.models.apptoken.md)|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»» token|string¦null|false|none|none|
|»»»»»»»»»» tokenSalt|string¦null|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» expirationDate|string(date-time)|false|none|none|
|»»»»»»»»»» revoked|boolean|false|none|none|
|»»»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» status|any|false|none|none|
|»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»»» serviceRegistrationId|string(uuid)¦null|false|none|none|
|»»»»»»»»» serviceRegistration|[SbPAM.Models.ServiceRegistration](../Models/sbpam.models.serviceregistration.md)|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»»» dnsHostName|string¦null|false|none|none|
|»»»»»»»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»»»»»»»» serviceName|string¦null|false|none|none|
|»»»»»»»»»» settingsFilePath|string¦null|false|none|none|
|»»»»»»»»»» settingsFileContents|string¦null|false|none|none|
|»»»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»»»» actionQueueId|string(uuid)¦null|false|none|none|
|»»»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionServiceProperty|[[SbPAM.Models.ActionServiceProperty](../Models/sbpam.models.actionserviceproperty.md)]¦null|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» value|string¦null|false|none|none|
|»»»»»»»»»» actionServiceId|string(uuid)|false|none|none|
|»»»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|none|
|»»»»»»»»» serviceNodeId|string(uuid)¦null|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» startTime|string(date-time)|false|none|none|
|»»»»»»»» endTime|string(date-time)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» heartbeatUtc|string(date-time)|false|none|none|
|»»»»»»»» complete|boolean|false|none|none|
|»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» classification|any|false|none|none|
|»»»»»»» pairedActionId|string(uuid)¦null|false|none|none|
|»»»»»»» pairedAction|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|none|
|»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»»»» jobId|string(uuid)|false|none|none|
|»»»»»»» job|[SbPAM.Models.Job](../Models/sbpam.models.job.md)|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» actionQueue|[[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)]¦null|false|none|none|
|»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostConnected|boolean|false|none|none|
|»»» netBiosName|string¦null|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» domainConfigId|string(uuid)¦null|false|none|none|
|»» websiteId|string(uuid)¦null|false|none|none|
|»» website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» avatarUrl|string¦null|false|none|none|
|»»» activeDirectoryDomainId|string(uuid)¦null|false|none|none|
|»»» associatedResourceId|string(uuid)¦null|false|none|none|
|»»» logonUrl|string¦null|false|none|none|
|»»» uris|[[SbPAM.Models.WebsiteUri](../Models/sbpam.models.websiteuri.md)]¦null|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» websiteId|string(uuid)|false|none|none|
|»»»» website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|none|
|»»»» uri|string¦null|false|none|none|
|»»»» match|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)(int32)|false|none|none|
|»»»» matchType|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)(int32)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» isVirtual|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» azureAdTenantId|string(uuid)¦null|false|none|none|
|»» azureAdTenant|[SbPAM.Models.AzureAdTenant](../Models/sbpam.models.azureadtenant.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» tenantId|string¦null|false|none|none|
|»»» logonUrl|string¦null|false|none|none|
|»»» emailDomain|string¦null|false|none|none|
|»»» associatedDomainId|string(uuid)¦null|false|none|none|
|»»» processGroupMembership|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» secretVaultId|string(uuid)¦null|false|none|none|
|»» secretVault|[SbPAM.Models.SecretVault](../Models/sbpam.models.secretvault.md)|false|none|none|
|»»» id|string(uuid)|false|read-only|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» managedDatabaseId|string(uuid)¦null|false|none|none|
|»» managedDatabase|[SbPAM.Models.ManagedDatabase](../Models/sbpam.models.manageddatabase.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» server|string¦null|false|none|none|
|»»» port|integer(int32)|false|none|none|
|»»» type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)(int32)|false|none|none|
|»»» hostDatabaseId|string(uuid)¦null|false|none|none|
|»»» domainId|string(uuid)¦null|false|none|none|
|»»» integratedSecurity|boolean|false|none|none|
|»»» trustServerCertificate|boolean|false|none|none|
|»»» encrypted|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» platformId|string(uuid)¦null|false|none|none|
|»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» builtInAccount|string¦null|false|none|none|
|»»» passwordComplexityPolicyId|string(uuid)¦null|false|none|none|
|»»» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» lowerCase|boolean|false|none|none|
|»»»» upperCase|boolean|false|none|none|
|»»»» specialCharacter|boolean|false|none|none|
|»»»» space|boolean|false|none|none|
|»»»» numeric|boolean|false|none|none|
|»»»» mustEndWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»»» mustStartWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»»» length|integer(int32)|false|none|none|
|»»»» maxConsecutive|integer(int32)|false|none|none|
|»»»» charsToExclude|string¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» type|[SbPAM.Models.PasswordComplexityTypeEnum](../Models/sbpam.models.passwordcomplexitytypeenum.md)(int32)|false|none|none|
|»»» scheduledChangePolicyId|string(uuid)¦null|false|none|none|
|»»» scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» frequency|any|false|none|none|
|»»»» periodValue|integer(int32)|false|none|none|
|»»»» daysOfWeek|string¦null|false|none|none|
|»»»» dayNumber|integer(int32)|false|none|none|
|»»»» localTime|string(date-time)|false|none|none|
|»»»» utcTime|string(date-time)¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» protectionPolicyScheduleId|string(uuid)¦null|false|none|none|
|»»» protectionPolicySchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»» scanScheduleId|string(uuid)¦null|false|none|none|
|»»» scanSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»» verificationScheduleId|string(uuid)¦null|false|none|none|
|»»» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»» resetOnMismatch|boolean|false|none|none|
|»»» icon|string(byte)¦null|false|none|none|
|»»» basePlatformId|string(uuid)¦null|false|none|none|
|»»» type|[SbPAM.Models.PlatformTypeEnum](../Models/sbpam.models.platformtypeenum.md)(int32)|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» displayName|string¦null|false|none|none|
|»» ipAddress|string¦null|false|none|none|
|»» serviceAccountId|string(uuid)¦null|false|none|none|
|»» serviceAccount|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» domain|string¦null|false|none|none|
|»»» username|string¦null|false|none|none|
|»»» password|string¦null|false|none|none|
|»»» salt|string¦null|false|none|none|
|»»» enablePassword|string¦null|false|none|none|
|»»» enableSalt|string¦null|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» type|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)(int32)|false|none|none|
|»»» userId|string(uuid)¦null|false|none|none|
|»»» managedAccountId|string(uuid)¦null|false|none|none|
|»»» platformId|string(uuid)¦null|false|none|none|
|»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|none|
|»»» sudoCommand|string¦null|false|none|none|
|»»» passwordVaultConnectorId|string(uuid)¦null|false|none|none|
|»»» passwordVaultConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» connectorConfigurationId|string(uuid)|false|none|none|
|»»»» connectorTemplateId|string(uuid)|false|none|none|
|»»»» monitorActionQueueId|string(uuid)¦null|false|none|none|
|»»»» monitorActionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»»»» configuration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» integrationConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|none|
|»»»»» integrationConnectorTemplate|[SbPAM.Models.IntegrationConnectorTemplate](../Models/sbpam.models.integrationconnectortemplate.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» description|string¦null|false|none|none|
|»»»»»» type|[SbPAM.Models.IntegrationConnectorType](../Models/sbpam.models.integrationconnectortype.md)(int32)|false|none|none|
|»»»»»» configurationId|string(uuid)|false|none|none|
|»»»»»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» configurationId|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» value|string¦null|false|none|none|
|»»»»»»» defaultValue|string¦null|false|none|none|
|»»»»»»» description|string¦null|false|none|none|
|»»»»»»» displayOrder|integer(int32)|false|none|none|
|»»»»»»» required|boolean|false|none|none|
|»»»»»»» connectorId|string(uuid)¦null|false|none|none|
|»»»»»»» integrationConnectorTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»» connectorConfiguration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|none|
|»»»»»»» type|[SbPAM.Models.ConnectorConfigurationValueType](../Models/sbpam.models.connectorconfigurationvaluetype.md)(int32)|false|none|none|
|»»»»»»» advanced|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» passwordVaultInfo|string¦null|false|none|none|
|»»» changeOnCheckout|boolean¦null|false|none|none|
|»»» changeOnRelease|boolean¦null|false|none|none|
|»»» showPassword|boolean|false|none|none|
|»»» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|none|
|»»»» credentialId|string(uuid)|false|none|none|
|»»»» credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|none|
|»»»» credentialGroupId|string(uuid)|false|none|none|
|»»»» credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» isDeleted|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» authenticationMethod|[SbPAM.Models.AuthenticationMethodType](../Models/sbpam.models.authenticationmethodtype.md)(int32)|false|none|none|
|»»» keyGenAlgorithm|string¦null|false|none|none|
|»»» keyLength|integer(int32)¦null|false|none|none|
|»»» autoGenPassphrase|boolean¦null|false|none|none|
|»»» passphrase|string¦null|false|none|none|
|»»» privateKey|string¦null|false|none|none|
|»»» publicKey|string¦null|false|none|none|
|»» manageAccount|[SbPAM.Models.ManagedResourceManageAccountEnum](../Models/sbpam.models.managedresourcemanageaccountenum.md)(int32)|false|none|none|
|»» protectedGroup|[[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)]¦null|false|none|none|
|»» activityConfigurationId|string(uuid)¦null|false|none|none|
|»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» type|[SbPAM.Models.ActivityConfigurationType](../Models/sbpam.models.activityconfigurationtype.md)(int32)|false|none|none|
|»»» createdBy|string(uuid)¦null|false|none|none|
|»»» modifiedBy|string(uuid)¦null|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» isDefault|boolean|false|none|none|
|»»» isDeleted|boolean|false|none|none|
|»»» isUserModified|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» activityConfigurationSettings|[[SbPAM.Models.ActivityConfigurationSetting](../Models/sbpam.models.activityconfigurationsetting.md)]¦null|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» key|string¦null|false|none|none|
|»»»» value|string¦null|false|none|none|
|»»»» type|[SbPAM.Models.ActivityConfigurationSettingType](../Models/sbpam.models.activityconfigurationsettingtype.md)(int32)|false|none|none|
|»»»» activityConfigurationId|string(uuid)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» actionQueueId|string(uuid)¦null|false|none|none|
|»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»» managedResourceJoin|[[SbPAM.Models.ManagedResourceJoin](../Models/sbpam.models.managedresourcejoin.md)]¦null|false|none|none|
|»»» managedResourceId|string(uuid)|false|none|none|
|»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|none|
|»»» managedResourceGroupId|string(uuid)|false|none|none|
|»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» type|[SbPAM.Models.ManagedResourceGroupType](../Models/sbpam.models.managedresourcegrouptype.md)(int32)|false|none|none|
|»»»» platformId|string(uuid)¦null|false|none|none|
|»»»» manageAccounts|[SbPAM.Models.ManagedResourceGroupManageAccountsEnum](../Models/sbpam.models.managedresourcegroupmanageaccountsenum.md)(int32)|false|none|none|
|»»»» notificationEmailList|string¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» managedResourceJoin|[[SbPAM.Models.ManagedResourceJoin](../Models/sbpam.models.managedresourcejoin.md)]¦null|false|read-only|none|
|»»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|none|
|»»»» managedResourceGroupPolicyJoin|[[SbPAM.Models.ManagedResourceGroupPolicyJoin](../Models/sbpam.models.managedresourcegrouppolicyjoin.md)]¦null|false|read-only|none|
|»»»»» managedResourceGroupId|string(uuid)|false|none|none|
|»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|none|
|»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» description|string¦null|false|none|none|
|»»»»»» activityConfigurationId|string(uuid)¦null|false|none|none|
|»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|none|
|»»»»»» priority|integer(int32)|false|none|none|
|»»»»»» isDisabled|boolean|false|none|none|
|»»»»»» isDeleted|boolean|false|none|none|
|»»»»»» isDefault|boolean|false|none|none|
|»»»»»» isUserModified|boolean|false|none|none|
|»»»»»» managedAccountPolicyJoin|[[SbPAM.Models.ManagedAccountPolicyJoin](../Models/sbpam.models.managedaccountpolicyjoin.md)]¦null|false|none|none|
|»»»»»»» managedAccountId|string(uuid)|false|none|none|
|»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» type|[SbPAM.Models.ManagedAccountType](../Models/sbpam.models.managedaccounttype.md)(int32)|false|none|none|
|»»»»»»»» locked|boolean|false|none|none|
|»»»»»»»» userId|string(uuid)¦null|false|none|none|
|»»»»»»»» managedAccountJoin|[[SbPAM.Models.ManagedAccountJoin](../Models/sbpam.models.managedaccountjoin.md)]¦null|false|none|none|
|»»»»»»»»» managedAccountId|string(uuid)|false|none|none|
|»»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|none|
|»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|none|
|»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» type|[SbPAM.Models.ManagedAccountGroupType](../Models/sbpam.models.managedaccountgrouptype.md)(int32)|false|none|none|
|»»»»»»»»»» groupId|string(uuid)¦null|false|none|none|
|»»»»»»»»»» mfaConnectorId|string(uuid)¦null|false|none|none|
|»»»»»»»»»» isReviewer|boolean|false|none|none|
|»»»»»»»»»» managedAccountJoin|[[SbPAM.Models.ManagedAccountJoin](../Models/sbpam.models.managedaccountjoin.md)]¦null|false|none|none|
|»»»»»»»»»» managedAccountGroupPolicyJoin|[[SbPAM.Models.ManagedAccountGroupPolicyJoin](../Models/sbpam.models.managedaccountgrouppolicyjoin.md)]¦null|false|none|none|
|»»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|none|
|»»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|none|
|»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|none|
|»»»»»»»»»» groupCollectionJoin|[[SbPAM.Models.GroupCollectionJoin](../Models/sbpam.models.groupcollectionjoin.md)]¦null|false|read-only|none|
|»»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|none|
|»»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|none|
|»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|none|
|»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»»»» userCollectionJoin|[[SbPAM.Models.UserCollectionJoin](../Models/sbpam.models.usercollectionjoin.md)]¦null|false|read-only|none|
|»»»»»»»»»»»»» managedAccountId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|none|
|»»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»» groupCollectionJoin|[[SbPAM.Models.GroupCollectionJoin](../Models/sbpam.models.groupcollectionjoin.md)]¦null|false|read-only|none|
|»»»»»»»»»»»» userAndGroupCollectionPolicyJoin|[[SbPAM.Models.UserAndGroupCollectionPolicyJoin](../Models/sbpam.models.userandgroupcollectionpolicyjoin.md)]¦null|false|read-only|none|
|»»»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»» isReviewer|boolean|false|none|none|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» managedAccountPolicyJoin|[[SbPAM.Models.ManagedAccountPolicyJoin](../Models/sbpam.models.managedaccountpolicyjoin.md)]¦null|false|none|none|
|»»»»»»»» sid|string¦null|false|none|none|
|»»»»»»»» userCollectionJoin|[[SbPAM.Models.UserCollectionJoin](../Models/sbpam.models.usercollectionjoin.md)]¦null|false|read-only|none|
|»»»»»»»» isReviewer|boolean|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|none|
|»»»»»» managedAccountGroupPolicyJoin|[[SbPAM.Models.ManagedAccountGroupPolicyJoin](../Models/sbpam.models.managedaccountgrouppolicyjoin.md)]¦null|false|none|none|
|»»»»»» managedResourcePolicyJoin|[[SbPAM.Models.ManagedResourcePolicyJoin](../Models/sbpam.models.managedresourcepolicyjoin.md)]¦null|false|none|none|
|»»»»»»» managedResourceId|string(uuid)|false|none|none|
|»»»»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|none|
|»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|none|
|»»»»»» managedResourceGroupPolicyJoin|[[SbPAM.Models.ManagedResourceGroupPolicyJoin](../Models/sbpam.models.managedresourcegrouppolicyjoin.md)]¦null|false|none|none|
|»»»»»» activityJoin|[[SbPAM.Models.ActivityJoin](../Models/sbpam.models.activityjoin.md)]¦null|false|none|none|
|»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»» activityId|string(uuid)|false|none|none|
|»»»»»»» activity|[SbPAM.Models.Activity](../Models/sbpam.models.activity.md)|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»» modifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|none|
|»»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|none|
|»»»»»»»» platformId|string(uuid)¦null|false|none|none|
|»»»»»»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|none|
|»»»»»»»» startActionGroupId|string(uuid)¦null|false|none|none|
|»»»»»»»» duringActionGroupId|string(uuid)¦null|false|none|none|
|»»»»»»»» endActionGroupId|string(uuid)¦null|false|none|none|
|»»»»»»»» activityType|[SbPAM.Models.ActivityType](../Models/sbpam.models.activitytype.md)(int32)|false|none|none|
|»»»»»»»» loginAccount|[SbPAM.Models.ActivityLoginType](../Models/sbpam.models.activitylogintype.md)(int32)|false|none|none|
|»»»»»»»» loginAccountNameFormat|string¦null|false|none|none|
|»»»»»»»» requesterLoginFormat|[SbPAM.Models.RequesterLoginFormat](../Models/sbpam.models.requesterloginformat.md)(int32)|false|none|none|
|»»»»»»»» applicationToLaunch|string¦null|false|none|none|
|»»»»»»»» preferredRDSHostId|string(uuid)¦null|false|none|none|
|»»»»»»»» connectCredentialId|string(uuid)¦null|false|none|none|
|»»»»»»»» createAccount|boolean|false|none|none|
|»»»»»»»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](../Models/sbpam.models.activitygroupactivity.md)]¦null|false|none|none|
|»»»»»»»»» activityId|string(uuid)|false|none|none|
|»»»»»»»»» activity|[SbPAM.Models.Activity](../Models/sbpam.models.activity.md)|false|none|none|
|»»»»»»»»» activityGroupId|string(uuid)|false|none|none|
|»»»»»»»»» activityGroup|[SbPAM.Models.ActivityGroup](../Models/sbpam.models.activitygroup.md)|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»»»» modifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|none|
|»»»»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|none|
|»»»»»»»»»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](../Models/sbpam.models.activitygroupactivity.md)]¦null|false|none|none|
|»»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» deleteAccount|boolean|false|none|none|
|»»»»»»»» vaultId|string(uuid)¦null|false|none|none|
|»»»»»»»» vaultInfo|string¦null|false|none|none|
|»»»»»»»» logonUrl|string¦null|false|none|none|
|»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» activityGroupJoin|[[SbPAM.Models.ActivityGroupJoin](../Models/sbpam.models.activitygroupjoin.md)]¦null|false|none|none|
|»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»» activityGroupId|string(uuid)|false|none|none|
|»»»»»»» activityGroup|[SbPAM.Models.ActivityGroup](../Models/sbpam.models.activitygroup.md)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» credentialPolicyJoin|[[SbPAM.Models.CredentialPolicyJoin](../Models/sbpam.models.credentialpolicyjoin.md)]¦null|false|none|none|
|»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»» credentialId|string(uuid)|false|none|none|
|»»»»»»» credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» credentialGroupPolicyJoin|[[SbPAM.Models.CredentialGroupPolicyJoin](../Models/sbpam.models.credentialgrouppolicyjoin.md)]¦null|false|none|none|
|»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»» credentialGroupId|string(uuid)|false|none|none|
|»»»»»»» credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» userAndGroupCollectionPolicyJoin|[[SbPAM.Models.UserAndGroupCollectionPolicyJoin](../Models/sbpam.models.userandgroupcollectionpolicyjoin.md)]¦null|false|none|none|
|»»»»»» policyType|[SbPAM.Models.PolicyType](../Models/sbpam.models.policytype.md)(int32)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» manageResourceGroupProtectionPolicyJoin|[[SbPAM.Models.ManageResourceGroupProtectionPolicyJoin](../Models/sbpam.models.manageresourcegroupprotectionpolicyjoin.md)]¦null|false|read-only|none|
|»»»»» managedResourceGroupId|string(uuid)|false|none|none|
|»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|none|
|»»»»» protectionPolicyId|string(uuid)|false|none|none|
|»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» description|string¦null|false|none|none|
|»»»»»» groupMonitorInterval|integer(int32)|false|none|none|
|»»»»»» isDisabled|boolean|false|none|none|
|»»»»»» isDeleted|boolean|false|none|none|
|»»»»»» protectionPolicyGroup|[[SbPAM.Models.ProtectionPolicyGroup](../Models/sbpam.models.protectionpolicygroup.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» protectionPolicyId|string(uuid)|false|none|none|
|»»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|none|
|»»»»»»» protectionPolicyGroupMember|[[SbPAM.Models.ProtectionPolicyGroupMember](../Models/sbpam.models.protectionpolicygroupmember.md)]¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» userName|string¦null|false|none|none|
|»»»»»»»» deleted|boolean|false|none|none|
|»»»»»»»» userId|string(uuid)¦null|false|none|none|
|»»»»»»»» protectionPolicyGroupId|string(uuid)¦null|false|none|none|
|»»»»»»»» protectionPolicyGroup|[SbPAM.Models.ProtectionPolicyGroup](../Models/sbpam.models.protectionpolicygroup.md)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» manageResourceProtectionPolicyJoin|[[SbPAM.Models.ManageResourceProtectionPolicyJoin](../Models/sbpam.models.manageresourceprotectionpolicyjoin.md)]¦null|false|none|none|
|»»»»»»» managedResourceId|string(uuid)|false|none|none|
|»»»»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|none|
|»»»»»»» protectionPolicyId|string(uuid)|false|none|none|
|»»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|none|
|»»»»»» manageResourceGroupProtectionPolicyJoin|[[SbPAM.Models.ManageResourceGroupProtectionPolicyJoin](../Models/sbpam.models.manageresourcegroupprotectionpolicyjoin.md)]¦null|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» ouMappingEnabled|boolean|false|none|none|
|»»»» ouFqdn|string¦null|false|none|none|
|»»»» ouDomainConfigId|string(uuid)¦null|false|none|none|
|»»»» ouDomainConfig|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|none|
|»»»» ouAutoOnboard|boolean|false|none|none|
|»»»» ouIncludeChildren|boolean|false|none|none|
|»» managedResourcePolicyJoin|[[SbPAM.Models.ManagedResourcePolicyJoin](../Models/sbpam.models.managedresourcepolicyjoin.md)]¦null|false|none|none|
|»» manageResourceProtectionPolicyJoin|[[SbPAM.Models.ManageResourceProtectionPolicyJoin](../Models/sbpam.models.manageresourceprotectionpolicyjoin.md)]¦null|false|none|none|
|»» verificationScheduleId|string(uuid)¦null|false|none|none|
|»» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»» passwordComplexityPolicyId|string(uuid)¦null|false|none|none|
|»» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|none|
|»» portSsh|integer(int32)|false|none|none|
|»» portRdp|integer(int32)|false|none|none|
|»» portWinRm|integer(int32)|false|none|none|
|»» portWinRmHttps|integer(int32)|false|none|none|
|»» winRmHttpSetting|[SbPAM.Models.WinRmHttpSettings](../Models/sbpam.models.winrmhttpsettings.md)(int32)|false|none|none|
|»» disableWinRm|boolean|false|none|none|
|»» acceptThumbprintOnFirstDiscovery|boolean|false|none|none|
|»» trustedThumbprint|string¦null|false|none|none|
|»» discoveredThumbprint|string¦null|false|none|none|
|»» sshTrustActionType|any|false|none|none|
|»» certificateType|any|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» isSystem|boolean|false|none|none|
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


