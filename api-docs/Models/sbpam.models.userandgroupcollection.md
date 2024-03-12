
<h2 id="tocS_SbPAM.Models.UserAndGroupCollection">SbPAM.Models.UserAndGroupCollection</h2>

<a id="schemasbpam.models.userandgroupcollection"></a>
<a id="schema_SbPAM.Models.UserAndGroupCollection"></a>
<a id="tocSsbpam.models.userandgroupcollection"></a>
<a id="tocssbpam.models.userandgroupcollection"></a>

```json
{
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
                {
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {},
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
              "groupCollectionJoin": [
                {
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {},
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
                  }
                }
              ],
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          }
        ],
        "managedAccountPolicyJoin": [
          {
            "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
            "managedAccount": {},
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
                {}
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
                {
                  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
                  "managedResource": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Host",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                    "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
                    "website": {},
                    "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
                    "azureAdTenant": {},
                    "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
                    "secretVault": {},
                    "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
                    "managedDatabase": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "displayName": "string",
                    "ipAddress": "string",
                    "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
                    "serviceAccount": {},
                    "manageAccount": "Unmanaged",
                    "protectedGroup": [],
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "managedResourceJoin": [],
                    "managedResourcePolicyJoin": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
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
      "userAndGroupCollection": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "description": "string",
        "userCollectionJoin": [],
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
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {}
                }
              ],
              "managedAccountGroupPolicyJoin": [
                {
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {},
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
          {
            "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
            "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
            "userAndGroupCollection": {},
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          }
        ],
        "isReviewer": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
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
                {
                  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                  "managedAccount": {},
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
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
            "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
            "managedAccountGroup": {}
          }
        ],
        "managedAccountGroupPolicyJoin": [
          {
            "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
            "managedAccountGroup": {},
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
                {}
              ],
              "managedResourcePolicyJoin": [
                {
                  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
                  "managedResource": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Host",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                    "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
                    "website": {},
                    "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
                    "azureAdTenant": {},
                    "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
                    "secretVault": {},
                    "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
                    "managedDatabase": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "displayName": "string",
                    "ipAddress": "string",
                    "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
                    "serviceAccount": {},
                    "manageAccount": "Unmanaged",
                    "protectedGroup": [],
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "managedResourceJoin": [],
                    "managedResourcePolicyJoin": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
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
        "groupCollectionJoin": [
          {}
        ],
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
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
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "managedAccountPolicyJoin": [
                {
                  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                  "managedAccount": {},
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
        "groupCollectionJoin": [],
        "userAndGroupCollectionPolicyJoin": [
          {
            "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
            "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
            "userAndGroupCollection": {},
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          }
        ],
        "isReviewer": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
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
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "managedAccountPolicyJoin": [
                {
                  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                  "managedAccount": {},
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
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {}
                }
              ],
              "managedAccountGroupPolicyJoin": [
                {
                  "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                  "managedAccountGroup": {},
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
  "isReviewer": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|userCollectionJoin|[[SbPAM.Models.UserCollectionJoin](../Models/sbpam.models.usercollectionjoin.md)]¦null|false|read-only|none|
|groupCollectionJoin|[[SbPAM.Models.GroupCollectionJoin](../Models/sbpam.models.groupcollectionjoin.md)]¦null|false|read-only|none|
|userAndGroupCollectionPolicyJoin|[[SbPAM.Models.UserAndGroupCollectionPolicyJoin](../Models/sbpam.models.userandgroupcollectionpolicyjoin.md)]¦null|false|read-only|none|
|isReviewer|boolean|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


