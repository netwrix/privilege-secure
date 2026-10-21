
<h2 id="tocS_SbPAM.Models.ActionPack">SbPAM.Models.ActionPack</h2>

<a id="schemasbpam.models.actionpack"></a>
<a id="schema_SbPAM.Models.ActionPack"></a>
<a id="tocSsbpam.models.actionpack"></a>
<a id="tocssbpam.models.actionpack"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "icon": "string",
  "description": "string",
  "version": "string",
  "timeoutOverride": 0,
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "actionTemplate": [
    {
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
        }
      ],
      "action": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
          "actionTemplate": {},
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
              {
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
                "actionGroup": {},
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
                    "managedResourceGroup": {},
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
              }
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
              "actionQueue": {
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
                  {}
                ],
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
              "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
              "action": {},
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
                  "actionQueue": {
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
                    "actionGroup": {},
                    "actionQueueAction": [],
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
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
                    "managedResource": {},
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
                    "accessControlPolicy": {}
                  }
                ],
                "manageResourceGroupProtectionPolicyJoin": [
                  {
                    "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                    "managedResourceGroup": {},
                    "protectionPolicyId": "42423f87-b75a-4ed6-9f59-35297cbee0d5",
                    "protectionPolicy": {}
                  }
                ],
                "ouMappingEnabled": true,
                "ouFqdn": "string",
                "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                "ouDomainConfig": {
                  "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
                  "activeDirectoryDomain": [
                    {}
                  ],
                  "name": "ExampleDomainConfiguration",
                  "controllers": [
                    {}
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
                "defaultServiceAccount": {
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
                    "passwordComplexityPolicy": {},
                    "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "scheduledChangePolicy": {},
                    "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "protectionPolicySchedule": {},
                    "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "scanSchedule": {},
                    "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "verificationSchedule": {},
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
                    "monitorActionQueue": {},
                    "configuration": {},
                    "configurationValues": [],
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
                    {}
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
                  "groupTokenId": 0,
                  "name": "string",
                  "sid": "string",
                  "hostGroupGroupJoins": [
                    {}
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
                    {}
                  ],
                  "name": "ExampleDomainConfiguration",
                  "controllers": [
                    {}
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
      "actionTemplateDemand": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "value": "string",
          "type": null,
          "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
          "actionTemplate": {},
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
              }
            ],
            "actionTemplateDemand": [
              {}
            ],
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
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
        "actionTemplate": [],
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
          }
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
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "classification": null,
      "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
      "pairedActionTemplate": {},
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    }
  ],
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
    }
  ],
  "actionTemplateDemand": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "value": "string",
      "type": null,
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
          }
        ],
        "action": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
            "actionTemplate": {},
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
                  "job": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "actionGroupJob": [],
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
                {
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
                  "actionGroup": {},
                  "actionQueueAction": [
                    {}
                  ],
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
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
                "actionQueue": {
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
                    "action": [],
                    "actionGroupJob": [],
                    "actionQueue": []
                  },
                  "actionQueueAction": [
                    {}
                  ],
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                "action": {},
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
                    {}
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
                    {}
                  ],
                  "platform": {
                    "id": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
                    "name": "Linux",
                    "description": "Linux",
                    "builtInAccount": "root",
                    "passwordComplexityPolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "passwordComplexityPolicy": {},
                    "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "scheduledChangePolicy": {},
                    "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "protectionPolicySchedule": {},
                    "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "scanSchedule": {},
                    "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "verificationSchedule": {},
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
                    {}
                  ],
                  "manageResourceGroupProtectionPolicyJoin": [
                    {}
                  ],
                  "ouMappingEnabled": true,
                  "ouFqdn": "string",
                  "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                  "ouDomainConfig": {
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
                  "ouAutoOnboard": true,
                  "ouIncludeChildren": true,
                  "defaultPlatformId": "f5ed8d94-c0b4-4235-bd7c-00760c737887",
                  "defaultPlatform": {
                    "id": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
                    "name": "Linux",
                    "description": "Linux",
                    "builtInAccount": "root",
                    "passwordComplexityPolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "passwordComplexityPolicy": {},
                    "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "scheduledChangePolicy": {},
                    "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "protectionPolicySchedule": {},
                    "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "scanSchedule": {},
                    "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
                    "verificationSchedule": {},
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
                  "defaultServiceAccount": {
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
                    "postSessionAction": "Disable",
                    "showPassword": true,
                    "credentialJoin": [],
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "adGroupDomainConfigId": "1c13f048-4e28-4da4-80f3-31549b3e75d7",
                  "adGroupDomainConfig": {
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
          "actionTemplate": [
            {}
          ],
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
            }
          ],
          "actionTemplateDemand": [],
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
          {
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
              }
            ],
            "action": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                "actionTemplate": {},
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
                    "actionQueueActionParameter": [],
                    "actionLog": [],
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "managedResourceGroup": {},
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
            "actionTemplateDemand": [
              {}
            ],
            "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
            "actionPack": {},
            "classification": null,
            "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
            "pairedActionTemplate": {},
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
          }
        ],
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
          }
        ],
        "actionTemplateDemand": [],
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    }
  ],
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|icon|string¦null|false|none|none|
|description|string¦null|false|none|none|
|version|string¦null|false|none|none|
|timeoutOverride|integer(int32)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|actionTemplate|[[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)]¦null|false|none|[This model represents an action template that is associated with an action group action.<br>    The action template]|
|actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|[This model represents a template for a parameter associated with an action group action.]|
|actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|[This model represents a demand template that is used to find an action service<br>    that can process a particular type of action.  This is done by searching for<br>    this demand template using the template id associated with the action and<br>    then matching this demand template's name and value against a property associated<br>    with a registered action service.]|
|nodeId|string(uuid)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


