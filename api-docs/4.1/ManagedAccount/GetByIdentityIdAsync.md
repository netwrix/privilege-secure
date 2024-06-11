
## Retrieve an NPS user by the ASP.NET Identity Id (Auth roles: Admin,App)

<a id="opIdGetByIdentityIdAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedAccount/BySbPamUserId/{id} \
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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ManagedAccount/BySbPamUserId/{id} -Headers $Headers -ContentType "application/json"
```

`GET /api/v1/ManagedAccount/BySbPamUserId/{id}`

<h3 id="retrieve-an-nps-user-by-the-asp.net-identity-id-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|ASP.NET Identity Id|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "type": "HostUser",
  "locked": true,
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "managedAccountJoin": [
    {
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
      "managedAccount": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "type": "HostUser",
        "locked": true,
        "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
        "managedAccountJoin": [],
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
                "viewPasswordInSeconds": 0
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
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
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
                    "host": {},
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                    "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
                    "website": {},
                    "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
                    "azureAdTenant": {},
                    "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
                    "secretVault": {},
                    "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
                    "managedDatabase": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "displayName": "string",
                    "ipAddress": "string",
                    "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
                    "serviceAccount": {},
                    "manageAccount": "Unmanaged",
                    "protectedGroup": [],
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "managedResourceJoin": [],
                    "managedResourcePolicyJoin": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
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
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
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
                    "activityConfiguration": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
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
                    "activityGroupActivities": [],
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
                    "activityConfiguration": {},
                    "activityGroupActivities": [],
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
                    "platform": {},
                    "sudoCommand": "string",
                    "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
                    "passwordVaultConnector": {},
                    "passwordVaultInfo": "string",
                    "changeOnCheckout": true,
                    "changeOnRelease": true,
                    "showPassword": true,
                    "credentialJoin": [],
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
                    "credentialJoin": [],
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
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
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
                "viewPasswordInSeconds": 0
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
                    "managedAccountJoin": [],
                    "managedAccountPolicyJoin": [],
                    "sid": "string",
                    "userCollectionJoin": [],
                    "isReviewer": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Host",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                    "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
                    "website": {},
                    "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
                    "azureAdTenant": {},
                    "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
                    "secretVault": {},
                    "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
                    "managedDatabase": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "displayName": "string",
                    "ipAddress": "string",
                    "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
                    "serviceAccount": {},
                    "manageAccount": "Unmanaged",
                    "protectedGroup": [],
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "managedResourceJoin": [],
                    "managedResourcePolicyJoin": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
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
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
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
                    "activityConfiguration": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
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
                    "activityGroupActivities": [],
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
                    "activityConfiguration": {},
                    "activityGroupActivities": [],
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
                    "platform": {},
                    "sudoCommand": "string",
                    "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
                    "passwordVaultConnector": {},
                    "passwordVaultInfo": "string",
                    "changeOnCheckout": true,
                    "changeOnRelease": true,
                    "showPassword": true,
                    "credentialJoin": [],
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
                    "credentialJoin": [],
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
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
                    "managedAccountJoin": [],
                    "managedAccountPolicyJoin": [],
                    "sid": "string",
                    "userCollectionJoin": [],
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
                    "activityConfiguration": {},
                    "priority": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true,
                    "managedAccountPolicyJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "managedResourcePolicyJoin": [],
                    "managedResourceGroupPolicyJoin": [],
                    "activityJoin": [],
                    "activityGroupJoin": [],
                    "credentialPolicyJoin": [],
                    "credentialGroupPolicyJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
        "managedAccountPolicyJoin": [],
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
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
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
          "viewPasswordInSeconds": 0
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
                  "managedAccount": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "HostUser",
                    "locked": true,
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "managedAccountJoin": [],
                    "managedAccountPolicyJoin": [],
                    "sid": "string",
                    "userCollectionJoin": [],
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
                {}
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
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
                  "netBiosName": "string",
                  "domainController": "example-dc001.example.local",
                  "usnChanged": 12345,
                  "activeDirectoryDomainConfigurationId": "7c50cc10-1412-485e-9020-50b41d8070bf",
                  "activeDirectoryDomainConfiguration": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryDomain": [],
                    "name": "string",
                    "controllers": [],
                    "enabled": true,
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "useSsl": true,
                    "functionalLevel": "string",
                    "syncActionQueueId": "52e1c928-ebc8-4a61-b81e-9a896250c15a",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "functionalLevel": "Windows Server 2016",
                  "activeDirectoryGroup": [
                    {}
                  ],
                  "objectSid": "S-1-5-21-2801403971-1535060088-509881625",
                  "maxRenewAge": 7,
                  "maxTicketAge": 10,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "dnsHostName": "host.example.local",
                "netBiosName": "HOST",
                "users": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                    "activeDirectoryDomainId": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "activeDirectoryDomain": {},
                    "displayName": "string",
                    "enabled": true,
                    "unixId": 0,
                    "unixGroupId": 0,
                    "homeDirectory": "string",
                    "shell": "string",
                    "expirationDate": "2019-08-24T14:15:22Z",
                    "managed": true,
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "primaryGroupTokenId": 0,
                    "primaryGroupToken": "string",
                    "managerSamaccountname": "string",
                    "title": "string",
                    "samaccountname": "string",
                    "userPrincipalName": "string",
                    "distinguishedName": "string",
                    "department": "string",
                    "email": "string",
                    "lastLogonTimestamp": "2019-08-24T14:15:22Z",
                    "name": "string",
                    "sid": "string",
                    "firstName": "string",
                    "lastName": "string",
                    "passwordHash": "string",
                    "passwordChangedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "passwordExpirationDateTimeUtc": "2019-08-24T14:15:22Z",
                    "forcePasswordReset": true,
                    "privilege": "NotSet",
                    "hostUserGroupJoin": [],
                    "hostDatabaseDbs": [],
                    "hostDatabaseRoles": [],
                    "deleted": true,
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "groups": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "sid": "string",
                    "unixId": 0,
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUserGroupJoin": [],
                    "hostGroupGroupJoins": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                ],
                "features": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "version": "string",
                    "description": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {}
                  }
                ],
                "services": [
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
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
                  }
                ],
                "scheduledTasks": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "userName": "string",
                    "name": "string",
                    "taskPath": "string",
                    "description": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "source": "string",
                    "nextRunTimeUtc": "2019-08-24T14:15:22Z",
                    "lastRunTimeUtc": "2019-08-24T14:15:22Z",
                    "lastRunResult": 0,
                    "scheduledTaskTriggers": [],
                    "scheduledTaskActions": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
                    "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
                  }
                ],
                "databases": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "fullName": "string",
                    "product": "string",
                    "version": "string",
                    "isClustered": true,
                    "clusterName": "string",
                    "type": "PostgreSQL",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {}
                  }
                ],
                "databaseDbs": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "databaseId": "string",
                    "ownerSid": "string",
                    "createDate": "2019-08-24T14:15:22Z",
                    "isOnline": true,
                    "statusDesc": "string",
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUsers": [],
                    "hostGroups": [],
                    "hostDbRoles": []
                  }
                ],
                "databaseRoles": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "sid": "string",
                    "principalId": "string",
                    "createDate": "2019-08-24T14:15:22Z",
                    "modifyDate": "2019-08-24T14:15:22Z",
                    "isDisabled": true,
                    "discoveredDateTimeUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "databaseDbId": "d22cd8c7-805e-41c1-a1bf-78c5aefa7a36",
                    "databaseDb": {},
                    "hostUsers": [],
                    "hostGroups": []
                  }
                ],
                "samaccountname": "string",
                "isDomainController": false,
                "isGlobalCatalog": false,
                "usnChanged": 12345,
                "objectSid": "S-1-5-21-1234567890-1234567890-123456789-123456",
                "added": "20240327T01:01:01.555Z",
                "deleted": false,
                "isVirtual": false,
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "hostScanUserGroupJoin": [],
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
                    "hostScanUserGroupJoin": [],
                    "hostScanGroupGroupJoin": [],
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
                    "hostScanJob": {},
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
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
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
                    "website": {},
                    "uri": "string",
                    "match": "Domain",
                    "matchType": "Domain",
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
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
              "manageAccount": "Unmanaged",
              "protectedGroup": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
                  "allowedProtectedGroupMember": [
                    {}
                  ],
                  "currentProtectedGroupMember": [
                    {}
                  ],
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
                "viewPasswordInSeconds": 0
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
              "managedResourceJoin": [
                {
                  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
                  "managedResource": {},
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
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
                    "ouAutoOnboard": true,
                    "ouIncludeChildren": true
                  }
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
                  "protectionPolicy": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "groupMonitorInterval": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "protectionPolicyGroup": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
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
                  "managedResource": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "Host",
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                    "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
                    "website": {},
                    "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
                    "azureAdTenant": {},
                    "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
                    "secretVault": {},
                    "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
                    "managedDatabase": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "displayName": "string",
                    "ipAddress": "string",
                    "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
                    "serviceAccount": {},
                    "manageAccount": "Unmanaged",
                    "protectedGroup": [],
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "managedResourceJoin": [],
                    "managedResourcePolicyJoin": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
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
                  "protectionPolicy": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "description": "string",
                    "groupMonitorInterval": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "protectionPolicyGroup": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
                }
              ],
              "ouMappingEnabled": true,
              "ouFqdn": "string",
              "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
              "ouDomainConfig": {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "activeDirectoryDomain": [
                  {
                    "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
                    "name": "example",
                    "domainName": "example.local",
                    "netBiosName": "string",
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
                  }
                ],
                "name": "string",
                "controllers": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "activeDirectoryDomain": {},
                    "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                    "activeDirectoryDomainConfiguration": {},
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  }
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
                "viewPasswordInSeconds": 0
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
                    "activityConfiguration": {},
                    "activityGroupActivities": [],
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
                "viewPasswordInSeconds": 0
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
                    "activityConfiguration": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
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
                    "activityGroupActivities": [],
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
                    "credentialJoin": [],
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
                    "platform": {},
                    "sudoCommand": "string",
                    "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
                    "passwordVaultConnector": {},
                    "passwordVaultInfo": "string",
                    "changeOnCheckout": true,
                    "changeOnRelease": true,
                    "showPassword": true,
                    "credentialJoin": [],
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
                  "managedAccount": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "HostUser",
                    "locked": true,
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "managedAccountJoin": [],
                    "managedAccountPolicyJoin": [],
                    "sid": "string",
                    "userCollectionJoin": [],
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
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
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
                    "activityConfiguration": {},
                    "priority": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true,
                    "managedAccountPolicyJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "managedResourcePolicyJoin": [],
                    "managedResourceGroupPolicyJoin": [],
                    "activityJoin": [],
                    "activityGroupJoin": [],
                    "credentialPolicyJoin": [],
                    "credentialGroupPolicyJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
                "viewPasswordInSeconds": 0
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
                    "managedAccountJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "groupCollectionJoin": [],
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
                    "host": {},
                    "hostScanHostId": "54804af1-3f95-48c4-a5ea-e5414ebf423e",
                    "hostScanHost": {},
                    "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
                    "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
                    "website": {},
                    "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
                    "azureAdTenant": {},
                    "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
                    "secretVault": {},
                    "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
                    "managedDatabase": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
                    "displayName": "string",
                    "ipAddress": "string",
                    "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
                    "serviceAccount": {},
                    "manageAccount": "Unmanaged",
                    "protectedGroup": [],
                    "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
                    "activityConfiguration": {},
                    "actionQueueId": "635ba7e7-b7ac-48d8-91a4-75a21871e523",
                    "actionQueue": {},
                    "managedResourceJoin": [],
                    "managedResourcePolicyJoin": [],
                    "manageResourceProtectionPolicyJoin": [],
                    "verificationScheduleId": "cdcc8131-6845-4416-8986-86fd1614fd92",
                    "verificationSchedule": {},
                    "passwordComplexityPolicyId": "2cd7b527-e70e-43d9-9b74-c73f64a0573e",
                    "passwordComplexityPolicy": {},
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
                    "managedResourceJoin": [],
                    "platform": {},
                    "managedResourceGroupPolicyJoin": [],
                    "manageResourceGroupProtectionPolicyJoin": [],
                    "ouMappingEnabled": true,
                    "ouFqdn": "string",
                    "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
                    "ouDomainConfig": {},
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
                    "activityConfiguration": {},
                    "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
                    "platform": {},
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
                    "activityGroupActivities": [],
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
                    "activityConfiguration": {},
                    "activityGroupActivities": [],
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
                    "platform": {},
                    "sudoCommand": "string",
                    "passwordVaultConnectorId": "21763a2d-4378-4965-b090-d4b524227254",
                    "passwordVaultConnector": {},
                    "passwordVaultInfo": "string",
                    "changeOnCheckout": true,
                    "changeOnRelease": true,
                    "showPassword": true,
                    "credentialJoin": [],
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
                    "credentialJoin": [],
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
                    "userCollectionJoin": [],
                    "groupCollectionJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
        "userCollectionJoin": [],
        "isReviewer": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      },
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
                  "managedAccount": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "type": "HostUser",
                    "locked": true,
                    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
                    "managedAccountJoin": [],
                    "managedAccountPolicyJoin": [],
                    "sid": "string",
                    "userCollectionJoin": [],
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
                    "activityConfiguration": {},
                    "priority": 0,
                    "isDisabled": true,
                    "isDeleted": true,
                    "isDefault": true,
                    "isUserModified": true,
                    "managedAccountPolicyJoin": [],
                    "managedAccountGroupPolicyJoin": [],
                    "managedResourcePolicyJoin": [],
                    "managedResourceGroupPolicyJoin": [],
                    "activityJoin": [],
                    "activityGroupJoin": [],
                    "credentialPolicyJoin": [],
                    "credentialGroupPolicyJoin": [],
                    "userAndGroupCollectionPolicyJoin": [],
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
      }
    }
  ],
  "isReviewer": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}
```

<h3 id="retrieve-an-nps-user-by-the-asp.net-identity-id-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


