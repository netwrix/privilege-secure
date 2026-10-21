
<h2 id="tocS_SbPAM.Models.ApprovalWorkflowTierApproverGroup">SbPAM.Models.ApprovalWorkflowTierApproverGroup</h2>

<a id="schemasbpam.models.approvalworkflowtierapprovergroup"></a>
<a id="schema_SbPAM.Models.ApprovalWorkflowTierApproverGroup"></a>
<a id="tocSsbpam.models.approvalworkflowtierapprovergroup"></a>
<a id="tocssbpam.models.approvalworkflowtierapprovergroup"></a>

```json
{
  "approvalWorkflowTierId": "9ad54356-8bf6-4194-abeb-8d342d89f349",
  "approvalWorkflowTier": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "approvalWorkflowId": "2db777ef-e869-4d8f-8dc2-f01750b5b4aa",
    "tierNumber": 0,
    "progressionType": "Sequential",
    "requiredApprovalCount": 0,
    "approvalWorkflowTierApprovers": [
      {
        "approvalWorkflowTierId": "9ad54356-8bf6-4194-abeb-8d342d89f349",
        "approvalWorkflowTier": {},
        "approvalWorkflowApproverAccountId": "65a5b8d8-6201-4079-a7ed-9a780ac68a19",
        "approvalWorkflowApproverAccount": {
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
                  {
                    "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                    "managedAccountGroup": {},
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
              }
            }
          ],
          "isReviewer": true,
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
          "isDeleted": true,
          "deletedDateTimeUtc": "2019-08-24T14:15:22Z"
        }
      }
    ],
    "approvalWorkflowTierApproverGroups": [
      {
        "approvalWorkflowTierId": "9ad54356-8bf6-4194-abeb-8d342d89f349",
        "approvalWorkflowTier": {},
        "approvalWorkflowApproverGroupId": "7337f357-5f48-45df-946c-22d8a51ffb77",
        "approvalWorkflowApproverGroup": {
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
            {
              "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
              "managedAccountGroup": {},
              "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
              "userAndGroupCollection": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "description": "string",
                "userCollectionJoin": [
                  {
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "managedAccount": {},
                    "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                    "userAndGroupCollection": {}
                  }
                ],
                "groupCollectionJoin": [
                  {}
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
              }
            }
          ],
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
        }
      }
    ],
    "escalationTimeout": 0,
    "escalationApproverAccountId": "7655cd15-af86-4cea-9f57-1b6ed65e4aad",
    "escalationApproverAccount": {
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "key": "string",
                  "value": "string",
                  "type": "String",
                  "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                "accessControlPolicy": {}
              }
            ],
            "managedResourcePolicyJoin": [
              {
                "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
                "managedResource": {
                  "id": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "name": "My Host",
                  "type": "Host",
                  "hostId": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "host": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                    "name": "example\\host",
                    "distinguishedName": "CN=Host, CN=Computers, DC=example, DC=local",
                    "ipAddress": "192.168.1.1",
                    "os": "Windows Fake Edition",
                    "version": "10.4.1.1",
                    "lsaLookupCache": "10",
                    "lastUpdatedDateTimeUtc": "2024-03-27T18:25:43.511Z",
                    "credentialId": "61101f34-74f5-41a6-9405-73c2c91bd752",
                    "hasSSH": false,
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "dnsHostName": "host.example.local",
                    "netBiosName": "HOST",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "users": [],
                    "groups": [],
                    "features": [],
                    "services": [],
                    "scheduledTasks": [],
                    "databases": [],
                    "databaseDbs": [],
                    "databaseRoles": [],
                    "samaccountname": "EXAMPLE\\host",
                    "isDomainController": false,
                    "isGlobalCatalog": false,
                    "usnChanged": 12345,
                    "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
                    "added": "20240327T01:01:01.555Z",
                    "deleted": false,
                    "lastScannedUtc": "20240327T01:01:01.555Z",
                    "scanStartedUtc": "20240327T01:01:01.555Z",
                    "isVirtual": false,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                  "websiteId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "website": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "avatarUrl": "string",
                    "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
                    "logonUrl": "string",
                    "uris": [],
                    "isVirtual": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "azureAdTenantId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "azureAdTenant": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "tenantId": "string",
                    "logonUrl": "string",
                    "emailDomain": "string",
                    "associatedDomainId": "ff9f5d4c-96c6-4b4d-bd1f-f4b6029efcd8",
                    "processGroupMembership": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "secretVaultId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "secretVault": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "managedDatabaseId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "platformId": "d07c4352-ea1a-44a2-8fe8-6f198ec1119f",
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
                  "displayName": "My Host",
                  "ipAddress": "192.168.0.1",
                  "serviceAccountId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "manageAccount": "Unmanaged",
                  "protectedGroup": [],
                  "activityConfigurationId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
                  },
                  "actionQueueId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "managedResourceJoin": [],
                  "managedResourcePolicyJoin": [],
                  "manageResourceProtectionPolicyJoin": [],
                  "verificationScheduleId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "passwordComplexityPolicyId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
                  },
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
          }
        }
      ],
      "isReviewer": true,
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
      "isDeleted": true,
      "deletedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "escalationApproverGroupId": "2bc853d6-4cef-46c4-8194-543b4065d8ca",
    "escalationApproverGroup": {
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "key": "string",
                  "value": "string",
                  "type": "String",
                  "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
                  "isDeleted": true,
                  "deletedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                  "id": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "name": "My Host",
                  "type": "Host",
                  "hostId": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "host": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                    "name": "example\\host",
                    "distinguishedName": "CN=Host, CN=Computers, DC=example, DC=local",
                    "ipAddress": "192.168.1.1",
                    "os": "Windows Fake Edition",
                    "version": "10.4.1.1",
                    "lsaLookupCache": "10",
                    "lastUpdatedDateTimeUtc": "2024-03-27T18:25:43.511Z",
                    "credentialId": "61101f34-74f5-41a6-9405-73c2c91bd752",
                    "hasSSH": false,
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "dnsHostName": "host.example.local",
                    "netBiosName": "HOST",
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "users": [],
                    "groups": [],
                    "features": [],
                    "services": [],
                    "scheduledTasks": [],
                    "databases": [],
                    "databaseDbs": [],
                    "databaseRoles": [],
                    "samaccountname": "EXAMPLE\\host",
                    "isDomainController": false,
                    "isGlobalCatalog": false,
                    "usnChanged": 12345,
                    "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
                    "added": "20240327T01:01:01.555Z",
                    "deleted": false,
                    "lastScannedUtc": "20240327T01:01:01.555Z",
                    "scanStartedUtc": "20240327T01:01:01.555Z",
                    "isVirtual": false,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                  "websiteId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "website": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "avatarUrl": "string",
                    "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
                    "logonUrl": "string",
                    "uris": [],
                    "isVirtual": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "azureAdTenantId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "azureAdTenant": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "tenantId": "string",
                    "logonUrl": "string",
                    "emailDomain": "string",
                    "associatedDomainId": "ff9f5d4c-96c6-4b4d-bd1f-f4b6029efcd8",
                    "processGroupMembership": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "secretVaultId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                  "secretVault": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "managedDatabaseId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "platformId": "d07c4352-ea1a-44a2-8fe8-6f198ec1119f",
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
                  "displayName": "My Host",
                  "ipAddress": "192.168.0.1",
                  "serviceAccountId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "manageAccount": "Unmanaged",
                  "protectedGroup": [],
                  "activityConfigurationId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
                  },
                  "actionQueueId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "managedResourceJoin": [],
                  "managedResourcePolicyJoin": [],
                  "manageResourceProtectionPolicyJoin": [],
                  "verificationScheduleId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  "passwordComplexityPolicyId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
                  },
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
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
                    "activityConfigurationSettings": [],
                    "customFields": [],
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
                    "commandRestriction": {},
                    "serviceNowConnectorId": "6dc1c506-0d6b-4dcb-bca8-0ce5396d48e6",
                    "serviceNowConnector": {}
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
        {
          "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
          "managedAccountGroup": {},
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
              {}
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
          }
        }
      ],
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
    "expirationDateTimeUtc": "2019-08-24T14:15:22Z"
  },
  "approvalWorkflowApproverGroupId": "7337f357-5f48-45df-946c-22d8a51ffb77",
  "approvalWorkflowApproverGroup": {
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
                  {
                    "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                    "managedAccountGroup": {},
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
              }
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
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "key": "string",
                "value": "string",
                "type": "String",
                "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "integrationConnectorTemplate": {},
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
                    "managedAccountGroup": {}
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
                "id": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                "name": "My Host",
                "type": "Host",
                "hostId": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "host": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                  "name": "example\\host",
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
                  "dnsHostName": "host.example.local",
                  "netBiosName": "HOST",
                  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                  "users": [],
                  "groups": [],
                  "features": [],
                  "services": [],
                  "scheduledTasks": [],
                  "databases": [],
                  "databaseDbs": [],
                  "databaseRoles": [],
                  "samaccountname": "EXAMPLE\\host",
                  "isDomainController": false,
                  "isGlobalCatalog": false,
                  "usnChanged": 12345,
                  "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
                  "added": "20240327T01:01:01.555Z",
                  "deleted": false,
                  "lastScannedUtc": "20240327T01:01:01.555Z",
                  "scanStartedUtc": "20240327T01:01:01.555Z",
                  "isVirtual": false,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                "websiteId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                "website": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "avatarUrl": "string",
                  "associatedResourceId": "c1ee788d-8bc0-4801-bf32-fe90aefd0f96",
                  "logonUrl": "string",
                  "uris": [
                    {}
                  ],
                  "isVirtual": true,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "azureAdTenantId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                "azureAdTenant": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "tenantId": "string",
                  "logonUrl": "string",
                  "emailDomain": "string",
                  "associatedDomainId": "ff9f5d4c-96c6-4b4d-bd1f-f4b6029efcd8",
                  "processGroupMembership": true,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "secretVaultId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
                "secretVault": {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "description": "string",
                  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                },
                "managedDatabaseId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                "platformId": "d07c4352-ea1a-44a2-8fe8-6f198ec1119f",
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
                "displayName": "My Host",
                "ipAddress": "192.168.0.1",
                "serviceAccountId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                "manageAccount": "Unmanaged",
                "protectedGroup": [],
                "activityConfigurationId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                "actionQueueId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                "managedResourceJoin": [],
                "managedResourcePolicyJoin": [],
                "manageResourceProtectionPolicyJoin": [],
                "verificationScheduleId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                "passwordComplexityPolicyId": "6d06635c-f188-4da9-ac8d-720f16a732d6",
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
                  {}
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
                    "activityGroup": {},
                    "isDeleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "deleteAccount": true,
                "vaultId": "867f3a98-ec66-42f4-abbc-5980239e4a28",
                "vaultInfo": "string",
                "logonUrl": "string",
                "isDefault": true,
                "isDeleted": true,
                "isUserModified": true,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
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
                "activityGroupActivities": [
                  {
                    "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
                    "activity": {},
                    "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                    "activityGroup": {},
                    "isDeleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "isDefault": true,
                "isDeleted": true,
                "isUserModified": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "actionGroup": {},
                    "actionQueueAction": [],
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "configuration": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "integrationConnector": {},
                    "integrationConnectorTemplate": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "configurationValues": [
                    {}
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
                    "credentialGroup": {}
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
                    "credential": {},
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
                    "managedAccount": {},
                    "userAndGroupCollectionId": "2d83e96c-5513-4ec8-88fe-e1d5997877c9",
                    "userAndGroupCollection": {}
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
                "userAndGroupCollectionPolicyJoin": [
                  {}
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
          ],
          "policyType": "Resource",
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "managedAccountGroup": {}
                  }
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
            {}
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
        }
      }
    ],
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|approvalWorkflowTierId|string(uuid)|false|none|none|
|approvalWorkflowTier|[SbPAM.Models.ApprovalWorkflowTier](../Models/sbpam.models.approvalworkflowtier.md)|false|none|This model represents an approval workflow tier.|
|approvalWorkflowApproverGroupId|string(uuid)|false|none|none|
|approvalWorkflowApproverGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|This model represents a group of managed accounts.|


