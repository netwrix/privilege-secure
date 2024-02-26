
<h2 id="tocS_SbPAM.Models.ReportSubscription">SbPAM.Models.ReportSubscription</h2>

<a id="schemasbpam.models.reportsubscription"></a>
<a id="schema_SbPAM.Models.ReportSubscription"></a>
<a id="tocSsbpam.models.reportsubscription"></a>
<a id="tocssbpam.models.reportsubscription"></a>

```json
{
  "reportId": "836df459-dc40-4aa1-972a-6eb0a864dff9",
  "report": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "reportFolder": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "reportFolderId": "6201f8bf-2ec3-42b7-937c-91082a4a691a",
      "reports": [
        {}
      ],
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "reportFolderId": "6201f8bf-2ec3-42b7-937c-91082a4a691a",
    "source": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "dbSet": "string",
      "reportAttributeTemplateJoins": [
        {
          "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
          "reportSource": {},
          "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
          "reportAttributeTemplate": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "name": "string",
            "displayName": "string",
            "dataType": "Boolean",
            "type": "User",
            "reportAttributeTemplateJoins": [
              {}
            ],
            "reportOperatorJoins": [
              {
                "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
                "reportAttributeTemplate": {},
                "reportOperator": "Equals"
              }
            ],
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
          },
          "attributeName": "string"
        }
      ],
      "columns": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
          "source": {},
          "name": "string",
          "title": "string",
          "columnOrder": 0,
          "dataType": "string",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
        }
      ],
      "dateColumn": "string",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
    },
    "sourceId": "797f5a94-3689-4ac8-82fd-d749511ea2b2",
    "reportAttributes": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "reportId": "836df459-dc40-4aa1-972a-6eb0a864dff9",
        "report": {},
        "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
        "reportAttributeTemplate": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "displayName": "string",
          "dataType": "Boolean",
          "type": "User",
          "reportAttributeTemplateJoins": [
            {
              "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
              "reportSource": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "dbSet": "string",
                "reportAttributeTemplateJoins": [
                  {}
                ],
                "columns": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
                    "source": {},
                    "name": "string",
                    "title": "string",
                    "columnOrder": 0,
                    "dataType": "string",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
                  }
                ],
                "dateColumn": "string",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
              },
              "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
              "reportAttributeTemplate": {},
              "attributeName": "string"
            }
          ],
          "reportOperatorJoins": [
            {
              "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
              "reportAttributeTemplate": {},
              "reportOperator": "Equals"
            }
          ],
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
        },
        "value": "string",
        "operator": "Equals",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
      }
    ],
    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
    "reportFavorites": [
      {
        "reportId": "836df459-dc40-4aa1-972a-6eb0a864dff9",
        "report": {},
        "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b"
      }
    ],
    "durationType": "LastHour",
    "startDateTimeUtc": "2019-08-24T14:15:22Z",
    "endDateTimeUtc": "2019-08-24T14:15:22Z",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
  },
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
                "managedAccountJoin": [
                  {
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "managedAccount": {},
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
                    "userAndGroupCollection": {}
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
                  "dnsHostName": "string",
                  "netBiosName": "string",
                  "users": [
                    {}
                  ],
                  "groups": [
                    {}
                  ],
                  "features": [
                    {}
                  ],
                  "services": [
                    {}
                  ],
                  "scheduledTasks": [
                    {}
                  ],
                  "databases": [
                    {}
                  ],
                  "databaseDbs": [
                    {}
                  ],
                  "databaseRoles": [
                    {}
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
                    {}
                  ],
                  "hostScanGroup": [
                    {}
                  ],
                  "hostScanFeature": [
                    {}
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
                    {}
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
                "manageAccount": "Unmanaged",
                "protectedGroup": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "allowedProtectedGroupMember": [],
                    "currentProtectedGroupMember": [],
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
                    {}
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
                "managedResourceJoin": [
                  {
                    "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
                    "managedResource": {},
                    "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                    "managedResourceGroup": {}
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
                    "protectionPolicy": {}
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
                    "managedResource": {},
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
                    "protectionPolicy": {}
                  }
                ],
                "ouMappingEnabled": true,
                "ouFqdn": "string",
                "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                "ouDomainConfig": {
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
                    {}
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
                    "activityGroup": {},
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
                    {}
                  ]
                },
                "activityGroupActivities": [
                  {
                    "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
                    "activity": {},
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
                    "actionGroup": {},
                    "actionQueueAction": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "configuration": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "integrationConnector": {},
                    "integrationConnectorTemplate": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "configurationValues": [
                    {}
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
                    "credentialGroup": {}
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
                    "credential": {},
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
                  {
                    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
                    "managedAccount": {},
                    "managedAccountGroupId": "e26d71c7-3b1a-42f3-b335-0d300235f20b",
                    "managedAccountGroup": {}
                  }
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
    "isReviewer": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
  "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
  "actionJob": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "startDateTimeUtc": "2019-08-24T14:15:22Z",
    "recurrenceInterval": 0,
    "recurrenceType": null,
    "hour": 0,
    "minute": 0,
    "dayOfWeek": "Sunday",
    "dayOfMonth": 0,
    "recurrenceCount": 0,
    "nextStartTimeUtc": "2019-08-24T14:15:22Z",
    "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
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
                  "actionPack": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "icon": "string",
                    "description": "string",
                    "version": "string",
                    "timeoutOverride": 0,
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
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
                  "actionPack": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "icon": "string",
                    "description": "string",
                    "version": "string",
                    "timeoutOverride": 0,
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
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
    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
    "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
    "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
    "managedObjectId": "b0f84734-74e5-4ac3-82a9-67890062eff0",
    "managedObjectType": "HostUser",
    "type": "None",
    "name": "string",
    "disabled": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "scheduleChangePolicyId": "5f3aadd2-50aa-47af-bbd3-2802fa027048",
    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
    "isRecurring": true,
    "isCancelledProtection": true
  },
  "subscribedToCsv": true,
  "subscribedToPdf": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|reportId|string(uuid)|false|none|none|
|report|[SbPAM.Models.Report](#schemasbpam.models.report)|false|none|none|
|managedAccountId|string(uuid)|false|none|none|
|managedAccount|[SbPAM.Models.ManagedAccount](#schemasbpam.models.managedaccount)|false|none|none|
|scheduledChangePolicyId|string(uuid)|false|none|none|
|scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](#schemasbpam.models.scheduledchangepolicy)|false|none|none|
|actionJobId|string(uuid)¦null|false|none|none|
|actionJob|[SbPAM.Models.ActionJob](#schemasbpam.models.actionjob)|false|none|none|
|subscribedToCsv|boolean|false|none|none|
|subscribedToPdf|boolean|false|none|none|


