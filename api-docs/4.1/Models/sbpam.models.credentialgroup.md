
<h2 id="tocS_SbPAM.Models.CredentialGroup">SbPAM.Models.CredentialGroup</h2>

<a id="schemasbpam.models.credentialgroup"></a>
<a id="schema_SbPAM.Models.CredentialGroup"></a>
<a id="tocSsbpam.models.credentialgroup"></a>
<a id="tocssbpam.models.credentialgroup"></a>

```json
{
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
|credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|[This model is used to model the many to many relationship between credentials and credential groups.]|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


