
<h2 id="tocS_SbPAM.Models.CredentialGroupPolicyJoin">SbPAM.Models.CredentialGroupPolicyJoin</h2>

<a id="schemasbpam.models.credentialgrouppolicyjoin"></a>
<a id="schema_SbPAM.Models.CredentialGroupPolicyJoin"></a>
<a id="tocSsbpam.models.credentialgrouppolicyjoin"></a>
<a id="tocssbpam.models.credentialgrouppolicyjoin"></a>

```json
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
                    "configurationValues": [],
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
        "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
        "credentialGroup": {}
      }
    ],
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
|credentialGroupId|string(uuid)|false|none|none|
|credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


