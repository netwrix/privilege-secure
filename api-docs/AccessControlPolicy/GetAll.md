
## Retrieve all access policies. (Auth roles: Admin,App)

<a id="opIdGetAll"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example

$Login = @{
    Login = "User"
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy -Headers $Headers
```

`GET /api/v1/AccessControlPolicy`

<h3 id="retrieve-all-access-policies.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|isDeleted|query|boolean|false|If true only returns deleted policies|
|isDisabled|query|boolean|false|If true only returns disable policies|
|ignoreStatus|query|boolean|false|If true return all policies, ignoring deleted/disabled status|

> Example responses

> 200 Response

```
[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","priority":0,"notesRequired":true,"ticketRequired":true,"approvalTypeRequired":"Deny","policyType":"Resource","managedAccountIds":["497f6eca-6276-4993-bfeb-53cbbbba6f08"],"managedAccountGroupIds":["497f6eca-6276-4993-bfeb-53cbbbba6f08"],"managedResourceIds":["497f6eca-6276-4993-bfeb-53cbbbba6f08"],"managedResourceGroupIds":["497f6eca-6276-4993-bfeb-53cbbbba6f08"],"credentialIds":["497f6eca-6276-4993-bfeb-53cbbbba6f08"],"activityIds":["497f6eca-6276-4993-bfeb-53cbbbba6f08"],"activities":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","name":"string","description":"string","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","activityConfiguration":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","type":"Generic","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","activityConfigurationSettings":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","key":"string","value":"string","type":"String","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}]},"platformId":"32a6e381-64f4-4911-86b6-3bf681b64d23","platform":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","builtInAccount":"string","passwordComplexityPolicyId":"2cd7b527-e70e-43d9-9b74-c73f64a0573e","passwordComplexityPolicy":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","lowerCase":true,"upperCase":true,"specialCharacter":true,"space":true,"numeric":true,"mustEndWith":"None","mustStartWith":"None","length":0,"maxConsecutive":0,"charsToExclude":"string","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","type":"Password"},"scheduledChangePolicyId":"17df2cc9-77aa-486d-b2c3-eb63a3689174","scheduledChangePolicy":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"protectionPolicyScheduleId":"fb8b7dbf-b4af-4812-a27d-fdffc3b2498b","protectionPolicySchedule":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"scanScheduleId":"0eb70c50-8dc6-4087-9b2a-b6a2adebf24d","scanSchedule":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"verificationScheduleId":"cdcc8131-6845-4416-8986-86fd1614fd92","verificationSchedule":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"resetOnMismatch":true,"icon":"string","basePlatformId":"01dea6be-a8fe-4b3c-9c51-3efd6a2732fb","type":"Unspecified","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"startActionGroupId":"fe816897-035e-41a8-b765-786a26e1fd7e","duringActionGroupId":"42ac0cdb-f5d6-410c-aef7-524cbda8a405","endActionGroupId":"129c4b86-8e07-4184-83ec-2719a1a163e2","activityType":"Interactive","loginAccount":"Requester","loginAccountNameFormat":"string","requesterLoginFormat":"Samaccountname","applicationToLaunch":"string","preferredRDSHostId":"14c3f91d-da41-4a85-9329-5b28802d466f","connectCredentialId":"28819070-8040-4b05-9bbf-5d58cd54636a","createAccount":true,"activityGroupActivities":[{"activityId":"bdfd0655-55e6-45e6-8bbc-6ed31d3820b5","activity":{},"activityGroupId":"8a17e616-435e-4b20-86d3-9809358d6cdd","activityGroup":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","name":"string","description":"string","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","activityConfiguration":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","type":"Generic","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","activityConfigurationSettings":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","key":"string","value":"string","type":"String","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}]},"activityGroupActivities":[{}],"isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z"},"isDeleted":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}],"deleteAccount":true,"vaultId":"867f3a98-ec66-42f4-abbc-5980239e4a28","vaultInfo":"string","logonUrl":"string","isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}],"activityConfiguration":"string","activityConfigurationMaxSessionLength":0,"activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","activityGroups":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","name":"string","description":"string","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","activityConfiguration":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","type":"Generic","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","activityConfigurationSettings":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","key":"string","value":"string","type":"String","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}]},"activityGroupActivities":[{"activityId":"bdfd0655-55e6-45e6-8bbc-6ed31d3820b5","activity":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","name":"string","description":"string","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","activityConfiguration":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","type":"Generic","createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","modifiedBy":"07ff0787-1af5-4fc4-9832-7aaeaa962a5e","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","activityConfigurationSettings":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","key":"string","value":"string","type":"String","activityConfigurationId":"e649ca68-23ab-42cb-8af5-260e01dc50d6","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}]},"platformId":"32a6e381-64f4-4911-86b6-3bf681b64d23","platform":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","builtInAccount":"string","passwordComplexityPolicyId":"2cd7b527-e70e-43d9-9b74-c73f64a0573e","passwordComplexityPolicy":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","lowerCase":true,"upperCase":true,"specialCharacter":true,"space":true,"numeric":true,"mustEndWith":"None","mustStartWith":"None","length":0,"maxConsecutive":0,"charsToExclude":"string","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z","type":"Password"},"scheduledChangePolicyId":"17df2cc9-77aa-486d-b2c3-eb63a3689174","scheduledChangePolicy":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"protectionPolicyScheduleId":"fb8b7dbf-b4af-4812-a27d-fdffc3b2498b","protectionPolicySchedule":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"scanScheduleId":"0eb70c50-8dc6-4087-9b2a-b6a2adebf24d","scanSchedule":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"verificationScheduleId":"cdcc8131-6845-4416-8986-86fd1614fd92","verificationSchedule":{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","frequency":null,"periodValue":0,"daysOfWeek":"string","dayNumber":0,"localTime":"2019-08-24T14:15:22Z","utcTime":"2019-08-24T14:15:22Z","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"resetOnMismatch":true,"icon":"string","basePlatformId":"01dea6be-a8fe-4b3c-9c51-3efd6a2732fb","type":"Unspecified","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"startActionGroupId":"fe816897-035e-41a8-b765-786a26e1fd7e","duringActionGroupId":"42ac0cdb-f5d6-410c-aef7-524cbda8a405","endActionGroupId":"129c4b86-8e07-4184-83ec-2719a1a163e2","activityType":"Interactive","loginAccount":"Requester","loginAccountNameFormat":"string","requesterLoginFormat":"Samaccountname","applicationToLaunch":"string","preferredRDSHostId":"14c3f91d-da41-4a85-9329-5b28802d466f","connectCredentialId":"28819070-8040-4b05-9bbf-5d58cd54636a","createAccount":true,"activityGroupActivities":[{}],"deleteAccount":true,"vaultId":"867f3a98-ec66-42f4-abbc-5980239e4a28","vaultInfo":"string","logonUrl":"string","isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"},"activityGroupId":"8a17e616-435e-4b20-86d3-9809358d6cdd","activityGroup":{},"isDeleted":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}],"isDefault":true,"isDeleted":true,"isUserModified":true,"nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","createdDateTimeUtc":"2019-08-24T14:15:22Z"}],"activityGroupIds":["497f6eca-6276-4993-bfeb-53cbbbba6f08"]}]
```

```json
[
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
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
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
              "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
              "createdDateTimeUtc": "2019-08-24T14:15:22Z",
              "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
            }
          ]
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
                {}
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
      }
    ],
    "activityGroupIds": [
      "497f6eca-6276-4993-bfeb-53cbbbba6f08"
    ]
  }
]
```

<h3 id="retrieve-all-access-policies.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="retrieve-all-access-policies.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.SimpleAccessControlPolicy](#schemasbpam.models.simpleaccesscontrolpolicy)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» description|string¦null|false|none|none|
|» priority|integer(int32)|false|none|none|
|» notesRequired|boolean|false|none|none|
|» ticketRequired|boolean|false|none|none|
|» approvalTypeRequired|[SbPAM.Models.ApprovalType](#schemasbpam.models.approvaltype)(int32)|false|none|none|
|» policyType|[SbPAM.Models.PolicyType](#schemasbpam.models.policytype)(int32)|false|none|none|
|» managedAccountIds|[string]¦null|false|none|none|
|» managedAccountGroupIds|[string]¦null|false|none|none|
|» managedResourceIds|[string]¦null|false|none|none|
|» managedResourceGroupIds|[string]¦null|false|none|none|
|» credentialIds|[string]¦null|false|none|none|
|» activityIds|[string]¦null|false|none|none|
|» activities|[[SbPAM.Models.Activity](#schemasbpam.models.activity)]¦null|false|none|none|
|»» id|string(uuid)|false|none|none|
|»» createdBy|string(uuid)¦null|false|none|none|
|»» modifiedBy|string(uuid)¦null|false|none|none|
|»» name|string¦null|false|none|none|
|»» description|string¦null|false|none|none|
|»» activityConfigurationId|string(uuid)¦null|false|none|none|
|»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](#schemasbpam.models.activityconfiguration)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» type|[SbPAM.Models.ActivityConfigurationType](#schemasbpam.models.activityconfigurationtype)(int32)|false|none|none|
|»»» createdBy|string(uuid)¦null|false|none|none|
|»»» modifiedBy|string(uuid)¦null|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» isDefault|boolean|false|none|none|
|»»» isDeleted|boolean|false|none|none|
|»»» isUserModified|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» activityConfigurationSettings|[[SbPAM.Models.ActivityConfigurationSetting](#schemasbpam.models.activityconfigurationsetting)]¦null|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» key|string¦null|false|none|none|
|»»»» value|string¦null|false|none|none|
|»»»» type|[SbPAM.Models.ActivityConfigurationSettingType](#schemasbpam.models.activityconfigurationsettingtype)(int32)|false|none|none|
|»»»» activityConfigurationId|string(uuid)|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» platformId|string(uuid)¦null|false|none|none|
|»» platform|[SbPAM.Models.Platform](#schemasbpam.models.platform)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» builtInAccount|string¦null|false|none|none|
|»»» passwordComplexityPolicyId|string(uuid)¦null|false|none|none|
|»»» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](#schemasbpam.models.passwordcomplexity)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» lowerCase|boolean|false|none|none|
|»»»» upperCase|boolean|false|none|none|
|»»»» specialCharacter|boolean|false|none|none|
|»»»» space|boolean|false|none|none|
|»»»» numeric|boolean|false|none|none|
|»»»» mustEndWith|[SbPAM.Constants.CharacterTypeFlags](#schemasbpam.constants.charactertypeflags)(int32)|false|none|none|
|»»»» mustStartWith|[SbPAM.Constants.CharacterTypeFlags](#schemasbpam.constants.charactertypeflags)(int32)|false|none|none|
|»»»» length|integer(int32)|false|none|none|
|»»»» maxConsecutive|integer(int32)|false|none|none|
|»»»» charsToExclude|string¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» type|[SbPAM.Models.PasswordComplexityTypeEnum](#schemasbpam.models.passwordcomplexitytypeenum)(int32)|false|none|none|
|»»» scheduledChangePolicyId|string(uuid)¦null|false|none|none|
|»»» scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](#schemasbpam.models.scheduledchangepolicy)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» frequency|any|false|none|none|
|»»»» periodValue|integer(int32)|false|none|none|
|»»»» daysOfWeek|string¦null|false|none|none|
|»»»» dayNumber|integer(int32)|false|none|none|
|»»»» localTime|string(date-time)|false|none|none|
|»»»» utcTime|string(date-time)¦null|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» protectionPolicyScheduleId|string(uuid)¦null|false|none|none|
|»»» protectionPolicySchedule|[SbPAM.Models.ScheduledChangePolicy](#schemasbpam.models.scheduledchangepolicy)|false|none|none|
|»»» scanScheduleId|string(uuid)¦null|false|none|none|
|»»» scanSchedule|[SbPAM.Models.ScheduledChangePolicy](#schemasbpam.models.scheduledchangepolicy)|false|none|none|
|»»» verificationScheduleId|string(uuid)¦null|false|none|none|
|»»» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](#schemasbpam.models.scheduledchangepolicy)|false|none|none|
|»»» resetOnMismatch|boolean|false|none|none|
|»»» icon|string(byte)¦null|false|none|none|
|»»» basePlatformId|string(uuid)¦null|false|none|none|
|»»» type|[SbPAM.Models.PlatformTypeEnum](#schemasbpam.models.platformtypeenum)(int32)|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» startActionGroupId|string(uuid)¦null|false|none|none|
|»» duringActionGroupId|string(uuid)¦null|false|none|none|
|»» endActionGroupId|string(uuid)¦null|false|none|none|
|»» activityType|[SbPAM.Models.ActivityType](#schemasbpam.models.activitytype)(int32)|false|none|none|
|»» loginAccount|[SbPAM.Models.ActivityLoginType](#schemasbpam.models.activitylogintype)(int32)|false|none|none|
|»» loginAccountNameFormat|string¦null|false|none|none|
|»» requesterLoginFormat|[SbPAM.Models.RequesterLoginFormat](#schemasbpam.models.requesterloginformat)(int32)|false|none|none|
|»» applicationToLaunch|string¦null|false|none|none|
|»» preferredRDSHostId|string(uuid)¦null|false|none|none|
|»» connectCredentialId|string(uuid)¦null|false|none|none|
|»» createAccount|boolean|false|none|none|
|»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](#schemasbpam.models.activitygroupactivity)]¦null|false|none|none|
|»»» activityId|string(uuid)|false|none|none|
|»»» activity|[SbPAM.Models.Activity](#schemasbpam.models.activity)|false|none|none|
|»»» activityGroupId|string(uuid)|false|none|none|
|»»» activityGroup|[SbPAM.Models.ActivityGroup](#schemasbpam.models.activitygroup)|false|none|none|
|»»»» id|string(uuid)|false|none|none|
|»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»» modifiedBy|string(uuid)¦null|false|none|none|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» description|string¦null|false|none|none|
|»»»» activityConfigurationId|string(uuid)¦null|false|none|none|
|»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](#schemasbpam.models.activityconfiguration)|false|none|none|
|»»»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](#schemasbpam.models.activitygroupactivity)]¦null|false|none|none|
|»»»» isDefault|boolean|false|none|none|
|»»»» isDeleted|boolean|false|none|none|
|»»»» isUserModified|boolean|false|none|none|
|»»»» nodeId|string(uuid)|false|none|none|
|»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» isDeleted|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» deleteAccount|boolean|false|none|none|
|»» vaultId|string(uuid)¦null|false|none|none|
|»» vaultInfo|string¦null|false|none|none|
|»» logonUrl|string¦null|false|none|none|
|»» isDefault|boolean|false|none|none|
|»» isDeleted|boolean|false|none|none|
|»» isUserModified|boolean|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» activityConfiguration|string¦null|false|none|none|
|» activityConfigurationMaxSessionLength|integer(int32)¦null|false|none|none|
|» activityConfigurationId|string(uuid)¦null|false|none|none|
|» activityGroups|[[SbPAM.Models.ActivityGroup](#schemasbpam.models.activitygroup)]¦null|false|none|none|
|» activityGroupIds|[string]¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|approvalTypeRequired|Deny|
|approvalTypeRequired|Allow|
|approvalTypeRequired|Workflow|
|policyType|Resource|
|policyType|Credential|
|type|Generic|
|type|ConnectionProfile|
|type|EmailSettings|
|type|System|
|type|String|
|type|Integer|
|type|UnsignedInteger|
|type|Boolean|
|type|Guid|
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
|activityType|Interactive|
|activityType|InteractiveAppLaunch|
|activityType|TaskAutomation|
|activityType|CredentialRelease|
|loginAccount|Requester|
|loginAccount|Managed|
|loginAccount|ActivityIdentity|
|loginAccount|Vault|
|loginAccount|Resource|
|requesterLoginFormat|Samaccountname|
|requesterLoginFormat|UPN|
|requesterLoginFormat|Email|
|requesterLoginFormat|SamAccountNameOnly|
|requesterLoginFormat|Custom|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


