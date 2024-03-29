
## Add multiple users to a group (Auth roles: Admin,App)

<a id="opIdPutJoinMultipleForGroupAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/HostScanJob/User/Multiple/Group/{groupId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
"@

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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/HostScanJob/User/Multiple/Group/{groupId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/HostScanJob/User/Multiple/Group/{groupId}`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="add-multiple-users-to-a-group-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|groupId|path|string(uuid)|true|Group to add users to|
|body|body|array[string]|false|List of user Ids|

> Example responses

> 200 Response

```json
[
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
          {
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
    "hostScanGroup": {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "sid": "string",
      "unixId": 0,
      "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
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
              {}
            ],
            "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
            "isDisabled": true,
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          }
        ],
        "hostScanGroup": [
          {}
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
]
```

<h3 id="add-multiple-users-to-a-group-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="add-multiple-users-to-a-group-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]|false|none|[This model is used to model the many to many relationship between host scan job users and groups.]|
|» hostScanUserId|string(uuid)|false|none|Id of host scan user.|
|» hostScanUser|[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)|false|none|This model is used to store user information from a host scan.|
|»» id|string(uuid)|false|none|Unique id and DB key for this user.|
|»» name|string¦null|false|none|Short name|
|»» displayName|string¦null|false|none|Long name for this user.|
|»» samaccountname|string¦null|false|none|SAM account name of user e.g. Domain\Username.|
|»» lastLogonTimestamp|string(date-time)¦null|false|none|When this user last logged in.|
|»» sid|string¦null|false|none|Windows Security ID for user|
|»» passwordHash|string¦null|false|none|Hash of password from linux /etc/shadow|
|»» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|Time we last changed password.|
|»» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|When does password expire?|
|»» unixId|integer(int32)¦null|false|none|Unix id if this is a user on a Unix host.|
|»» unixGroupId|integer(int32)¦null|false|none|Unix group id if this is a user on a Unix host.|
|»» homeDirectory|string¦null|false|none|Home directory for user if this is a user on a Unix host.|
|»» shell|string¦null|false|none|Shell for user if this is a user on a Unix host.|
|»» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|»» discoveredDateTimeUtc|string(date-time)¦null|false|none|Date time this user was last discovered.|
|»» userId|string(uuid)¦null|false|none|Id of user created/updated by this scan.|
|»» hostScanHostId|string(uuid)¦null|false|none|Id of host scan host to which this user belongs.<br>Note: Not set for domain users.|
|»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»» id|string(uuid)|false|none|Unique id and DB key for this host.|
|»»» name|string¦null|false|none|name of host.|
|»»» dnsHostName|string¦null|false|none|DNS hostname.|
|»»» ipAddress|string¦null|false|none|IP address of host.|
|»»» os|string¦null|false|none|Name of OS on host.|
|»»» version|string¦null|false|none|Version of OS on host.|
|»»» lsaLookupCache|string¦null|false|none|Most recent LsaLookupCacheMaxSize|
|»»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|Date/time of last system update.|
|»»» hostId|string(uuid)¦null|false|none|Id of host created/updated by this scan.|
|»»» credentialId|string(uuid)|false|none|Id of credentials for host.|
|»»» platformId|string(uuid)¦null|false|none|Id of platform for host.|
|»»» lastScanTimeUtc|string(date-time)¦null|false|none|Date time the host scan completed for the host.|
|»»» lastScanStartTimeUtc|string(date-time)|false|none|Date time the last host scan was started for the host.|
|»»» hostScanUser|[[SbPAM.Models.HostScanUser](../Models/sbpam.models.hostscanuser.md)]¦null|false|none|Users which belong to this host.|
|»»» hostScanGroup|[[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)]¦null|false|none|Groups which belong to this host.|
|»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»» name|string¦null|false|none|Name of this group|
|»»»» sid|string¦null|false|none|Windows Security ID for group|
|»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a group on a Unix host.|
|»»»» groupId|string(uuid)¦null|false|none|Id of group created/updated by this scan.|
|»»»» hostScanHostId|string(uuid)|false|none|Id of host scan host to which this group belongs.|
|»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|Users which are in this group via join table.|
|»»»» hostScanGroupGroupJoin|[[SbPAM.Models.HostScanGroupGroupJoin](../Models/sbpam.models.hostscangroupgroupjoin.md)]¦null|false|none|Groups which this group is a member of via join table.<br>Domain groups in local groups only.|
|»»»»» hostScanGroupId|string(uuid)|false|none|Id of the parent group|
|»»»»» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|This model is used to store group information from a host scan.|
|»»»»» hostScanGroupMemberId|string(uuid)|false|none|Id of the member ActiveDirectoryGroup|
|»»»» resourceObjectId|string(uuid)¦null|false|none|Unique object Id in resource context.|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostScanFeature|[[SbPAM.Models.HostScanFeature](../Models/sbpam.models.hostscanfeature.md)]¦null|false|none|Features which are installed on this host.|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» version|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostScanHostId|string(uuid)|false|none|Id of host scan host on which this feature is installed.|
|»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»» hostObjectId|string(uuid)¦null|false|none|Id of feature created/updated by this scanned feature.|
|»»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|Jobs which reference this host via join table.|
|»»»» hostScanJobId|string(uuid)|false|none|Id of host scan job.|
|»»»» hostScanJob|[SbPAM.Models.HostScanJob](../Models/sbpam.models.hostscanjob.md)|false|none|This model represent a job to scan a collection of hosts to obtain os type and version info.|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this job.|
|»»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this job.|
|»»»»» createdByUserName|string¦null|false|none|Name of user that created this job.|
|»»»»» createdFromAddress|string¦null|false|none|IP address of user that created this job.|
|»»»»» hostScanJobHostJoin|[[SbPAM.Models.HostScanJobHostJoin](../Models/sbpam.models.hostscanjobhostjoin.md)]¦null|false|none|Host(s) scanned by this job via join table.|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» hostScanHostId|string(uuid)|false|none|Id of host scan host.|
|»»»» hostScanHost|[SbPAM.Models.HostScanHost](../Models/sbpam.models.hostscanhost.md)|false|none|This model is used to scan a host to obtain os type and version info.|
|»»»» actionQueueId|string(uuid)¦null|false|none|Id of action queue to execute to scan this host.|
|»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this action queue.|
|»»»»» actionJobId|string(uuid)¦null|false|none|Action Job that created this ActionQueue|
|»»»»» runUserId|string(uuid)¦null|false|none|Id associated with the logged in user which created this action queue.|
|»»»»» timeCreated|string(date-time)|false|none|When this action queue was created.|
|»»»»» timeStarted|string(date-time)|false|none|When this action queue started execution.|
|»»»»» timeFinished|string(date-time)|false|none|When this action queue finished execution.|
|»»»»» heartBeatDateTimeUtc|string(date-time)|false|none|Heartbeat for this ActionQueue - this gets updated when an ActionQueueAction<br>associated with the Queue is updated.<br>If the Queue isn't updated frequently enough, the scheduler will<br>post a healthcheck for it|
|»»»»» status|any|false|none|none|
|»»»»» statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|»»»»» failureReason|any|false|none|none|
|»»»»» actionGroupId|string(uuid)|false|none|Id of action group associated with this action queue.|
|»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action group.|
|»»»»»» name|string¦null|false|none|Human readable name for this action group.|
|»»»»»» description|string¦null|false|none|Human readable desciption for this action group.|
|»»»»»» trigger|boolean|false|none|Not used???|
|»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this action group was created.|
|»»»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When this action group was last modified.|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions associated with this action group.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»»»» actionTemplateId|string(uuid)|false|none|Id of template for this action.|
|»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this template.|
|»»»»»»»» displayName|string¦null|false|none|Name for this template.|
|»»»»»»»» description|string¦null|false|none|Human readable description of this template.|
|»»»»»»»» newActionDisplayName|string¦null|false|none|Optional alternative to DisplayName for populating new actions's .DisplayName<br>properties. This is also a template. It can include bracketed parameter names<br>to insert parameter vales (e.g., "Add User to '{GroupToUpdate}' Group").|
|»»»»»»»» icon|string¦null|false|none|Icon for this template.|
|»»»»»»»» definition|string¦null|false|none|Human readable definition of this template.|
|»»»»»»»» userDefined|boolean|false|none|True if created by a user???|
|»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|List of parameters defined for this template.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»»» name|string¦null|false|none|Name for this parameter.|
|»»»»»»»»» displayName|string¦null|false|none|Long name for this parameter.|
|»»»»»»»»» description|string¦null|false|none|Human readable description for this parameter.|
|»»»»»»»»» sortOrder|integer(int32)|false|none|The order these will appear in lists and reports|
|»»»»»»»»» required|boolean|false|none|True if parameter is required.|
|»»»»»»»»» type|any|false|none|none|
|»»»»»»»»» multiline|boolean|false|none|Tell UI to make this multiline|
|»»»»»»»»» defaultValue|string¦null|false|none|Default value.|
|»»»»»»»»» shouldSerialize_ValueSet|boolean|false|read-only|Allowed values (if restricted).|
|»»»»»»»»» _ValueSet|string¦null|false|none|none|
|»»»»»»»»» valueSet|[string]¦null|false|none|none|
|»»»»»»»»» limitToValueSet|boolean|false|none|If true (default) and .ValueSet is given then the user may not enter something off that list|
|»»»»»»»»» helperText|string¦null|false|none|none|
|»»»»»»»»» actionTemplateId|string(uuid)¦null|false|none|Id of action template which contains this parameter.|
|»»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions derived from this template.|
|»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|List of action template demands derived from this template.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this demand template.|
|»»»»»»»»» name|string¦null|false|none|Name of this demand template.|
|»»»»»»»»» value|string¦null|false|none|Value of this demand template.|
|»»»»»»»»» type|any|false|none|none|
|»»»»»»»»» actionTemplateId|string(uuid)|false|none|Id of action template used to associate an action with this demand template.|
|»»»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» icon|string¦null|false|none|none|
|»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»»»» timeoutOverride|integer(int32)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» actionTemplate|[[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)]¦null|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|[This model represents a template for a parameter associated with an action group action.]|
|»»»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|This model represents a demand template that is used to find an action service<br>    that can process a particular type of action.  This is done by searching for<br>    this demand template using the template id associated with the action and<br>    then matching this demand template's name and value against a property associated<br>    with a registered action service.|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionPackId|string(uuid)¦null|false|none|Id of action pack which contains this template|
|»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»» classification|any|false|none|none|
|»»»»»»»» pairedActionTemplateId|string(uuid)¦null|false|none|Reference to another template representing the end to this start or start to this end action|
|»»»»»»»» pairedActionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionGroupId|string(uuid)|false|none|Id for action group that this action belongs to.|
|»»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»»» actionParameter|[[SbPAM.Models.ActionParameter](../Models/sbpam.models.actionparameter.md)]¦null|false|none|Parameters associated with this action.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» continueOnFail|boolean|false|none|If true then next action in action group will be executed<br>    even if this action fails.|
|»»»»»»» executionOrder|integer(int32)|false|none|This determines the order of execution of the actions<br>    in this action group.  Lowest value first.|
|»»»»»»» executionPath|string¦null|false|none|none|
|»»»»»»» timeout|integer(int32)¦null|false|none|This defines a timeout for the action, in seconds,<br>    after which it will be failed if it hasn't completed.|
|»»»»»»» displayName|string¦null|false|none|Human readable description of this action.|
|»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|Current action queues which refer to this action, if any.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»»»»» actionQueueId|string(uuid)|false|none|Id of action queue which contains this action.|
|»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»»»» actionId|string(uuid)|false|none|Id of action group action which was used to create this action queue action.|
|»»»»»»»» action|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»»»»» status|any|false|none|none|
|»»»»»»»» jobType|[SbPAM.Models.ActionJobType](../Models/sbpam.models.actionjobtype.md)(int32)|true|none|none|
|»»»»»»»» statusDescription|string¦null|false|none|Human readable description of the action status.|
|»»»»»»»» result|string¦null|false|none|Json result.|
|»»»»»»»» results|string¦null|false|none|Json results from previous steps.|
|»»»»»»»» actionQueueActionParameter|[[SbPAM.Models.ActionQueueActionParameter](../Models/sbpam.models.actionqueueactionparameter.md)]¦null|false|none|Dynamic parameters associated with this action.<br>Note: These may override the static parameters saved with the action group action.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action to which this parameter belongs.|
|»»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»»»» actionLog|[[SbPAM.Models.ActionLog](../Models/sbpam.models.actionlog.md)]¦null|false|none|Log entries associated with the execution of this action queue action.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action log entry.|
|»»»»»»»»» type|any|false|none|none|
|»»»»»»»»» hResult|integer(int32)|false|none|Internal reason for action failure if available.|
|»»»»»»»»» timestamp|string(date-time)|false|none|When this log entry was created.|
|»»»»»»»»» message|string¦null|false|none|Human readable message associate with this log entry.|
|»»»»»»»»» version|string¦null|false|none|Current version captured in the log.|
|»»»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action associated with this log entry.|
|»»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionServiceId|string(uuid)¦null|false|none|Id of action service which was selected to execute this action.|
|»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service.|
|»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|Host name for this service.|
|»»»»»»»»» added|string(date-time)|false|none|When this service was registered.|
|»»»»»»»»» refreshToken|string¦null|false|none|Refresh token to the service (encrypted)|
|»»»»»»»»» appTokenId|string(uuid)¦null|false|none|Id of App token assigned to this service.|
|»»»»»»»»» appToken|[SbPAM.Models.AppToken](../Models/sbpam.models.apptoken.md)|false|none|This model represents a token that can be used by a service for authorization.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this token.|
|»»»»»»»»»» name|string¦null|false|none|Name for this token.|
|»»»»»»»»»» description|string¦null|false|none|Human readable description of this token.|
|»»»»»»»»»» token|string¦null|false|none|Encrypted JWT Authorization BEARER token.|
|»»»»»»»»»» tokenSalt|string¦null|false|none|Salt for token encryption.|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this token was created.|
|»»»»»»»»»» expirationDate|string(date-time)|false|none|Expiration date/time for this token.|
|»»»»»»»»»» revoked|boolean|false|none|True if this token has been revoked.|
|»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this token.|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» status|any|false|none|none|
|»»»»»»»»» description|string¦null|false|none|Human readable description of service status.|
|»»»»»»»»» version|string¦null|false|none|Version number reported by the service.|
|»»»»»»»»» serviceRegistrationId|string(uuid)¦null|false|none|Id of service registration associated with this service.|
|»»»»»»»»» serviceRegistration|[SbPAM.Models.ServiceRegistration](../Models/sbpam.models.serviceregistration.md)|false|none|This model represents a registration for a remote service.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service registration.|
|»»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»»» dnsHostName|string¦null|false|none|Host name for this service registration.|
|»»»»»»»»»» credentialId|string(uuid)¦null|false|none|Id of credentials for host.|
|»»»»»»»»»» serviceName|string¦null|false|none|Service name for this service registration.|
|»»»»»»»»»» settingsFilePath|string¦null|false|none|Settings file path for this service registration.|
|»»»»»»»»»» settingsFileContents|string¦null|false|none|Settings file contents for this service registration.|
|»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this registration.|
|»»»»»»»»»» actionQueueId|string(uuid)¦null|false|none|Id of action queue which registers this service.|
|»»»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionServiceProperty|[[SbPAM.Models.ActionServiceProperty](../Models/sbpam.models.actionserviceproperty.md)]¦null|false|none|A list of properties associated with this service.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this property.|
|»»»»»»»»»» name|string¦null|false|none|Name of this property.|
|»»»»»»»»»» value|string¦null|false|none|Value of this property.|
|»»»»»»»»»» actionServiceId|string(uuid)|false|none|Id of action service which owns this property.|
|»»»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|A list of action queue actions currently active on this service if this is an action service.|
|»»»»»»»»» serviceNodeId|string(uuid)¦null|false|none|Id of the node this service is running from|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» startTime|string(date-time)|false|none|When the job started|
|»»»»»»»» endTime|string(date-time)|false|none|When the job finished|
|»»»»»»»» nodeId|string(uuid)|false|none|The action service node id|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When the job was created|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When the job was modified|
|»»»»»»»» heartbeatUtc|string(date-time)|false|none|Heartbeat is used by the scheduler service to determine if a action job has stalled etc.|
|»»»»»»»» complete|boolean|false|none|Complete is set true when the action step has completed successfully or continue on failure|
|»»»»»»» createdBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this action was created.|
|»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When this action was last modified.|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» classification|any|false|none|none|
|»»»»»»» pairedActionId|string(uuid)¦null|false|none|Reference to another action representing the end to this start or start to this end action|
|»»»»»»» pairedAction|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|Current action group jobs which refer to this action group, if any.<br>Note: Is this obsolete???|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»»»» jobId|string(uuid)|false|none|none|
|»»»»»»» job|[SbPAM.Models.Job](../Models/sbpam.models.job.md)|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» actionQueue|[[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)]¦null|false|none|Current action queues which refer to this action group, if any.|
|»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|List of action queue action associate with this action queue.|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostConnected|boolean|false|none|True if the host was connected to during the last scan|
|»»» netBiosName|string¦null|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» hostScanUserGroupJoin|[[SbPAM.Models.HostScanUserGroupJoin](../Models/sbpam.models.hostscanusergroupjoin.md)]¦null|false|none|Groups to which this user belongs via join table.|
|»» resourceObjectId|string(uuid)¦null|false|none|Unique object Id in resource context.|
|»» isDisabled|boolean|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» hostScanGroupId|string(uuid)|false|none|Id of host scan group.|
|» hostScanGroup|[SbPAM.Models.HostScanGroup](../Models/sbpam.models.hostscangroup.md)|false|none|This model is used to store group information from a host scan.|

#### Enumerated Values

|Property|Value|
|---|---|
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


