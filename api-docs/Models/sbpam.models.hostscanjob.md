
<h2 id="tocS_SbPAM.Models.HostScanJob">SbPAM.Models.HostScanJob</h2>

<a id="schemasbpam.models.hostscanjob"></a>
<a id="schema_SbPAM.Models.HostScanJob"></a>
<a id="tocSsbpam.models.hostscanjob"></a>
<a id="tocssbpam.models.hostscanjob"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "createdByUserName": "string",
  "createdFromAddress": "string",
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
          {}
        ],
        "hostConnected": true,
        "netBiosName": "string",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
|createdBy|string(uuid)¦null|false|none|none|
|createdByUserName|string¦null|false|none|none|
|createdFromAddress|string¦null|false|none|none|
|hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


