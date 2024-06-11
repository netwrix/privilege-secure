
## Get all credentials by type (Auth roles: Admin,App,UserPlus)

<a id="opIdGetByCredentialTypeAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Credential \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example

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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/Credential -Headers $Headers -ContentType "application/json"
```

`GET /api/v1/Credential`

This endpoint should be avoided. Use the Search endpoint instead.
            
The types are listed in enum order (starting at -1):
* Any = -1
* Configuration = 0 (Service accounts for resources)
* User = 1 (Users that are managed because they are created by activities)
* Service = 2 (Associated with a windows service / scheduled task on a given host)
* ActivityToken = 3  (A short term credential created to facilitate a single activity session)
* Application = 4 (Credential is associated with an application user)
* VaultUser = 5 (Credential is associated with an vault user)
* SshKeyCert = 6 (Credential is SSH key - private and public key)

<h3 id="get-all-credentials-by-type-(auth-roles:-admin,app,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|type|query|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)|false|One of: Any = -1, Configuration, User, Service, ActivityToken, Application, VaultUser, SshKeyCert|
|userName|query|string|false|Filter on this username (case-insensitive contains search)|
|includeDeleted|query|boolean|false|Include deleted credentials|

#### Enumerated Values

|Parameter|Value|
|---|---|
|type|Configuration|
|type|User|
|type|Service|
|type|ActivityToken|
|type|Application|
|type|VaultUser|
|type|SshKeyCert|
|type|Any|

> Example responses

> 200 Response

```json
[
  {
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
      {
        "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
        "credential": {},
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
        }
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
  }
]
```

<h3 id="get-all-credentials-by-type-(auth-roles:-admin,app,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-all-credentials-by-type-(auth-roles:-admin,app,userplus)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)]|false|none|[This model represents the stored credentials for a user.]|
|» id|string(uuid)|false|none|Unique id and DB key for this credential.|
|» domain|string¦null|false|none|Domain|
|» username|string¦null|false|none|Username|
|» password|string¦null|false|none|Password (encrypted while persisted).|
|» salt|string¦null|false|none|Some salt for the password encryption|
|» enablePassword|string¦null|false|none|Enable Password (encrypted while persisted).|
|» enableSalt|string¦null|false|none|Some salt for the enable password encryption|
|» name|string¦null|false|none|Name for this username password pair|
|» description|string¦null|false|none|Description for username password pair|
|» type|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)(int32)|false|none|none|
|» userId|string(uuid)¦null|false|none|Host User Id, if there is one|
|» managedAccountId|string(uuid)¦null|false|none|Host User Id, if there is one|
|» platformId|string(uuid)¦null|false|none|Platform identifier for these credentials<br>Use this to group credentials for a platform|
|» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»» id|string(uuid)|false|none|Unique identifier for this platform.|
|»» name|string¦null|false|none|Name for this platform.|
|»» description|string¦null|false|none|Description for this platform.|
|»» builtInAccount|string¦null|false|none|none|
|»» passwordComplexityPolicyId|string(uuid)¦null|false|none|none|
|»» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» lowerCase|boolean|false|none|none|
|»»» upperCase|boolean|false|none|none|
|»»» specialCharacter|boolean|false|none|none|
|»»» space|boolean|false|none|none|
|»»» numeric|boolean|false|none|none|
|»»» mustEndWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»» mustStartWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»» length|integer(int32)|false|none|none|
|»»» maxConsecutive|integer(int32)|false|none|none|
|»»» charsToExclude|string¦null|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» type|[SbPAM.Models.PasswordComplexityTypeEnum](../Models/sbpam.models.passwordcomplexitytypeenum.md)(int32)|false|none|none|
|»» scheduledChangePolicyId|string(uuid)¦null|false|none|none|
|»» scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» frequency|any|false|none|none|
|»»» periodValue|integer(int32)|false|none|none|
|»»» daysOfWeek|string¦null|false|none|none|
|»»» dayNumber|integer(int32)|false|none|none|
|»»» localTime|string(date-time)|false|none|none|
|»»» utcTime|string(date-time)¦null|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» protectionPolicyScheduleId|string(uuid)¦null|false|none|none|
|»» protectionPolicySchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»» scanScheduleId|string(uuid)¦null|false|none|none|
|»» scanSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»» verificationScheduleId|string(uuid)¦null|false|none|none|
|»» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|none|
|»» resetOnMismatch|boolean|false|none|none|
|»» icon|string(byte)¦null|false|none|none|
|»» basePlatformId|string(uuid)¦null|false|none|none|
|»» type|[SbPAM.Models.PlatformTypeEnum](../Models/sbpam.models.platformtypeenum.md)(int32)|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» sudoCommand|string¦null|false|none|Command to use for elevated commands on Linux, default "sudo".|
|» passwordVaultConnectorId|string(uuid)¦null|false|none|Id for password vault integration connector for these credentials<br>Use this to manage credentials for this user.|
|» passwordVaultConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»» id|string(uuid)|false|none|Unique identifier for this integration connector.|
|»» name|string¦null|false|none|Name for integration connector.|
|»» description|string¦null|false|none|Description for integration connector|
|»» connectorConfigurationId|string(uuid)|false|none|Configuration Id for integration connector|
|»» connectorTemplateId|string(uuid)|false|none|The template that this connector is based on.|
|»» monitorActionQueueId|string(uuid)¦null|false|none|Id of periodic action queue to execute, e.g. to fetch managed user list for a password vault.|
|»» monitorActionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»» id|string(uuid)|false|none|Unique id and DB key for this action queue.|
|»»» actionJobId|string(uuid)¦null|false|none|Action Job that created this ActionQueue|
|»»» runUserId|string(uuid)¦null|false|none|Id associated with the logged in user which created this action queue.|
|»»» timeCreated|string(date-time)|false|none|When this action queue was created.|
|»»» timeStarted|string(date-time)|false|none|When this action queue started execution.|
|»»» timeFinished|string(date-time)|false|none|When this action queue finished execution.|
|»»» heartBeatDateTimeUtc|string(date-time)|false|none|Heartbeat for this ActionQueue - this gets updated when an ActionQueueAction<br>associated with the Queue is updated.<br>If the Queue isn't updated frequently enough, the scheduler will<br>post a healthcheck for it|
|»»» status|any|false|none|none|
|»»» statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|»»» failureReason|any|false|none|none|
|»»» actionGroupId|string(uuid)|false|none|Id of action group associated with this action queue.|
|»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»» id|string(uuid)|false|none|Unique id and DB key for this action group.|
|»»»» name|string¦null|false|none|Human readable name for this action group.|
|»»»» description|string¦null|false|none|Human readable desciption for this action group.|
|»»»» trigger|boolean|false|none|Not used???|
|»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|When this action group was created.|
|»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|When this action group was last modified.|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions associated with this action group.|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»» actionTemplateId|string(uuid)|false|none|Id of template for this action.|
|»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this template.|
|»»»»»» displayName|string¦null|false|none|Name for this template.|
|»»»»»» description|string¦null|false|none|Human readable description of this template.|
|»»»»»» newActionDisplayName|string¦null|false|none|Optional alternative to DisplayName for populating new actions's .DisplayName<br>properties. This is also a template. It can include bracketed parameter names<br>to insert parameter vales (e.g., "Add User to '{GroupToUpdate}' Group").|
|»»»»»» icon|string¦null|false|none|Icon for this template.|
|»»»»»» definition|string¦null|false|none|Human readable definition of this template.|
|»»»»»» userDefined|boolean|false|none|True if created by a user???|
|»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|List of parameters defined for this template.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»» name|string¦null|false|none|Name for this parameter.|
|»»»»»»» displayName|string¦null|false|none|Long name for this parameter.|
|»»»»»»» description|string¦null|false|none|Human readable description for this parameter.|
|»»»»»»» sortOrder|integer(int32)|false|none|The order these will appear in lists and reports|
|»»»»»»» required|boolean|false|none|True if parameter is required.|
|»»»»»»» type|any|false|none|none|
|»»»»»»» multiline|boolean|false|none|Tell UI to make this multiline|
|»»»»»»» defaultValue|string¦null|false|none|Default value.|
|»»»»»»» shouldSerialize_ValueSet|boolean|false|read-only|Allowed values (if restricted).|
|»»»»»»» _ValueSet|string¦null|false|none|none|
|»»»»»»» valueSet|[string]¦null|false|none|none|
|»»»»»»» limitToValueSet|boolean|false|none|If true (default) and .ValueSet is given then the user may not enter something off that list|
|»»»»»»» helperText|string¦null|false|none|none|
|»»»»»»» actionTemplateId|string(uuid)¦null|false|none|Id of action template which contains this parameter.|
|»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions derived from this template.|
|»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|List of action template demands derived from this template.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this demand template.|
|»»»»»»» name|string¦null|false|none|Name of this demand template.|
|»»»»»»» value|string¦null|false|none|Value of this demand template.|
|»»»»»»» type|any|false|none|none|
|»»»»»»» actionTemplateId|string(uuid)|false|none|Id of action template used to associate an action with this demand template.|
|»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» icon|string¦null|false|none|none|
|»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»» timeoutOverride|integer(int32)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» actionTemplate|[[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)]¦null|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|[This model represents a template for a parameter associated with an action group action.]|
|»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|This model represents a demand template that is used to find an action service<br>    that can process a particular type of action.  This is done by searching for<br>    this demand template using the template id associated with the action and<br>    then matching this demand template's name and value against a property associated<br>    with a registered action service.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» actionPackId|string(uuid)¦null|false|none|Id of action pack which contains this template|
|»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»» classification|any|false|none|none|
|»»»»»» pairedActionTemplateId|string(uuid)¦null|false|none|Reference to another template representing the end to this start or start to this end action|
|»»»»»» pairedActionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» actionGroupId|string(uuid)|false|none|Id for action group that this action belongs to.|
|»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»» actionParameter|[[SbPAM.Models.ActionParameter](../Models/sbpam.models.actionparameter.md)]¦null|false|none|Parameters associated with this action.|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» continueOnFail|boolean|false|none|If true then next action in action group will be executed<br>    even if this action fails.|
|»»»»» executionOrder|integer(int32)|false|none|This determines the order of execution of the actions<br>    in this action group.  Lowest value first.|
|»»»»» executionPath|string¦null|false|none|none|
|»»»»» timeout|integer(int32)¦null|false|none|This defines a timeout for the action, in seconds,<br>    after which it will be failed if it hasn't completed.|
|»»»»» displayName|string¦null|false|none|Human readable description of this action.|
|»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|Current action queues which refer to this action, if any.|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»»» actionQueueId|string(uuid)|false|none|Id of action queue which contains this action.|
|»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»» actionId|string(uuid)|false|none|Id of action group action which was used to create this action queue action.|
|»»»»»» action|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»»» status|any|false|none|none|
|»»»»»» jobType|[SbPAM.Models.ActionJobType](../Models/sbpam.models.actionjobtype.md)(int32)|true|none|none|
|»»»»»» statusDescription|string¦null|false|none|Human readable description of the action status.|
|»»»»»» result|string¦null|false|none|Json result.|
|»»»»»» results|string¦null|false|none|Json results from previous steps.|
|»»»»»» actionQueueActionParameter|[[SbPAM.Models.ActionQueueActionParameter](../Models/sbpam.models.actionqueueactionparameter.md)]¦null|false|none|Dynamic parameters associated with this action.<br>Note: These may override the static parameters saved with the action group action.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action to which this parameter belongs.|
|»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»» actionLog|[[SbPAM.Models.ActionLog](../Models/sbpam.models.actionlog.md)]¦null|false|none|Log entries associated with the execution of this action queue action.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action log entry.|
|»»»»»»» type|any|false|none|none|
|»»»»»»» hResult|integer(int32)|false|none|Internal reason for action failure if available.|
|»»»»»»» timestamp|string(date-time)|false|none|When this log entry was created.|
|»»»»»»» message|string¦null|false|none|Human readable message associate with this log entry.|
|»»»»»»» version|string¦null|false|none|Current version captured in the log.|
|»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action associated with this log entry.|
|»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» actionServiceId|string(uuid)¦null|false|none|Id of action service which was selected to execute this action.|
|»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service.|
|»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»» name|string¦null|false|none|Host name for this service.|
|»»»»»»» added|string(date-time)|false|none|When this service was registered.|
|»»»»»»» refreshToken|string¦null|false|none|Refresh token to the service (encrypted)|
|»»»»»»» appTokenId|string(uuid)¦null|false|none|Id of App token assigned to this service.|
|»»»»»»» appToken|[SbPAM.Models.AppToken](../Models/sbpam.models.apptoken.md)|false|none|This model represents a token that can be used by a service for authorization.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this token.|
|»»»»»»»» name|string¦null|false|none|Name for this token.|
|»»»»»»»» description|string¦null|false|none|Human readable description of this token.|
|»»»»»»»» token|string¦null|false|none|Encrypted JWT Authorization BEARER token.|
|»»»»»»»» tokenSalt|string¦null|false|none|Salt for token encryption.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this token was created.|
|»»»»»»»» expirationDate|string(date-time)|false|none|Expiration date/time for this token.|
|»»»»»»»» revoked|boolean|false|none|True if this token has been revoked.|
|»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this token.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» status|any|false|none|none|
|»»»»»»» description|string¦null|false|none|Human readable description of service status.|
|»»»»»»» version|string¦null|false|none|Version number reported by the service.|
|»»»»»»» serviceRegistrationId|string(uuid)¦null|false|none|Id of service registration associated with this service.|
|»»»»»»» serviceRegistration|[SbPAM.Models.ServiceRegistration](../Models/sbpam.models.serviceregistration.md)|false|none|This model represents a registration for a remote service.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service registration.|
|»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»» dnsHostName|string¦null|false|none|Host name for this service registration.|
|»»»»»»»» credentialId|string(uuid)¦null|false|none|Id of credentials for host.|
|»»»»»»»» serviceName|string¦null|false|none|Service name for this service registration.|
|»»»»»»»» settingsFilePath|string¦null|false|none|Settings file path for this service registration.|
|»»»»»»»» settingsFileContents|string¦null|false|none|Settings file contents for this service registration.|
|»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this registration.|
|»»»»»»»» actionQueueId|string(uuid)¦null|false|none|Id of action queue which registers this service.|
|»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionServiceProperty|[[SbPAM.Models.ActionServiceProperty](../Models/sbpam.models.actionserviceproperty.md)]¦null|false|none|A list of properties associated with this service.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this property.|
|»»»»»»»» name|string¦null|false|none|Name of this property.|
|»»»»»»»» value|string¦null|false|none|Value of this property.|
|»»»»»»»» actionServiceId|string(uuid)|false|none|Id of action service which owns this property.|
|»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|A list of action queue actions currently active on this service if this is an action service.|
|»»»»»»» serviceNodeId|string(uuid)¦null|false|none|Id of the node this service is running from|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» startTime|string(date-time)|false|none|When the job started|
|»»»»»» endTime|string(date-time)|false|none|When the job finished|
|»»»»»» nodeId|string(uuid)|false|none|The action service node id|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|When the job was created|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When the job was modified|
|»»»»»» heartbeatUtc|string(date-time)|false|none|Heartbeat is used by the scheduler service to determine if a action job has stalled etc.|
|»»»»»» complete|boolean|false|none|Complete is set true when the action step has completed successfully or continue on failure|
|»»»»» createdBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|When this action was created.|
|»»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When this action was last modified.|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» classification|any|false|none|none|
|»»»»» pairedActionId|string(uuid)¦null|false|none|Reference to another action representing the end to this start or start to this end action|
|»»»»» pairedAction|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»» isDeleted|boolean|false|none|none|
|»»»»» isDefault|boolean|false|none|none|
|»»»»» isUserModified|boolean|false|none|none|
|»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|Current action group jobs which refer to this action group, if any.<br>Note: Is this obsolete???|
|»»»»» id|string(uuid)|false|none|none|
|»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»» jobId|string(uuid)|false|none|none|
|»»»»» job|[SbPAM.Models.Job](../Models/sbpam.models.job.md)|false|none|none|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» actionQueue|[[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)]¦null|false|none|Current action queues which refer to this action group, if any.|
|»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|List of action queue action associate with this action queue.|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» configuration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»» id|string(uuid)|false|none|Unique identifier for available connector.|
|»»» name|string¦null|false|none|Name for configuration type of connector.|
|»»» integrationConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»» integrationConnectorTemplate|[SbPAM.Models.IntegrationConnectorTemplate](../Models/sbpam.models.integrationconnectortemplate.md)|false|none|none|
|»»»» id|string(uuid)|false|none|Unique identifier for this integration connector.|
|»»»» name|string¦null|false|none|Name for integration connector, this corresponds to the "type" of the connector|
|»»»» description|string¦null|false|none|Description for integration connector template.|
|»»»» type|[SbPAM.Models.IntegrationConnectorType](../Models/sbpam.models.integrationconnectortype.md)(int32)|false|none|none|
|»»»» configurationId|string(uuid)|false|none|Configuration Id for integration connector template.<br>The configuration of a template provide defaults for a new instance of a connector.|
|»»»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|List of available connector settings|
|»»»»» id|string(uuid)|false|none|Unique identifier for connector configuration values.|
|»»»»» configurationId|string(uuid)|false|none|Unique identifier of connector configuration set.|
|»»»»» name|string¦null|false|none|Name of configuration value.|
|»»»»» value|string¦null|false|none|Set value for configuration.|
|»»»»» defaultValue|string¦null|false|none|Default value for configuration.|
|»»»»» description|string¦null|false|none|Description for configuration set.|
|»»»»» displayOrder|integer(int32)|false|none|Numerical order display of configuration set for use in UI.|
|»»»»» required|boolean|false|none|Determines whether a configuration value is required or optional.|
|»»»»» connectorId|string(uuid)¦null|false|none|Unique identifier of integration connector|
|»»»»» integrationConnectorTemplateId|string(uuid)¦null|false|none|Unique identifier of integration connector|
|»»»»» connectorConfiguration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»»» type|[SbPAM.Models.ConnectorConfigurationValueType](../Models/sbpam.models.connectorconfigurationvaluetype.md)(int32)|false|none|none|
|»»»»» advanced|boolean|false|none|Advanced setting|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|Settings for this connector|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» passwordVaultInfo|string¦null|false|none|Extra info needed for password vault integration.|
|» changeOnCheckout|boolean¦null|false|none|Settings for managed users on checkout change|
|» changeOnRelease|boolean¦null|false|none|Settings for managed users on release change|
|» showPassword|boolean|false|none|none|
|» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between credentials and credential groups.|
|»» credentialId|string(uuid)|false|none|Id of credential.|
|»» credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»» credentialGroupId|string(uuid)|false|none|Id of credential group.|
|»» credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between credentials and credential groups.|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» isDeleted|boolean|false|none|Credentials are marked as deleted when the owning user is removed|
|» nodeId|string(uuid)|false|none|none|
|» createdDateTimeUtc|string(date-time)|false|none|none|
|» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» authenticationMethod|[SbPAM.Models.AuthenticationMethodType](../Models/sbpam.models.authenticationmethodtype.md)(int32)|false|none|none|
|» keyGenAlgorithm|string¦null|false|none|none|
|» keyLength|integer(int32)¦null|false|none|none|
|» autoGenPassphrase|boolean¦null|false|none|none|
|» passphrase|string¦null|false|none|none|
|» privateKey|string¦null|false|none|none|
|» publicKey|string¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|Configuration|
|type|User|
|type|Service|
|type|ActivityToken|
|type|Application|
|type|VaultUser|
|type|SshKeyCert|
|type|Any|
|mustEndWith|None|
|mustEndWith|Lowercase|
|mustEndWith|Uppercase|
|mustEndWith|Numeric|
|mustEndWith|Symbol|
|mustEndWith|Space|
|mustStartWith|None|
|mustStartWith|Lowercase|
|mustStartWith|Uppercase|
|mustStartWith|Numeric|
|mustStartWith|Symbol|
|mustStartWith|Space|
|type|Password|
|type|Samaccountname|
|type|Unspecified|
|type|Cloud|
|type|Database|
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
|type|GenericConnector|
|type|StealthAUDITConnector|
|type|PasswordVaultConnector|
|type|Uri|
|type|HostName|
|type|Token|
|type|Credential|
|type|User|
|type|Resource|
|type|String|
|type|Int32|
|type|Int64|
|type|Boolean|
|type|Options|
|type|Password|
|type|PowerShell|
|authenticationMethod|Password|
|authenticationMethod|SshCertificate|
|authenticationMethod|SshCertificateAndPassword|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


