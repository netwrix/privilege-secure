
## Update or create scanned host services. (Auth roles: Admin,App)

<a id="opIdPutServicesAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X PUT /api/v1/HostScanJob/Services \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "displayName": "string",
    "description": "string",
    "startType": "Boot",
    "userName": "string",
    "binaryPathName": "string",
    "dependentServices": "string",
    "canPauseAndContinue": true,
    "canShutdown": true,
    "canStop": true,
    "serviceType": "KernelDriver",
    "delayedStart": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
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
        {
          "hostScanJobId": "1fe689d7-5921-4446-816e-c9f37551fba6",
          "hostScanJob": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
            "createdByUserName": "string",
            "createdFromAddress": "string",
            "hostScanJobHostJoin": [
              {}
            ],
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
          "hostScanHost": {},
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
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        }
      ],
      "hostConnected": true,
      "netBiosName": "string",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "hostObjectId": "427648af-40d4-4fb9-b489-a7fa0537c5f4"
  }
]
"@

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method PUT -Uri "$($NPSUrl)/api/v1/HostScanJob/Services" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`PUT /api/v1/HostScanJob/Services`

> Body parameter

<details><summary>JSON</summary>


```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "displayName": "string",
    "description": "string",
    "startType": "Boot",
    "userName": "string",
    "binaryPathName": "string",
    "dependentServices": "string",
    "canPauseAndContinue": true,
    "canShutdown": true,
    "canStop": true,
    "serviceType": "KernelDriver",
    "delayedStart": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
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
        {
          "hostScanJobId": "1fe689d7-5921-4446-816e-c9f37551fba6",
          "hostScanJob": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
            "createdByUserName": "string",
            "createdFromAddress": "string",
            "hostScanJobHostJoin": [
              {}
            ],
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
          "hostScanHost": {},
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
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        }
      ],
      "hostConnected": true,
      "netBiosName": "string",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "hostObjectId": "427648af-40d4-4fb9-b489-a7fa0537c5f4"
  }
]
```


</details>

<h3 id="update-or-create-scanned-host-services.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.HostScanService](../Models/sbpam.models.hostscanservice.md)|false|List of services to add|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "displayName": "string",
    "description": "string",
    "startType": "Boot",
    "userName": "string",
    "binaryPathName": "string",
    "dependentServices": "string",
    "canPauseAndContinue": true,
    "canShutdown": true,
    "canStop": true,
    "serviceType": "KernelDriver",
    "delayedStart": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
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
        {
          "hostScanJobId": "1fe689d7-5921-4446-816e-c9f37551fba6",
          "hostScanJob": {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
            "createdByUserName": "string",
            "createdFromAddress": "string",
            "hostScanJobHostJoin": [
              {}
            ],
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          },
          "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
          "hostScanHost": {},
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
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
        }
      ],
      "hostConnected": true,
      "netBiosName": "string",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    },
    "hostObjectId": "427648af-40d4-4fb9-b489-a7fa0537c5f4"
  }
]
```


</details>

<h3 id="update-or-create-scanned-host-services.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="update-or-create-scanned-host-services.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.HostScanService](../Models/sbpam.models.hostscanservice.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» displayName|string¦null|false|none|none|
|» description|string¦null|false|none|none|
|» startType|[SbPAM.Models.Common.ServiceStartType](../Models/sbpam.models.common.servicestarttype.md)(int32)|false|none|none|
|» userName|string¦null|false|none|none|
|» binaryPathName|string¦null|false|none|none|
|» dependentServices|string¦null|false|none|none|
|» canPauseAndContinue|boolean|false|none|none|
|» canShutdown|boolean|false|none|none|
|» canStop|boolean|false|none|none|
|» serviceType|[SbPAM.Models.Common.ServiceTypeFlags](../Models/sbpam.models.common.servicetypeflags.md)(int32)|false|none|none|
|» delayedStart|boolean|false|none|none|
|» nodeId|string(uuid)|false|none|none|
|» createdDateTimeUtc|string(date-time)|false|none|none|
|» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» discoveredDateTimeUtc|string(date-time)|false|none|none|
|» hostScanHostId|string(uuid)|false|none|none|
|» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»» id|string(uuid)|false|none|none|
|»» name|string¦null|false|none|none|
|»» dnsHostName|string¦null|false|none|none|
|»» ipAddress|string¦null|false|none|none|
|»» os|string¦null|false|none|none|
|»» version|string¦null|false|none|none|
|»» lsaLookupCache|string¦null|false|none|none|
|»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|none|
|»» hostId|string(uuid)¦null|false|none|none|
|»» credentialId|string(uuid)|false|none|none|
|»» platformId|string(uuid)¦null|false|none|none|
|»» lastScanTimeUtc|string(date-time)¦null|false|none|none|
|»» lastScanStartTimeUtc|string(date-time)|false|none|none|
|»» hostScanUser|[[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)]¦null|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» displayName|string¦null|false|none|none|
|»»» samaccountname|string¦null|false|none|none|
|»»» lastLogonTimestamp|string(date-time)¦null|false|none|none|
|»»» sid|string¦null|false|none|none|
|»»» passwordHash|string¦null|false|none|none|
|»»» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|none|
|»»» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|none|
|»»» unixId|integer(int32)¦null|false|none|none|
|»»» unixGroupId|integer(int32)¦null|false|none|none|
|»»» homeDirectory|string¦null|false|none|none|
|»»» shell|string¦null|false|none|none|
|»»» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|»»» discoveredDateTimeUtc|string(date-time)¦null|false|none|none|
|»»» userId|string(uuid)¦null|false|none|none|
|»»» hostScanHostId|string(uuid)¦null|false|none|none|
|»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|none|
|»»»» hostScanUserId|string(uuid)|false|none|none|
|»»»» hostScanUser|[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)|false|none|none|
|»»»» hostScanGroupId|string(uuid)|false|none|none|
|»»»» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» sid|string¦null|false|none|none|
|»»»»» unixId|integer(int32)¦null|false|none|none|
|»»»»» groupId|string(uuid)¦null|false|none|none|
|»»»»» hostScanHostId|string(uuid)|false|none|none|
|»»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»»»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|none|
|»»»»» hostScanGroupGroupJoin|[[SbPAM.Models.HostScanGroupGroupJoin](../Models/sbpam.models.hostscangroupgroupjoin.md)]¦null|false|none|none|
|»»»»»» hostScanGroupId|string(uuid)|false|none|none|
|»»»»»» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|none|
|»»»»»» hostScanGroupMemberId|string(uuid)|false|none|none|
|»»»»» resourceObjectId|string(uuid)¦null|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» resourceObjectId|string(uuid)¦null|false|none|none|
|»»» isDisabled|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» hostScanGroup|[[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)]¦null|false|none|none|
|»» hostScanFeature|[[SbPAM.Models.HostScanFeature](../Models/sbpam.models.hostscanfeature.md)]¦null|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» version|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostScanHostId|string(uuid)|false|none|none|
|»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»» hostObjectId|string(uuid)¦null|false|none|none|
|»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|none|
|»»» hostScanJobId|string(uuid)|false|none|none|
|»»» hostScanJob|[SbPAM.Models.HostScanJob](../Models/sbpam.models.hostscanjob.md)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»» createdByUserName|string¦null|false|none|none|
|»»»» createdFromAddress|string¦null|false|none|none|
|»»»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostScanHostId|string(uuid)|false|none|none|
|»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|none|
|»»» actionQueueId|string(uuid)¦null|false|none|none|
|»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» actionJobId|string(uuid)¦null|false|none|none|
|»»»» runUserId|string(uuid)¦null|false|none|none|
|»»»» timeCreated|string(date-time)|false|none|none|
|»»»» timeStarted|string(date-time)|false|none|none|
|»»»» timeFinished|string(date-time)|false|none|none|
|»»»» heartBeatDateTimeUtc|string(date-time)|false|none|none|
|»»»» status|any|false|none|none|
|»»»» statusDescription|string¦null|false|none|none|
|»»»» failureReason|any|false|none|none|
|»»»» actionGroupId|string(uuid)|false|none|none|
|»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» description|string¦null|false|none|none|
|»»»»» trigger|boolean|false|none|none|
|»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» actionTemplateId|string(uuid)|false|none|none|
|»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|none|
|»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» displayName|string¦null|false|none|none|
|»»»»»»» description|string¦null|false|none|none|
|»»»»»»» newActionDisplayName|string¦null|false|none|none|
|»»»»»»» icon|string¦null|false|none|none|
|»»»»»»» definition|string¦null|false|none|none|
|»»»»»»» userDefined|boolean|false|none|none|
|»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» displayName|string¦null|false|none|none|
|»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»» sortOrder|integer(int32)|false|none|none|
|»»»»»»»» required|boolean|false|none|none|
|»»»»»»»» type|any|false|none|none|
|»»»»»»»» multiline|boolean|false|none|none|
|»»»»»»»» defaultValue|string¦null|false|none|none|
|»»»»»»»» shouldSerialize_ValueSet|boolean|false|read-only|none|
|»»»»»»»» _ValueSet|string¦null|false|none|none|
|»»»»»»»» valueSet|[string]¦null|false|none|none|
|»»»»»»»» limitToValueSet|boolean|false|none|none|
|»»»»»»»» helperText|string¦null|false|none|none|
|»»»»»»»» actionTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|none|
|»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» value|string¦null|false|none|none|
|»»»»»»»» type|any|false|none|none|
|»»»»»»»» actionTemplateId|string(uuid)|false|none|none|
|»»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|none|
|»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» icon|string¦null|false|none|none|
|»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»»» timeoutOverride|integer(int32)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionTemplate|[[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)]¦null|false|none|none|
|»»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|none|
|»»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»» classification|any|false|none|none|
|»»»»»»» pairedActionTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»» pairedActionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|none|
|»»»»»» actionParameter|[[SbPAM.Models.ActionParameter](../Models/sbpam.models.actionparameter.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» value|string¦null|false|none|none|
|»»»»»»» actionTemplateParameterId|string(uuid)|false|none|none|
|»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|none|
|»»»»»»» actionId|string(uuid)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» continueOnFail|boolean|false|none|none|
|»»»»»» executionOrder|integer(int32)|false|none|none|
|»»»»»» executionPath|string¦null|false|none|none|
|»»»»»» timeout|integer(int32)¦null|false|none|none|
|»»»»»» displayName|string¦null|false|none|none|
|»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» actionQueueId|string(uuid)|false|none|none|
|»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»»»»»»» actionId|string(uuid)|false|none|none|
|»»»»»»» action|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|none|
|»»»»»»» status|any|false|none|none|
|»»»»»»» jobType|[SbPAM.Models.ActionJobType](../Models/sbpam.models.actionjobtype.md)(int32)|true|none|none|
|»»»»»»» statusDescription|string¦null|false|none|none|
|»»»»»»» result|string¦null|false|none|none|
|»»»»»»» results|string¦null|false|none|none|
|»»»»»»» actionQueueActionParameter|[[SbPAM.Models.ActionQueueActionParameter](../Models/sbpam.models.actionqueueactionparameter.md)]¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» value|string¦null|false|none|none|
|»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|none|
|»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|none|
|»»»»»»»» actionId|string(uuid)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionQueueActionId|string(uuid)|false|none|none|
|»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|none|
|»»»»»»» actionLog|[[SbPAM.Models.ActionLog](../Models/sbpam.models.actionlog.md)]¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» type|any|false|none|none|
|»»»»»»»» hResult|integer(int32)|false|none|none|
|»»»»»»»» timestamp|string(date-time)|false|none|none|
|»»»»»»»» message|string¦null|false|none|none|
|»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»» actionQueueActionId|string(uuid)|false|none|none|
|»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionServiceId|string(uuid)¦null|false|none|none|
|»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» added|string(date-time)|false|none|none|
|»»»»»»»» refreshToken|string¦null|false|none|none|
|»»»»»»»» appTokenId|string(uuid)¦null|false|none|none|
|»»»»»»»» appToken|[SbPAM.Models.AppToken](../Models/sbpam.models.apptoken.md)|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»» token|string¦null|false|none|none|
|»»»»»»»»» tokenSalt|string¦null|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» expirationDate|string(date-time)|false|none|none|
|»»»»»»»»» revoked|boolean|false|none|none|
|»»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» status|any|false|none|none|
|»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»» serviceRegistrationId|string(uuid)¦null|false|none|none|
|»»»»»»»» serviceRegistration|[SbPAM.Models.ServiceRegistration](../Models/sbpam.models.serviceregistration.md)|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»» dnsHostName|string¦null|false|none|none|
|»»»»»»»»» credentialId|string(uuid)¦null|false|none|none|
|»»»»»»»»» serviceName|string¦null|false|none|none|
|»»»»»»»»» settingsFilePath|string¦null|false|none|none|
|»»»»»»»»» settingsFileContents|string¦null|false|none|none|
|»»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»»» actionQueueId|string(uuid)¦null|false|none|none|
|»»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionServiceProperty|[[SbPAM.Models.ActionServiceProperty](../Models/sbpam.models.actionserviceproperty.md)]¦null|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» value|string¦null|false|none|none|
|»»»»»»»»» actionServiceId|string(uuid)|false|none|none|
|»»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|none|
|»»»»»»»» serviceNodeId|string(uuid)¦null|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» startTime|string(date-time)|false|none|none|
|»»»»»»» endTime|string(date-time)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» heartbeatUtc|string(date-time)|false|none|none|
|»»»»»»» complete|boolean|false|none|none|
|»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» classification|any|false|none|none|
|»»»»»» pairedActionId|string(uuid)¦null|false|none|none|
|»»»»»» pairedAction|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|none|
|»»»»»» isDeleted|boolean|false|none|none|
|»»»»»» isDefault|boolean|false|none|none|
|»»»»»» isUserModified|boolean|false|none|none|
|»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»»» jobId|string(uuid)|false|none|none|
|»»»»»» job|[SbPAM.Models.Job](../Models/sbpam.models.job.md)|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» actionQueue|[[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)]¦null|false|none|none|
|»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» hostConnected|boolean|false|none|none|
|»» netBiosName|string¦null|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» hostObjectId|string(uuid)¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|startType|Boot|
|startType|System|
|startType|Automatic|
|startType|Manual|
|startType|Disabled|
|serviceType|KernelDriver|
|serviceType|FileSystemDriver|
|serviceType|Adapter|
|serviceType|RecognizerDriver|
|serviceType|Win32OwnProcess|
|serviceType|Win32ShareProcess|
|serviceType|InteractiveProcess|
|privilege|NotSet|
|privilege|Administrator|
|privilege|PowerUser|
|privilege|Guest|
|privilege|User|
|privilege|SuperUser|
|privilege|LinuxUser|
|privilege|CiscoPrivilege_0|
|privilege|CiscoPrivilege_1|
|privilege|CiscoPrivilege_2|
|privilege|CiscoPrivilege_3|
|privilege|CiscoPrivilege_4|
|privilege|CiscoPrivilege_5|
|privilege|CiscoPrivilege_6|
|privilege|CiscoPrivilege_7|
|privilege|CiscoPrivilege_8|
|privilege|CiscoPrivilege_9|
|privilege|CiscoPrivilege_10|
|privilege|CiscoPrivilege_11|
|privilege|CiscoPrivilege_12|
|privilege|CiscoPrivilege_13|
|privilege|CiscoPrivilege_14|
|privilege|CiscoPrivilege_15|
|privilege|DomainAdmin|
|privilege|EnterpriseAdmin|
|jobType|None|
|jobType|Protection|
|jobType|PasswordRotation|
|jobType|PasswordVerification|
|jobType|HostScan|
|jobType|DomainSync|
|jobType|DomainSyncTest|
|jobType|ActivitySession|
|jobType|RemoteServiceRegistration|
|jobType|ServiceRotation|
|jobType|PasswordRollback|
|jobType|DomainOUMapping|
|jobType|ResourceConnectionTest|
|jobType|WinRmHttp|
|jobType|Report|
|type|ActionService|
|type|ProxyService|
|type|AgentService|
|type|EmailService|
|type|ServiceNode|
|type|SchedulerService|
|type|SiemService|
|type|ActiveDirectoryService|
|type|WebService|
|type|RagService|
|type|NginxService|
|type|Unknown|
|type|TestService|
|type|ActionService|
|type|ProxyService|
|type|AgentService|
|type|EmailService|
|type|ServiceNode|
|type|SchedulerService|
|type|SiemService|
|type|ActiveDirectoryService|
|type|WebService|
|type|RagService|
|type|NginxService|
|type|Unknown|
|type|TestService|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


