
<h2 id="tocS_SbPAM.Models.ActivityWithPolicies">SbPAM.Models.ActivityWithPolicies</h2>

<a id="schemasbpam.models.activitywithpolicies"></a>
<a id="schema_SbPAM.Models.ActivityWithPolicies"></a>
<a id="tocSsbpam.models.activitywithpolicies"></a>
<a id="tocssbpam.models.activitywithpolicies"></a>

```json
{
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
      {
        "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
        "activity": {},
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
          "activityGroupActivities": [
            {}
          ],
          "isDefault": true,
          "isDeleted": true,
          "isUserModified": true,
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z"
        },
        "isDeleted": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
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
  "policies": [
    {
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
              {
                "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                "managedAccount": {},
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
                }
              }
            ],
            "managedAccountPolicyJoin": [
              {}
            ],
            "sid": "string",
            "userCollectionJoin": [
              {
                "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                "managedAccount": {},
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
                }
              }
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
                "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                "managedAccountGroup": {}
              }
            ],
            "managedAccountGroupPolicyJoin": [
              {}
            ],
            "groupCollectionJoin": [
              {
                "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                "managedAccountGroup": {},
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
                }
              }
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
        {
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
              "groups": [
                {
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
                    {}
                  ],
                  "scheduledTaskActions": [
                    {}
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
                    {}
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
                    "hostScanJobHostJoin": [],
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
                    "actionGroup": {},
                    "actionQueueAction": [],
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
                    "action": [],
                    "actionGroupJob": [],
                    "actionQueue": []
                  },
                  "actionQueueAction": [
                    {}
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
                    "configurationValues": [],
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
                    "credentialJoin": [],
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
                "managedResource": {},
                "isSystem": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
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
                }
              }
            ],
            "managedResourcePolicyJoin": [
              {}
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
          "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
          "accessControlPolicy": {}
        }
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
              {
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
                    "hostScanUser": [],
                    "hostScanGroup": [],
                    "hostScanFeature": [],
                    "hostScanJobHostJoin": [],
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
                    "uris": [],
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
                    "activityConfigurationSettings": []
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
                    "actionGroup": {},
                    "actionQueueAction": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "managedResourceJoin": [
                    {}
                  ],
                  "managedResourcePolicyJoin": [
                    {}
                  ],
                  "manageResourceProtectionPolicyJoin": [
                    {}
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
                "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                "managedResourceGroup": {}
              }
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
              {}
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
              {
                "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
                "activity": {},
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
                "isDeleted": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
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
            "activityGroupActivities": [
              {
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
                "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                "activityGroup": {},
                "isDeleted": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              }
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
                    "integrationConnectorTemplate": {},
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
              {
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
                "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
                "credentialGroup": {}
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
      "userAndGroupCollectionPolicyJoin": [
        {
          "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
          "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
          "userAndGroupCollection": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "description": "string",
            "userCollectionJoin": [
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
                "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                "userAndGroupCollection": {}
              }
            ],
            "groupCollectionJoin": [
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
                "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                "userAndGroupCollection": {}
              }
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
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|activity|[SbPAM.Models.Activity](../Models/sbpam.models.activity.md)|false|none|none|
|policies|[[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)]¦null|false|none|none|


