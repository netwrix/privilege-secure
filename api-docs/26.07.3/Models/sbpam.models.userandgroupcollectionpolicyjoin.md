
<h2 id="tocS_SbPAM.Models.UserAndGroupCollectionPolicyJoin">SbPAM.Models.UserAndGroupCollectionPolicyJoin</h2>

<a id="schemasbpam.models.userandgroupcollectionpolicyjoin"></a>
<a id="schema_SbPAM.Models.UserAndGroupCollectionPolicyJoin"></a>
<a id="tocSsbpam.models.userandgroupcollectionpolicyjoin"></a>
<a id="tocssbpam.models.userandgroupcollectionpolicyjoin"></a>

```json
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
                "managedAccountJoin": [
                  {}
                ],
                "managedAccountGroupPolicyJoin": [
                  {
                    "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                    "managedAccountGroup": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
                ],
                "groupCollectionJoin": [
                  {
                    "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                    "managedAccountGroup": {},
                    "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                    "userAndGroupCollection": {}
                  }
                ],
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    {}
                  ],
                  "customFields": [
                    {}
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
                  "recordKeystrokes": true,
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
                  "viewPasswordInSeconds": 0,
                  "commandRestrictionId": "dcac6022-e2f7-4c9f-95c3-25ff74990f38",
                  "commandRestriction": {
                    "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "name": "Command Restriction 1",
                    "emailRecipient": "user@example.com",
                    "commandRestrictionSettings": [],
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                  "serviceNowConnector": {
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
                  }
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
                    "managedAccountGroup": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
                ],
                "managedResourcePolicyJoin": [
                  {
                    "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
                    "managedResource": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
                ],
                "managedResourceGroupPolicyJoin": [
                  {
                    "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                    "managedResourceGroup": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
                ],
                "activityJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
                    "activity": {},
                    "isDefault": true,
                    "isDeleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activityGroupJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                    "activityGroup": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "credentialPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "credential": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "credentialGroupPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
                    "credentialGroup": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "userAndGroupCollectionPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                    "userAndGroupCollection": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "policyType": "Resource",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            }
          ],
          "sid": "string",
          "userCollectionJoin": [
            {}
          ],
          "isReviewer": true,
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
          "isDeleted": true,
          "deletedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                "managedAccountJoin": [
                  {}
                ],
                "managedAccountPolicyJoin": [
                  {
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "managedAccount": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
                ],
                "sid": "string",
                "userCollectionJoin": [
                  {
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "managedAccount": {},
                    "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                    "userAndGroupCollection": {}
                  }
                ],
                "isReviewer": true,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
                "isDeleted": true,
                "deletedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    {}
                  ],
                  "customFields": [
                    {}
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
                  "recordKeystrokes": true,
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
                  "viewPasswordInSeconds": 0,
                  "commandRestrictionId": "dcac6022-e2f7-4c9f-95c3-25ff74990f38",
                  "commandRestriction": {
                    "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "name": "Command Restriction 1",
                    "emailRecipient": "user@example.com",
                    "commandRestrictionSettings": [],
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                  "serviceNowConnector": {
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
                  }
                },
                "priority": 0,
                "isDisabled": true,
                "isDeleted": true,
                "isDefault": true,
                "isUserModified": true,
                "managedAccountPolicyJoin": [
                  {
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "managedAccount": {},
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
                    "managedResource": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
                ],
                "managedResourceGroupPolicyJoin": [
                  {
                    "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                    "managedResourceGroup": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
                ],
                "activityJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
                    "activity": {},
                    "isDefault": true,
                    "isDeleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "activityGroupJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                    "activityGroup": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "credentialPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "credential": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "credentialGroupPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
                    "credentialGroup": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "userAndGroupCollectionPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                    "userAndGroupCollection": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "policyType": "Resource",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            }
          ],
          "groupCollectionJoin": [
            {}
          ],
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      }
    ],
    "isReviewer": true,
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
|userAndGroupCollectionId|string(uuid)|false|none|none|
|userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


