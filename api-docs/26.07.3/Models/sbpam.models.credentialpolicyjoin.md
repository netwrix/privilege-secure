
<h2 id="tocS_SbPAM.Models.CredentialPolicyJoin">SbPAM.Models.CredentialPolicyJoin</h2>

<a id="schemasbpam.models.credentialpolicyjoin"></a>
<a id="schema_SbPAM.Models.CredentialPolicyJoin"></a>
<a id="tocSsbpam.models.credentialpolicyjoin"></a>
<a id="tocssbpam.models.credentialpolicyjoin"></a>

```json
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
      "id": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
      "name": "Linux",
      "description": "Linux",
      "builtInAccount": "root",
      "passwordComplexityPolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
      "passwordComplexityPolicy": {
        "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "name": "ComplexityName",
        "description": "ComplexityDescription",
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
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
        "type": "Password"
      },
      "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
      "scheduledChangePolicy": {
        "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
        "name": "Every 2 hours",
        "description": "Every 2 hours",
        "frequency": null,
        "periodValue": 60,
        "daysOfWeek": "SmtwTfs",
        "dayNumber": 1,
        "localTime": "20240101T05:07:08.555",
        "utcTime": "20240101T05:07:08.555Z",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
      "protectionPolicySchedule": {
        "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
        "name": "Every 2 hours",
        "description": "Every 2 hours",
        "frequency": null,
        "periodValue": 60,
        "daysOfWeek": "SmtwTfs",
        "dayNumber": 1,
        "localTime": "20240101T05:07:08.555",
        "utcTime": "20240101T05:07:08.555Z",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
      "scanSchedule": {
        "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
        "name": "Every 2 hours",
        "description": "Every 2 hours",
        "frequency": null,
        "periodValue": 60,
        "daysOfWeek": "SmtwTfs",
        "dayNumber": 1,
        "localTime": "20240101T05:07:08.555",
        "utcTime": "20240101T05:07:08.555Z",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
      "verificationSchedule": {
        "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
        "name": "Every 2 hours",
        "description": "Every 2 hours",
        "frequency": null,
        "periodValue": 60,
        "daysOfWeek": "SmtwTfs",
        "dayNumber": 1,
        "localTime": "20240101T05:07:08.555",
        "utcTime": "20240101T05:07:08.555Z",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      },
      "resetOnMismatch": true,
      "icon": "string",
      "basePlatformId": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
      "os": "string",
      "type": "Unspecified",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
      "showCommandPlans": true,
      "permanent": true
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
        "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
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
                    "ouIncludeChildren": true,
                    "defaultPlatformId": "f5ed8d94-c0b4-4235-bd7c-00760c737887",
                    "defaultPlatform": {},
                    "defaultServiceAccountId": "ffc99fc5-ef80-4c16-98ad-f69ec7f1a38a",
                    "defaultServiceAccount": {},
                    "adGroupMappingEnabled": true,
                    "adGroupId": "9a83eeeb-9c7f-43c1-8266-9a86d08b7e4a",
                    "adGroup": {},
                    "adGroupDomainConfigId": "1c13f048-4e28-4da4-80f3-31549b3e75d7",
                    "adGroupDomainConfig": {},
                    "adGroupIncludeNested": true,
                    "adGroupAutoOnboard": true
                  },
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
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
              "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
              "actionGroup": {},
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
              "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
              "actionServiceProperty": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "value": "string",
                  "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                  "registeredService": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
              "actionQueueAction": [
                {}
              ],
              "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            },
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
                    "id": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "name": "My Host",
                    "type": "Host",
                    "hostId": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "host": {},
                    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                    "websiteId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "website": {},
                    "azureAdTenantId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "azureAdTenant": {},
                    "secretVaultId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "secretVault": {},
                    "managedDatabaseId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "managedDatabase": {},
                    "platformId": "d07c4352-ea1a-44a2-8fe8-6f198ec1119f",
                    "platform": {},
                    "displayName": "My Host",
                    "ipAddress": "192.168.0.1",
                    "serviceAccountId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "serviceAccount": {},
                    "manageAccount": "Unmanaged",
                    "protectedGroup": [],
                    "activityConfigurationId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "activityConfiguration": {},
                    "actionQueueId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "actionQueue": {},
                    "managedResourceJoin": [],
                    "managedResourcePolicyJoin": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "verificationScheduleId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "verificationSchedule": {},
                    "passwordComplexityPolicyId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                    "passwordComplexityPolicy": {},
                    "portSsh": 22,
                    "portRdp": 3389,
                    "portWinRm": 5985,
                    "portWinRmHttps": 5986,
                    "winRmHttpSetting": "UseHttp",
                    "disableWinRm": false,
                    "acceptThumbprintOnFirstDiscovery": true,
                    "trustedThumbprint": "RlTtKXTcMWhPl6F/cTPYVNQgNKqX9TuuNIuhW5hMdvs",
                    "discoveredThumbprint": "RlTtKXTcMWhPl6F/cTPYVNQgNKqX9TuuNIuhW5hMdvs",
                    "sshTrustActionType": null,
                    "certificateType": null,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                  "managedResourceGroup": {}
                }
              ],
              "platform": {
                "id": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
                "name": "Linux",
                "description": "Linux",
                "builtInAccount": "root",
                "passwordComplexityPolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "passwordComplexityPolicy": {
                  "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "name": "ComplexityName",
                  "description": "ComplexityDescription",
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
                  "type": "Password"
                },
                "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "scheduledChangePolicy": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "protectionPolicySchedule": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "scanSchedule": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "verificationSchedule": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "resetOnMismatch": true,
                "icon": "string",
                "basePlatformId": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
                "os": "string",
                "type": "Unspecified",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
                "showCommandPlans": true,
                "permanent": true
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                }
              ],
              "ouMappingEnabled": true,
              "ouFqdn": "string",
              "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
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
              "ouAutoOnboard": true,
              "ouIncludeChildren": true,
              "defaultPlatformId": "f5ed8d94-c0b4-4235-bd7c-00760c737887",
              "defaultPlatform": {
                "id": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
                "name": "Linux",
                "description": "Linux",
                "builtInAccount": "root",
                "passwordComplexityPolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "passwordComplexityPolicy": {
                  "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "name": "ComplexityName",
                  "description": "ComplexityDescription",
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
                  "type": "Password"
                },
                "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "scheduledChangePolicy": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "protectionPolicySchedule": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "scanSchedule": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                "verificationSchedule": {
                  "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
                  "name": "Every 2 hours",
                  "description": "Every 2 hours",
                  "frequency": null,
                  "periodValue": 60,
                  "daysOfWeek": "SmtwTfs",
                  "dayNumber": 1,
                  "localTime": "20240101T05:07:08.555",
                  "utcTime": "20240101T05:07:08.555Z",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "resetOnMismatch": true,
                "icon": "string",
                "basePlatformId": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
                "os": "string",
                "type": "Unspecified",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
                "showCommandPlans": true,
                "permanent": true
              },
              "defaultServiceAccountId": "ffc99fc5-ef80-4c16-98ad-f69ec7f1a38a",
              "defaultServiceAccount": {},
              "adGroupMappingEnabled": true,
              "adGroupId": "9a83eeeb-9c7f-43c1-8266-9a86d08b7e4a",
              "adGroup": {
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activeDirectoryGroupGroupGroup": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activeDirectoryGroupGroupMember": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                    "group": {},
                    "member": {},
                    "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
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
                    "activeDirectoryDomain": [],
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
                "groupTokenId": 0,
                "name": "string",
                "sid": "string",
                "hostGroupGroupJoins": [
                  {
                    "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
                    "hostGroup": {},
                    "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
                    "domainGroupMember": {},
                    "lastSeenUtc": "2019-08-24T14:15:22Z",
                    "deleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "deleted": true,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
              "adGroupDomainConfigId": "1c13f048-4e28-4da4-80f3-31549b3e75d7",
              "adGroupDomainConfig": {
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
              "adGroupIncludeNested": true,
              "adGroupAutoOnboard": true
            },
            "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
            "startTime": "2019-08-24T14:15:22Z",
            "endTime": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
            "heartbeatUtc": "2019-08-24T14:15:22Z",
            "complete": true
          }
        ],
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
              "helperText": "string",
              "advanced": true,
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            }
          ],
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
        },
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            },
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
          },
          "type": "Uri",
          "helperText": "string",
          "advanced": true,
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
        }
      ],
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "passwordVaultInfo": "string",
    "changeOnCheckout": true,
    "changeOnRelease": true,
    "postSessionAction": "Disable",
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
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
    "authenticationMethod": "Password",
    "keyGenAlgorithm": "string",
    "keyLength": 0,
    "autoGenPassphrase": true,
    "passphrase": "string",
    "privateKey": "string",
    "publicKey": "string",
    "comment": "string"
  },
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|accessControlPolicyId|string(uuid)|false|none|none|
|credentialId|string(uuid)|false|none|none|
|credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


