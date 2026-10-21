
## Get access policies available to add to role (Auth roles: Admin)

<a id="opIdSearchAccessPolicyCandidatesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/RolesRole/{roleId}/SearchAccessPolicyCandidates \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example

$Host = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($Host)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebRequestSession $WebSession
$Token = Invoke-RestMethod -Url "$($Host)/sigin2fa" -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"} -WebRequestSession $WebSession

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/RolesRole/{roleId}/SearchAccessPolicyCandidates -Headers $Headers
```

`GET /api/v1/RolesRole/{roleId}/SearchAccessPolicyCandidates`

<h3 id="get-access-policies-available-to-add-to-role-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|roleId|path|string(uuid)|true|none|
|Skip|query|integer(int32)|false|Start at this item (default: 0)|
|Take|query|integer(int32)|false|Return this number of items (default: 100)|
|OrderBy|query|string|false|Property name to order results by|
|OrderDescending|query|boolean|false|Use descending sort order (default: false)|
|FilterText|query|string|false|Filter by entries that contain this text. Properties match vary by endpoint.|
|FilterColumns|query|array[string]|false|Columns to include in filter|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "priority": 0,
      "notesRequired": true,
      "ticketRequired": true,
      "approvalTypeRequired": "Deny",
      "policyType": "Resource",
      "managedAccountIds": [
        "497f6eca-6276-4993-bfeb-53cbbbba6f08"
      ],
      "managedAccountGroupIds": [
        "497f6eca-6276-4993-bfeb-53cbbbba6f08"
      ],
      "managedResourceIds": [
        "497f6eca-6276-4993-bfeb-53cbbbba6f08"
      ],
      "managedResourceGroupIds": [
        "497f6eca-6276-4993-bfeb-53cbbbba6f08"
      ],
      "credentialIds": [
        "497f6eca-6276-4993-bfeb-53cbbbba6f08"
      ],
      "activityIds": [
        "497f6eca-6276-4993-bfeb-53cbbbba6f08"
      ],
      "activities": [
        {
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
                  {}
                ],
                "isDefault": true,
                "isDeleted": true,
                "isUserModified": true,
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "createdDateTimeUtc": "2019-08-24T14:15:22Z"
              },
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
        }
      ],
      "activityConfiguration": "string",
      "activityConfigurationMaxSessionLength": 0,
      "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
      "activityGroups": [
        {
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
          "activityGroupActivities": [
            {
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
        }
      ],
      "activityGroupIds": [
        "497f6eca-6276-4993-bfeb-53cbbbba6f08"
      ]
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="get-access-policies-available-to-add-to-role-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.SimpleAccessControlPolicy]](../Models/sbpam.models.datatable_sbpam.models.simpleaccesscontrolpolicy.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


