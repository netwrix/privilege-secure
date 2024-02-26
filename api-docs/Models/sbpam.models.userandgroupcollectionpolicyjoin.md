
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
                    {}
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
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "activityGroupJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                    "activityGroup": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "credentialPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "credential": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "credentialGroupPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
                    "credentialGroup": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    {}
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
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "activityGroupJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "activityGroupId": "8a17e616-435e-4b20-86d3-9809358d6cdd",
                    "activityGroup": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "credentialPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "credential": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "credentialGroupPolicyJoin": [
                  {
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "credentialGroupId": "0614eddf-74f2-40fb-bca9-3c7de0284a19",
                    "credentialGroup": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
  },
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|accessControlPolicyId|string(uuid)|false|none|none|
|userAndGroupCollectionId|string(uuid)|false|none|none|
|userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](#schemasbpam.models.userandgroupcollection)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


