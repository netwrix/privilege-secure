
## Retrieve managed resources by id, with no other filtering. Intended for callers that already
have a set of ids and just need to identify them (e.g. by Name/IpAddress) for logging/display. (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdRetrieveByIdsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/RetrieveByIds \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedResource/RetrieveByIds" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedResource/RetrieveByIds`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="retrieve-managed-resources-by-id,-with-no-other-filtering.-intended-for-callers-that-already
have-a-set-of-ids-and-just-need-to-identify-them-(e.g.-by-name/ipaddress)-for-logging/display.-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[string]|false|Managed resource ids to retrieve|

> Example responses

> 200 Response

```json
[
  {
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
        "activeDirectoryDomainConfiguration": {
          "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
          "activeDirectoryDomain": [
            {}
          ],
          "name": "ExampleDomainConfiguration",
          "controllers": [
            {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "activeDirectoryDomain": {},
              "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
              "activeDirectoryDomainConfiguration": {},
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            }
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
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
          "website": {},
          "uri": "string",
          "match": "Domain",
          "matchType": "Domain",
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
        }
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
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
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
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {},
                "actionParameter": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "value": "string",
                    "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionGroup": {},
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
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
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    {}
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
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                    "valueSet": [],
                    "limitToValueSet": true,
                    "helperText": "string",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionServiceProperty": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "value": "string",
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "actionQueueAction": [
                  {}
                ],
                "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
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
                  {
                    "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                    "managedResourceGroup": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
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
                "defaultServiceAccount": {},
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
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
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
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionGroupId": "73e4bf0c-4a90-453b-be9b-11b57106ba98",
                "actionGroup": {},
                "actionParameter": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "value": "string",
                    "actionTemplateParameterId": "8e9694cb-fd66-4825-bd34-8c8fffecfba0",
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionGroup": {},
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    {}
                  ],
                  "action": [
                    {}
                  ],
                  "actionTemplateDemand": [
                    {}
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
                    "actionTemplate": [],
                    "actionTemplateParameter": [],
                    "actionTemplateDemand": [],
                    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
                  },
                  "classification": null,
                  "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
                  "pairedActionTemplate": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    {}
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
                    "actionTemplateParameter": {},
                    "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                    "valueSet": [],
                    "limitToValueSet": true,
                    "helperText": "string",
                    "actionTemplateId": "4ee12bc7-7f2c-4166-b5c4-7db2f4b5adb8",
                    "actionPackId": "39c7c73c-e07f-4e7e-8988-1e771bddb06c",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionServiceProperty": [
                  {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "name": "string",
                    "value": "string",
                    "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                    "registeredService": {},
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "actionQueueAction": [
                  {}
                ],
                "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
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
                  {
                    "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                    "managedResourceGroup": {},
                    "accessControlPolicyId": "1f102743-e7ee-4715-bc48-f439da4874f7",
                    "accessControlPolicy": {}
                  }
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
                  "passwordVaultConnector": {},
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "classification": null,
              "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
              "pairedActionTemplate": {},
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "actionServiceProperty": [
                    {}
                  ],
                  "actionQueueAction": [
                    {}
                  ],
                  "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
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
            "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
            "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            },
            "actionGroup": {},
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  }
                ],
                "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
                "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
              },
              "classification": null,
              "pairedActionTemplateId": "fd4be3c7-2900-4481-b89e-278ac50847ca",
              "pairedActionTemplate": {},
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "actionGroup": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                },
                "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
            "lastModifiedBy": "ac5c7580-b36d-42f3-a739-e202c634d1d1",
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              },
              "actionId": "4a2794ff-94cb-4bac-8d36-d5fb36c563a0",
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
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
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
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
              "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
              "createdDateTimeUtc": "20240101T05:07:08.555Z",
              "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
            },
            "actionServiceProperty": [
              {
                "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                "name": "string",
                "value": "string",
                "actionServiceId": "b5404960-7558-4dbb-aa63-3f0f1838c631",
                "registeredService": {},
                "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                "createdDateTimeUtc": "20240101T05:07:08.555Z",
                "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
              }
            ],
            "actionQueueAction": [
              {}
            ],
            "serviceNodeId": "b9fc9566-86e0-4685-9897-48f6457cdd72",
            "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
            "createdDateTimeUtc": "20240101T05:07:08.555Z",
            "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
          },
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
              {
                "managedResourceGroupId": "07aeb361-27d2-42b0-83f1-28e5a284cf7a",
                "managedResourceGroup": {},
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
                  "protectionPolicyGroup": [
                    {}
                  ],
                  "manageResourceProtectionPolicyJoin": [
                    {}
                  ],
                  "manageResourceGroupProtectionPolicyJoin": [
                    {}
                  ],
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              }
            ],
            "ouMappingEnabled": true,
            "ouFqdn": "string",
            "ouDomainConfigId": "5708780b-b45a-483b-b5f6-77a5c3864973",
            "ouDomainConfig": {
              "id": "2258c867-9603-49f3-9cbe-b82f831262a6",
              "activeDirectoryDomain": [
                {
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
                }
              ],
              "name": "ExampleDomainConfiguration",
              "controllers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
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
                  "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                  "activeDirectoryDomainConfiguration": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
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
                "monitorActionQueue": {},
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
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                  "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                  "group": {},
                  "member": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "activeDirectoryObjectId": "c323cc1a-aecb-4eb0-9599-286516de7e9f",
                    "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
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
                    "lastSeenUtc": "2019-08-24T14:15:22Z",
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
              "activeDirectoryGroupGroupGroup": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                  "group": {},
                  "member": {},
                  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
              ],
              "activeDirectoryGroupGroupMember": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "memberId": "92983ab9-49c8-444b-85ae-6e40402cf72e",
                  "group": {},
                  "member": {},
                  "groupId": "eb54e96e-21b8-4f54-9cd4-80fccbd06f55",
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
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
                "activeDirectoryDomainConfiguration": {
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
                {
                  "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
                  "hostGroup": {
                    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                    "resourceObjectId": "10487c1f-ea66-4281-a008-64b0b17b6861",
                    "name": "string",
                    "sid": "string",
                    "unixId": 0,
                    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
                    "host": {},
                    "hostUserGroupJoin": [],
                    "hostGroupGroupJoins": [],
                    "lastSeenUtc": "2019-08-24T14:15:22Z",
                    "deleted": true,
                    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                    "createdDateTimeUtc": "20240101T05:07:08.555Z",
                    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                  },
                  "domainGroupMemberId": "8308c9e0-575d-45d1-8ff0-a4708ed268d5",
                  "domainGroupMember": {},
                  "lastSeenUtc": "2019-08-24T14:15:22Z",
                  "deleted": true,
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
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
                {
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
                }
              ],
              "name": "ExampleDomainConfiguration",
              "controllers": [
                {
                  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
                  "name": "string",
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
                  "activeDirectoryDomainConfigurationId": "49888c94-0f98-4f12-afa0-6d4c13cf7f38",
                  "activeDirectoryDomainConfiguration": {},
                  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
                  "createdDateTimeUtc": "20240101T05:07:08.555Z",
                  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
                }
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
  }
]
```

<h3 id="retrieve-managed-resources-by-id,-with-no-other-filtering.-intended-for-callers-that-already
have-a-set-of-ids-and-just-need-to-identify-them-(e.g.-by-name/ipaddress)-for-logging/display.-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Caller is not an Administrator or App|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="retrieve-managed-resources-by-id,-with-no-other-filtering.-intended-for-callers-that-already
have-a-set-of-ids-and-just-need-to-identify-them-(e.g.-by-name/ipaddress)-for-logging/display.-(auth-policies:-mfarequired;-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)]|false|none|[This model represents a managed resource such as a Host.]|
|» id|string(uuid)|false|none|Unique id and DB key for this resource.|
|» name|string¦null|false|none|Name of this managed resource.|
|» type|[SbPAM.Models.ManagedResourceType](../Models/sbpam.models.managedresourcetype.md)(int32)|false|none|none|
|» hostId|string(uuid)¦null|false|none|Host id  If this resource is a host.|
|» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»» id|string(uuid)|false|none|Unique id and DB key for this host.|
|»» activeDirectoryObjectId|string(uuid)¦null|false|none|Unique id from AD sync (usually same as Id).|
|»» name|string¦null|false|none|Name of the host.|
|»» distinguishedName|string¦null|false|none|Distingished name from active directory|
|»» ipAddress|string¦null|false|none|IP address of host.|
|»» os|string¦null|false|none|Name of OS on host.|
|»» version|string¦null|false|none|Verion of OS on host.|
|»» lsaLookupCache|string¦null|false|none|Most recent LsaLookupCacheMaxSize|
|»» lastUpdatedDateTimeUtc|string(date-time)¦null|false|none|Date/time of last system update.|
|»» credentialId|string(uuid)¦null|false|none|Id of service account for this host|
|»» hasSSH|boolean|false|none|True if the host supports SSH.|
|»» activeDirectoryDomainId|string(uuid)¦null|false|none|Id of active directory domain if host is a member of a domain.|
|»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»» id|string(uuid)|false|none|Unique id and DB key for this domain.|
|»»» name|string¦null|false|none|Name of this domain, e.g. sbitsinc.|
|»»» domainName|string¦null|false|none|Fully qualified name of this domain|
|»»» netBiosName|string¦null|false|none|NetBios name of this domain|
|»»» domainController|string¦null|false|none|Name of the domain controller for this domain.|
|»»» usnChanged|integer(int64)¦null|false|none|Update sequence number (USN) assigned by the directory for the latest change.|
|»»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|NPS Id of the active directory domain configuration.|
|»»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|»»»» id|string(uuid)|false|none|Gets or sets the unique identifier of the configuration.|
|»»»» activeDirectoryDomain|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)]¦null|false|read-only|Gets the list of Active Directory domains.|
|»»»» name|string¦null|false|none|Gets or sets the name of the configuration.|
|»»»» controllers|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryController](../Models/sbpam.activedirectory.models.activedirectorycontroller.md)]¦null|false|read-only|Gets the list of Active Directory controllers.|
|»»»»» id|string(uuid)|false|none|Gets or sets the unique identifier for the Active Directory Controller.|
|»»»»» name|string¦null|false|none|Name of the Active Directory Controller.|
|»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»»» activeDirectoryDomainConfigurationId|string(uuid)|false|none|Configuration ID for the Active Directory Domain.|
|»»»»» activeDirectoryDomainConfiguration|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»» enabled|boolean|false|none|Gets or sets a value indicating whether the configuration is enabled.|
|»»»» credentialId|string(uuid)¦null|false|none|Gets or sets the credential identifier.|
|»»»» useSsl|boolean|false|none|Gets or sets a value indicating whether SSL is used.|
|»»»» functionalLevel|string¦null|false|none|Gets or sets the name of the domain's functional level.|
|»»»» syncActionQueueId|string(uuid)¦null|false|none|Gets or sets the synchronization action queue identifier.|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for the node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when the object was created in the database).|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» functionalLevel|string¦null|false|none|Name of this domain controller's functional level|
|»»» activeDirectoryGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Active Directory Groups within this domain.|
|»»»» id|string(uuid)|false|none|Gets or sets the unique identifier for the group.|
|»»»» samaccountname|string¦null|false|none|Gets or sets the SAM account name.|
|»»»» usnchanged|integer(int64)|false|none|Gets or sets the USN changed value.|
|»»»» description|string¦null|false|none|Gets or sets the description of the group.|
|»»»» distinguishedName|string¦null|false|none|Gets or sets the distinguished name of the group.|
|»»»» displayName|string¦null|false|none|Gets or sets the display name of the group.|
|»»»» email|string¦null|false|none|Gets or sets the email of the group.|
|»»»» added|string(date-time)|false|none|Gets or sets the date when the group was added.|
|»»»» groupToken|string(byte)¦null|false|none|Gets or sets the group token.|
|»»»» activeDirectoryGroupHostUser|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupHostUser](../Models/sbpam.activedirectory.models.activedirectorygrouphostuser.md)]¦null|false|none|Gets or sets the collection of ActiveDirectoryGroupHostUser.|
|»»»»» id|string(uuid)|false|none|Gets or sets the unique identifier for the group member.|
|»»»»» groupId|string(uuid)|false|none|Gets or sets the unique identifier for the group.|
|»»»»» memberId|string(uuid)|false|none|Gets or sets the unique identifier for the member.|
|»»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»»» member|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|This model represents a user which may be associated with target host.|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this user.|
|»»»»»» activeDirectoryObjectId|string(uuid)¦null|false|none|Unique id from AD sync (usually same as Id).|
|»»»»»» resourceObjectId|string(uuid)¦null|false|none|Azure AD/Entra ID object ID for this user.<br>Used when user is discovered from Azure AD scanning.|
|»»»»»» activeDirectoryDomainId|string(uuid)¦null|false|none|Id of active directory domain to which this user belongs.|
|»»»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»»»» displayName|string¦null|false|none|Display name for this user.|
|»»»»»» enabled|boolean|false|none|True if this user is enabled.|
|»»»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a user on a Unix host.|
|»»»»»» unixGroupId|integer(int32)¦null|false|none|Unix group id if this is a user on a Unix host.|
|»»»»»» homeDirectory|string¦null|false|none|Home directory for user if this is a user on a Unix host.|
|»»»»»» shell|string¦null|false|none|Shell for user if this is a user on a Unix host.|
|»»»»»» expirationDate|string(date-time)¦null|false|none|Expiration date for this user.|
|»»»»»» managed|boolean|false|none|True if this user should be managed.|
|»»»»»» hostId|string(uuid)¦null|false|none|Id of host to which this user belongs.|
|»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»» primaryGroupTokenId|integer(int32)¦null|false|none|Id of primary group token.|
|»»»»»» primaryGroupToken|string(byte)¦null|false|none|Primary group token.|
|»»»»»» managerSamaccountname|string¦null|false|none|SAM account name of Manager.|
|»»»»»» title|string¦null|false|none|Title of this user.|
|»»»»»» samaccountname|string¦null|false|none|SAM account name of user, e.g. Domain\Username.<br>https://docs.microsoft.com/en-us/windows/win32/ad/naming-properties#samaccountname|
|»»»»»» userPrincipalName|string¦null|false|none|The userPrincipalName attribute is the logon name for the user.<br>https://docs.microsoft.com/en-us/windows/win32/ad/naming-properties#userprincipalname|
|»»»»»» distinguishedName|string¦null|false|none|Distinguished name of user from active directory.|
|»»»»»» department|string¦null|false|none|Department to which this user belongs.|
|»»»»»» email|string¦null|false|none|Email address for this user.|
|»»»»»» lastLogonTimestamp|string(date-time)¦null|false|none|When this user last logged in.|
|»»»»»» name|string¦null|false|none|Short name|
|»»»»»» sid|string¦null|false|none|Windows Security ID for user|
|»»»»»» firstName|string¦null|false|none|User's first name - AD attribute 'givenName'|
|»»»»»» lastName|string¦null|false|none|User's surname - AD attribute 'sn'|
|»»»»»» passwordHash|string¦null|false|none|Hash of password from linux /etc/shadow|
|»»»»»» passwordChangedDateTimeUtc|string(date-time)¦null|false|none|Time we last changed password.|
|»»»»»» passwordExpirationDateTimeUtc|string(date-time)¦null|false|none|When does password expire?|
|»»»»»» forcePasswordReset|boolean|false|none|If true, need to change password.|
|»»»»»» privilege|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)(int32)|false|none|none|
|»»»»»» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|Groups to which this user belongs via join table.|
|»»»»»»» userId|string(uuid)|false|none|Id of AD user.|
|»»»»»»» user|[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)|false|none|This model represents a user which may be associated with target host.|
|»»»»»»» groupId|string(uuid)|false|none|Id of AD group.|
|»»»»»»» group|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|This model represents a group which may be associated with target host.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»»» resourceObjectId|string(uuid)¦null|false|none|Azure AD/Entra ID object ID for this group.<br>Used when group is discovered from Azure AD scanning.|
|»»»»»»»» name|string¦null|false|none|Name for this group.|
|»»»»»»»» sid|string¦null|false|none|Windows Security ID for group|
|»»»»»»»» unixId|integer(int32)¦null|false|none|Unix id if this is a group on a Unix host.|
|»»»»»»»» hostId|string(uuid)¦null|false|none|Id of host to which this group belongs.|
|»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»»» hostUserGroupJoin|[[SbPAM.ActiveDirectory.Models.HostUserGroupJoin](../Models/sbpam.activedirectory.models.hostusergroupjoin.md)]¦null|false|read-only|Users which are in this group via join table.|
|»»»»»»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|Domain groups which are in this group via join table|
|»»»»»»»»» hostGroupId|string(uuid)|false|none|Id of the parent group|
|»»»»»»»»» hostGroup|[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)|false|none|This model represents a group which may be associated with target host.|
|»»»»»»»»» domainGroupMemberId|string(uuid)|false|none|Id of the member ActiveDirectoryGroup|
|»»»»»»»»» domainGroupMember|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|When this group membership was last seen in a host scan (UTC).<br>Used to track when a domain group membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|»»»»»»»»» deleted|boolean|false|none|True if this group membership has been deleted (soft delete).|
|»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|When this group was last seen in a host scan (UTC).<br>Used to track when a group was last discovered.<br>Compare with Host.LastScannedUtc to detect removed groups.|
|»»»»»»»» deleted|boolean|false|none|True if this group has been deleted (soft delete).|
|»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|When this membership was last seen in a host scan (UTC).<br>Used to track when a membership was last discovered.<br>Compare with Host.LastScannedUtc to detect removed memberships.|
|»»»»»»» deleted|boolean|false|none|True if this membership has been deleted (soft delete).|
|»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»» hostDatabaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|Databases to which this user belongs via join table.|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» databaseId|string¦null|false|none|none|
|»»»»»»» ownerSid|string¦null|false|none|none|
|»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»» isOnline|boolean|false|none|none|
|»»»»»»» statusDesc|string¦null|false|none|none|
|»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»» deleted|boolean|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»» hostId|string(uuid)|false|none|Gets or sets the ID of the host associated with this database.|
|»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|Gets the users which are in this database.|
|»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Gets or sets the domain groups which are in this database.|
|»»»»»»» hostDbRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|none|Gets or sets the roles of the host database.|
|»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» sid|string¦null|false|none|none|
|»»»»»»»» principalId|string¦null|false|none|none|
|»»»»»»»» createDate|string(date-time)|false|none|none|
|»»»»»»»» modifyDate|string(date-time)|false|none|none|
|»»»»»»»» isDisabled|boolean|false|none|none|
|»»»»»»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»»»»»»» deleted|boolean|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» hostId|string(uuid)|false|none|Id of host database with this database.|
|»»»»»»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»»»»»»» databaseDbId|string(uuid)¦null|false|none|Null if a server role.|
|»»»»»»»» databaseDb|[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)|false|none|Represents a host database.|
|»»»»»»»» hostUsers|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|Users which are assigned the role.|
|»»»»»»»» hostGroups|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)]¦null|false|none|Domain groups which are assigned this role.|
|»»»»»» hostDatabaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|Roles to which this user belongs via join table.|
|»»»»»» deleted|boolean|false|none|True if this user has been deleted.|
|»»»»»» lastSeenUtc|string(date-time)¦null|false|none|When this user was last seen in a host scan (UTC).<br>Used to track when a user was last discovered on the host.<br>Compare with Host.LastScannedUtc to detect deleted users.|
|»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»» activeDirectoryGroupGroupGroup|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|Gets or sets the collection of ActiveDirectoryGroupGroupGroup.|
|»»»»» id|string(uuid)|false|none|Id of AD group.|
|»»»»» memberId|string(uuid)|false|none|AD group member ID.|
|»»»»» group|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»»» member|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»»» groupId|string(uuid)|false|none|Id of AD group.|
|»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»» activeDirectoryGroupGroupMember|[[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroupGroup](../Models/sbpam.activedirectory.models.activedirectorygroupgroup.md)]¦null|false|none|Gets or sets the collection of ActiveDirectoryGroupGroupMember.|
|»»»» activeDirectoryDomainId|string(uuid)|false|none|Gets or sets the Active Directory domain identifier.|
|»»»» activeDirectoryDomain|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|false|none|This model represents an active directory domain.|
|»»»» groupTokenId|integer(int32)¦null|false|none|Gets or sets the group token identifier.|
|»»»» name|string¦null|false|none|Gets or sets the name of the group.|
|»»»» sid|string¦null|false|none|Gets or sets the SID of the group.|
|»»»» hostGroupGroupJoins|[[SbPAM.ActiveDirectory.Models.HostGroupGroupJoin](../Models/sbpam.activedirectory.models.hostgroupgroupjoin.md)]¦null|false|none|Gets or sets the collection of HostGroupGroupJoins.|
|»»»» deleted|boolean|false|none|True if this group has been deleted.|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» objectSid|string¦null|false|none|Object SID for the domain controller this record represents|
|»»» maxRenewAge|integer(int32)¦null|false|none|Max renew age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxrenewage">MS Documentation</a>|
|»»» maxTicketAge|integer(int32)¦null|false|none|Max ticket age <a href="https://learn.microsoft.com/en-us/windows/win32/adschema/a-maxticketage">MS Documentation</a>|
|»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» dnsHostName|string¦null|false|none|DNS hostname.|
|»» netBiosName|string¦null|false|none|NetBios hostname.|
|»» platformId|string(uuid)¦null|false|none|PlatformId|
|»» users|[[SbPAM.ActiveDirectory.Models.HostUser](../Models/sbpam.activedirectory.models.hostuser.md)]¦null|false|read-only|List of users associated with this host.|
|»» groups|[[SbPAM.ActiveDirectory.Models.HostGroup](../Models/sbpam.activedirectory.models.hostgroup.md)]¦null|false|read-only|List of groups associated with this host.|
|»» features|[[SbPAM.ActiveDirectory.Models.HostFeature](../Models/sbpam.activedirectory.models.hostfeature.md)]¦null|false|read-only|List of features installed on this host.|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» version|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»» deleted|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostId|string(uuid)|false|none|Id of host with this installed feature.|
|»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»» services|[[SbPAM.ActiveDirectory.Models.HostService](../Models/sbpam.activedirectory.models.hostservice.md)]¦null|false|read-only|List of services that have accounts that can be managed.|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» displayName|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» startType|[SbPAM.Models.Common.ServiceStartType](../Models/sbpam.models.common.servicestarttype.md)(int32)|false|none|none|
|»»» userName|string¦null|false|none|none|
|»»» binaryPathName|string¦null|false|none|none|
|»»» dependentServices|string¦null|false|none|none|
|»»» canPauseAndContinue|boolean|false|none|none|
|»»» canShutdown|boolean|false|none|none|
|»»» canStop|boolean|false|none|none|
|»»» serviceType|[SbPAM.Models.Common.ServiceTypeFlags](../Models/sbpam.models.common.servicetypeflags.md)(int32)|false|none|none|
|»»» delayedStart|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»» deleted|boolean|false|none|none|
|»»» hostId|string(uuid)|false|none|Gets or sets the unique identifier for the host.|
|»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»» credentialId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the credential.|
|»»» hostUserId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the host user.|
|»» scheduledTasks|[[SbPAM.ActiveDirectory.Models.HostScheduledTask](../Models/sbpam.activedirectory.models.hostscheduledtask.md)]¦null|false|read-only|List of scheduled tasks that have accounts that can be managed.|
|»»» id|string(uuid)|false|none|none|
|»»» userName|string¦null|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» taskPath|string¦null|false|none|none|
|»»» description|string¦null|false|none|none|
|»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»» source|string¦null|false|none|none|
|»»» nextRunTimeUtc|string(date-time)|false|none|none|
|»»» lastRunTimeUtc|string(date-time)|false|none|none|
|»»» lastRunResult|integer(int32)|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»» deleted|boolean|false|none|none|
|»»» hostId|string(uuid)|false|none|Gets or sets the unique identifier for the host.|
|»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»»» credentialId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the credential.|
|»»» hostUserId|string(uuid)¦null|false|none|Gets or sets the unique identifier for the host user.|
|»» databases|[[SbPAM.ActiveDirectory.Models.HostDatabase](../Models/sbpam.activedirectory.models.hostdatabase.md)]¦null|false|read-only|List of SQL Server database server instances found on Windows host|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» fullName|string¦null|false|none|none|
|»»» product|string¦null|false|none|none|
|»»» version|string¦null|false|none|none|
|»»» isClustered|boolean|false|none|none|
|»»» clusterName|string¦null|false|none|none|
|»»» type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)(int32)|false|none|none|
|»»» discoveredDateTimeUtc|string(date-time)|false|none|none|
|»»» lastSeenUtc|string(date-time)¦null|false|none|none|
|»»» deleted|boolean|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» hostId|string(uuid)|false|none|Gets or sets the Id of the host with this database.|
|»»» host|[SbPAM.ActiveDirectory.Models.Host](../Models/sbpam.activedirectory.models.host.md)|false|none|This model represents a host machine.|
|»» databaseDbs|[[SbPAM.ActiveDirectory.Models.HostDatabaseDb](../Models/sbpam.activedirectory.models.hostdatabasedb.md)]¦null|false|read-only|List of SQL Server databases found on Windows host|
|»» databaseRoles|[[SbPAM.ActiveDirectory.Models.HostDatabaseRole](../Models/sbpam.activedirectory.models.hostdatabaserole.md)]¦null|false|read-only|List of SQL Server databse roles found on Windows host|
|»» samaccountname|string¦null|false|none|sAMAccountname for host (from ActiveDirectory) NOTE: this includes the NETBIOS name to make it unique|
|»» isDomainController|boolean|false|none|Boolean indicating if this host is a Domain Controller|
|»» isGlobalCatalog|boolean¦null|false|none|Boolean indicating if this host is a Global Catalog server|
|»» usnChanged|integer(int64)|false|none|USN from Active Directory|
|»» objectSid|string¦null|false|none|SID from Active Directory|
|»» added|string(date-time)|false|none|UTC Time of when host was Added to NPS|
|»» deleted|boolean|false|none|True if this host has been deleted.|
|»» lastScannedUtc|string(date-time)¦null|false|none|When this host was last scanned (UTC)<br>Used to determine data freshness and identify users/groups that were not found in the most recent scan.<br>Compare with HostUser.LastSeenUtc to detect deleted users.|
|»» scanStartedUtc|string(date-time)¦null|false|none|When the current scan started (UTC).<br>Set when scan begins, used during scan for last_seen_utc timestamps.<br>Cleared when scan completes (copied to LastScannedUtc).|
|»» isVirtual|boolean|false|none|True if not a real host<br>Used for AzureAD tenants|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» domainConfigId|string(uuid)¦null|false|none|When a resource represents an AD domain then we need to link to it|
|» websiteId|string(uuid)¦null|false|none|When a resource represents a website then we need to link to it|
|» website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|This is the detail record for web-type manged resources|
|»» id|string(uuid)|false|none|Unique Id|
|»» name|string¦null|false|none|required - name of Website|
|»» avatarUrl|string¦null|false|none|optional - URL to avatar image (size 96x96)|
|»» associatedResourceId|string(uuid)¦null|false|none|A ManagedResource entity representing the server that hosts this website|
|»» logonUrl|string¦null|false|none|Where to send the browser for the user to get into the site; typically a login page|
|»» uris|[[SbPAM.Models.WebsiteUri](../Models/sbpam.models.websiteuri.md)]¦null|false|none|List of whole URIs or match patterns that this website incorporates|
|»»» id|string(uuid)|false|none|none|
|»»» websiteId|string(uuid)|false|none|none|
|»»» website|[SbPAM.Models.Website](../Models/sbpam.models.website.md)|false|none|This is the detail record for web-type manged resources|
|»»» uri|string¦null|false|none|none|
|»»» match|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)(int32)|false|none|none|
|»»» matchType|[SbPAM.Models.WebsiteUriMatchType](../Models/sbpam.models.websiteurimatchtype.md)(int32)|false|none|none|
|»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» isVirtual|boolean|false|none|True if not a real website<br>Used for AzureAD tenants|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» azureAdTenantId|string(uuid)¦null|false|none|When a resource represents an AzureAD tenant then we need to link to it|
|» azureAdTenant|[SbPAM.Models.AzureAdTenant](../Models/sbpam.models.azureadtenant.md)|false|none|none|
|»» id|string(uuid)|false|none|Unique Id|
|»» name|string¦null|false|none|Required - name of AzureAD tenant|
|»» description|string¦null|false|none|Description of the AzureAD tenant|
|»» tenantId|string¦null|false|none|Required - tenant identifier<br>"https://login.microsoftonline.com/$TenantId/oauth2/v2.0/token"|
|»» logonUrl|string¦null|false|none|Required - where to send the browser for the user to get into the site; typically a login page|
|»» emailDomain|string¦null|false|none|The '@whatever.com' part of the email address<br>Activity Token random characters will form the prefix|
|»» associatedDomainId|string(uuid)¦null|false|none|Optional link to ActiveDirectory domain|
|»» processGroupMembership|boolean|false|none|Enable/disable group membership processing|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» secretVaultId|string(uuid)¦null|false|none|When a resource represents a Secret Vault we need a link to it|
|» secretVault|[SbPAM.Models.SecretVault](../Models/sbpam.models.secretvault.md)|false|none|none|
|»» id|string(uuid)|false|read-only|none|
|»» name|string¦null|false|none|none|
|»» description|string¦null|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» managedDatabaseId|string(uuid)¦null|false|none|When a resource represents a database we need a link to it|
|» managedDatabase|[SbPAM.Models.ManagedDatabase](../Models/sbpam.models.manageddatabase.md)|false|none|none|
|»» id|string(uuid)|false|none|Unique id and DB key for this resource.|
|»» name|string¦null|false|none|Name of this managed resource.|
|»» server|string¦null|false|none|none|
|»» port|integer(int32)|false|none|none|
|»» type|[SbPAM.Models.Common.DatabaseType](../Models/sbpam.models.common.databasetype.md)(int32)|false|none|none|
|»» hostDatabaseId|string(uuid)¦null|false|none|none|
|»» domainId|string(uuid)¦null|false|none|none|
|»» integratedSecurity|boolean|false|none|For SQL|
|»» trustServerCertificate|boolean|false|none|none|
|»» encrypted|boolean|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» platformId|string(uuid)¦null|false|none|Id of platform for this resource.|
|» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»» id|string(uuid)|false|none|Unique identifier for this platform.|
|»» name|string¦null|false|none|Name for this platform.|
|»» description|string¦null|false|none|Description for this platform.|
|»» builtInAccount|string¦null|false|none|Built-in account for this platform.|
|»» passwordComplexityPolicyId|string(uuid)¦null|false|none|Password complexity policy Id for this platform.|
|»» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|Password complexity model|
|»»» id|string(uuid)|false|none|Unique identifier for the object|
|»»» name|string¦null|false|none|The name of the password complexity|
|»»» description|string¦null|false|none|The description of the password complexity|
|»»» lowerCase|boolean|false|none|Use at least one lowercase character|
|»»» upperCase|boolean|false|none|Use at least one uppercase character|
|»»» specialCharacter|boolean|false|none|Use at least one special character|
|»»» space|boolean|false|none|none|
|»»» numeric|boolean|false|none|none|
|»»» mustEndWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»» mustStartWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»»» length|integer(int32)|false|none|none|
|»»» maxConsecutive|integer(int32)|false|none|none|
|»»» charsToExclude|string¦null|false|none|none|
|»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» type|[SbPAM.Models.PasswordComplexityTypeEnum](../Models/sbpam.models.passwordcomplexitytypeenum.md)(int32)|false|none|Password complexity type enum|
|»» scheduledChangePolicyId|string(uuid)¦null|false|none|Password change schedule policy Id for this platform.|
|»» scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|»»» id|string(uuid)|false|none|The unique identifier of the scheduled change policy.|
|»»» name|string¦null|false|none|The name of the scheduled change policy.|
|»»» description|string¦null|false|none|The description of the scheduled change policy.|
|»»» frequency|any|false|none|none|
|»»» periodValue|integer(int32)|false|none|The period value of the scheduled change.|
|»»» daysOfWeek|string¦null|false|none|The days of the week on which the scheduled change occurs.|
|»»» dayNumber|integer(int32)|false|none|The day of the month on which the scheduled change occurs.|
|»»» localTime|string(date-time)|false|none|The local time at which the scheduled change occurs.|
|»»» utcTime|string(date-time)¦null|false|none|The UTC time at which the scheduled change occurs.|
|»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» protectionPolicyScheduleId|string(uuid)¦null|false|none|Protection policy schedule Id for this platform.|
|»» protectionPolicySchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|»» scanScheduleId|string(uuid)¦null|false|none|Scan schedule Id for this platform.|
|»» scanSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|»» verificationScheduleId|string(uuid)¦null|false|none|Password verification schedule Id for this platform.|
|»» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|»» resetOnMismatch|boolean|false|none|Password reset on mismatch.|
|»» icon|string(byte)¦null|false|none|Icon for this platform.|
|»» basePlatformId|string(uuid)¦null|false|none|Base platform ID for this platform.|
|»» os|string¦null|false|none|OS is the list of operating systems returned by uname - this is for custom platform support|
|»» type|[SbPAM.Models.PlatformTypeEnum](../Models/sbpam.models.platformtypeenum.md)(int32)|false|none|Platform types|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» showCommandPlans|boolean|false|none|Indicates to show command plans.|
|»» permanent|boolean|false|none|Permanent is set true for base platforms that cannot be deleted|
|» displayName|string¦null|false|none|Display name for resource.|
|» ipAddress|string¦null|false|none|IP Address for resource.|
|» serviceAccountId|string(uuid)¦null|false|none|Service Account used to connect to the resource.|
|» serviceAccount|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»» id|string(uuid)|false|none|Unique id and DB key for this credential.|
|»» domain|string¦null|false|none|Domain|
|»» username|string¦null|false|none|Username|
|»» password|string¦null|false|none|Password (encrypted while persisted).|
|»» salt|string¦null|false|none|Some salt for the password encryption|
|»» enablePassword|string¦null|false|none|Enable Password (encrypted while persisted).|
|»» enableSalt|string¦null|false|none|Some salt for the enable password encryption|
|»» name|string¦null|false|none|Name for this username password pair|
|»» description|string¦null|false|none|Description for username password pair|
|»» type|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)(int32)|false|none|none|
|»» userId|string(uuid)¦null|false|none|Host User Id, if there is one|
|»» managedAccountId|string(uuid)¦null|false|none|Host User Id, if there is one|
|»» platformId|string(uuid)¦null|false|none|Platform identifier for these credentials<br>Use this to group credentials for a platform|
|»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»» sudoCommand|string¦null|false|none|Command to use for elevated commands on Linux, default "sudo".|
|»» passwordVaultConnectorId|string(uuid)¦null|false|none|Id for password vault integration connector for these credentials<br>Use this to manage credentials for this user.|
|»» passwordVaultConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»» id|string(uuid)|false|none|Unique identifier for this integration connector.|
|»»» name|string¦null|false|none|Name for integration connector.|
|»»» description|string¦null|false|none|Description for integration connector|
|»»» connectorConfigurationId|string(uuid)|false|none|Configuration Id for integration connector|
|»»» connectorTemplateId|string(uuid)|false|none|The template that this connector is based on.|
|»»» monitorActionQueueId|string(uuid)¦null|false|none|Id of periodic action queue to execute, e.g. to fetch managed user list for a password vault.|
|»»» monitorActionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»» id|string(uuid)|false|none|Unique id and DB key for this action queue.|
|»»»» actionJobId|string(uuid)¦null|false|none|Action Job that created this ActionQueue|
|»»»» runUserId|string(uuid)¦null|false|none|Id associated with the logged in user which created this action queue.|
|»»»» managedResourceId|string(uuid)¦null|false|none|Id associated with the target resource for this action queue.|
|»»»» timeCreated|string(date-time)|false|none|When this action queue was created.|
|»»»» timeStarted|string(date-time)|false|none|When this action queue started execution.|
|»»»» timeFinished|string(date-time)|false|none|When this action queue finished execution.|
|»»»» heartBeatDateTimeUtc|string(date-time)|false|none|Heartbeat for this ActionQueue - this gets updated when an ActionQueueAction<br>associated with the Queue is updated.<br>If the Queue isn't updated frequently enough, the scheduler will<br>post a healthcheck for it|
|»»»» status|any|false|none|none|
|»»»» statusDescription|string¦null|false|none|Human readable description of the action queue status.|
|»»»» failureReason|any|false|none|none|
|»»»» actionGroupId|string(uuid)|false|none|Id of action group associated with this action queue.|
|»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»» id|string(uuid)|false|none|Unique id and DB key for this action group.|
|»»»»» name|string¦null|false|none|Human readable name for this action group.|
|»»»»» description|string¦null|false|none|Human readable desciption for this action group.|
|»»»»» trigger|boolean|false|none|Not used???|
|»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|When this action group was created.|
|»»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When this action group was last modified.|
|»»»»» nodeId|string(uuid)|false|none|none|
|»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions associated with this action group.|
|»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»»» actionTemplateId|string(uuid)|false|none|Id of template for this action.|
|»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»» createdBy|string(uuid)¦null|false|none|none|
|»»»»»»» lastModifiedBy|string(uuid)¦null|false|none|none|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this template.|
|»»»»»»» displayName|string¦null|false|none|Name for this template.|
|»»»»»»» description|string¦null|false|none|Human readable description of this template.|
|»»»»»»» newActionDisplayName|string¦null|false|none|Optional alternative to DisplayName for populating new actions's .DisplayName<br>properties. This is also a template. It can include bracketed parameter names<br>to insert parameter vales (e.g., "Add User to '{GroupToUpdate}' Group").|
|»»»»»»» icon|string¦null|false|none|Icon for this template.|
|»»»»»»» definition|string¦null|false|none|Human readable definition of this template.|
|»»»»»»» userDefined|boolean|false|none|True if created by a user???|
|»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|List of parameters defined for this template.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»» name|string¦null|false|none|Name for this parameter.|
|»»»»»»»» displayName|string¦null|false|none|Long name for this parameter.|
|»»»»»»»» description|string¦null|false|none|Human readable description for this parameter.|
|»»»»»»»» sortOrder|integer(int32)|false|none|The order these will appear in lists and reports|
|»»»»»»»» required|boolean|false|none|True if parameter is required.|
|»»»»»»»» type|any|false|none|none|
|»»»»»»»» multiline|boolean|false|none|Tell UI to make this multiline|
|»»»»»»»» defaultValue|string¦null|false|none|Default value.|
|»»»»»»»» shouldSerialize_ValueSet|boolean|false|read-only|Allowed values (if restricted).|
|»»»»»»»» _ValueSet|string¦null|false|none|none|
|»»»»»»»» valueSet|[string]¦null|false|none|none|
|»»»»»»»» limitToValueSet|boolean|false|none|If true (default) and .ValueSet is given then the user may not enter something off that list|
|»»»»»»»» helperText|string¦null|false|none|none|
|»»»»»»»» actionTemplateId|string(uuid)¦null|false|none|Id of action template which contains this parameter.|
|»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»» action|[[SbPAM.Models.Action](../Models/sbpam.models.action.md)]¦null|false|none|List of actions derived from this template.|
|»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|List of action template demands derived from this template.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this demand template.|
|»»»»»»»» name|string¦null|false|none|Name of this demand template.|
|»»»»»»»» value|string¦null|false|none|Value of this demand template.|
|»»»»»»»» type|any|false|none|none|
|»»»»»»»» actionTemplateId|string(uuid)|false|none|Id of action template used to associate an action with this demand template.|
|»»»»»»»» actionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»» actionPackId|string(uuid)¦null|false|none|none|
|»»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» icon|string¦null|false|none|none|
|»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»» version|string¦null|false|none|none|
|»»»»»»»»» timeoutOverride|integer(int32)|false|none|none|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»» actionTemplate|[[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)]¦null|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»»»» actionTemplateParameter|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]¦null|false|none|[This model represents a template for a parameter associated with an action group action.]|
|»»»»»»»»» actionTemplateDemand|[[SbPAM.Models.ActionTemplateDemand](../Models/sbpam.models.actiontemplatedemand.md)]¦null|false|none|This model represents a demand template that is used to find an action service<br>    that can process a particular type of action.  This is done by searching for<br>    this demand template using the template id associated with the action and<br>    then matching this demand template's name and value against a property associated<br>    with a registered action service.|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»» actionPackId|string(uuid)¦null|false|none|Id of action pack which contains this template|
|»»»»»»» actionPack|[SbPAM.Models.ActionPack](../Models/sbpam.models.actionpack.md)|false|none|none|
|»»»»»»» classification|any|false|none|none|
|»»»»»»» pairedActionTemplateId|string(uuid)¦null|false|none|Reference to another template representing the end to this start or start to this end action|
|»»»»»»» pairedActionTemplate|[SbPAM.Models.ActionTemplate](../Models/sbpam.models.actiontemplate.md)|false|none|This model represents an action template that is associated with an action group action.<br>    The action template|
|»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»» actionGroupId|string(uuid)|false|none|Id for action group that this action belongs to.|
|»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»» actionParameter|[[SbPAM.Models.ActionParameter](../Models/sbpam.models.actionparameter.md)]¦null|false|none|Parameters associated with this action.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»» continueOnFail|boolean|false|none|If true then next action in action group will be executed<br>    even if this action fails.|
|»»»»»» executionOrder|integer(int32)|false|none|This determines the order of execution of the actions<br>    in this action group.  Lowest value first.|
|»»»»»» executionPath|string¦null|false|none|Path for conditial execution.<br>Notes:<br>    Any action step can return { "ExecutionPath": "path"}<br>    Subsequent actions will only execute if its path matches "path"<br>    or its path is null.|
|»»»»»» timeout|integer(int32)¦null|false|none|This defines a timeout for the action, in seconds,<br>    after which it will be failed if it hasn't completed.|
|»»»»»» displayName|string¦null|false|none|Human readable description of this action.|
|»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|Current action queues which refer to this action, if any.|
|»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action.|
|»»»»»»» actionQueueId|string(uuid)|false|none|Id of action queue which contains this action.|
|»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»»» actionId|string(uuid)|false|none|Id of action group action which was used to create this action queue action.|
|»»»»»»» action|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»»»» status|any|false|none|none|
|»»»»»»» jobType|[SbPAM.Models.ActionJobType](../Models/sbpam.models.actionjobtype.md)(int32)|true|none|none|
|»»»»»»» statusDescription|string¦null|false|none|Human readable description of the action status.|
|»»»»»»» result|string¦null|false|none|Json result.|
|»»»»»»» results|string¦null|false|none|Json results from previous steps.|
|»»»»»»» actionQueueActionParameter|[[SbPAM.Models.ActionQueueActionParameter](../Models/sbpam.models.actionqueueactionparameter.md)]¦null|false|none|Dynamic parameters associated with this action.<br>Note: These may override the static parameters saved with the action group action.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|»»»»»»»» value|string¦null|false|none|Value for this parameter.|
|»»»»»»»» actionTemplateParameterId|string(uuid)|false|none|Id of action template associated with this parameter.|
|»»»»»»»» actionTemplateParameter|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|This model represents a template for a parameter associated with an action group action.|
|»»»»»»»» actionId|string(uuid)|false|none|Id of action associated with this parameter.|
|»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action to which this parameter belongs.|
|»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»»» actionLog|[[SbPAM.Models.ActionLog](../Models/sbpam.models.actionlog.md)]¦null|false|none|Log entries associated with the execution of this action queue action.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this action log entry.|
|»»»»»»»» type|any|false|none|none|
|»»»»»»»» hResult|integer(int32)|false|none|Internal reason for action failure if available.|
|»»»»»»»» timestamp|string(date-time)|false|none|When this log entry was created.|
|»»»»»»»» message|string¦null|false|none|Human readable message associate with this log entry.|
|»»»»»»»» version|string¦null|false|none|Current version captured in the log.|
|»»»»»»»» actionQueueActionId|string(uuid)|false|none|Id of action queue action associated with this log entry.|
|»»»»»»»» actionQueueAction|[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)|false|none|This model represents an action which is a member of an action queue and can be execute by and action service.|
|»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»» actionServiceId|string(uuid)¦null|false|none|Id of action service which was selected to execute this action.|
|»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service.|
|»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»» name|string¦null|false|none|Host name for this service.|
|»»»»»»»» added|string(date-time)|false|none|When this service was registered.|
|»»»»»»»» refreshToken|string¦null|false|none|Refresh token to the service (encrypted)|
|»»»»»»»» appTokenId|string(uuid)¦null|false|none|Id of App token assigned to this service.|
|»»»»»»»» appToken|[SbPAM.Models.AppToken](../Models/sbpam.models.apptoken.md)|false|none|This model represents a token that can be used by a service for authorization.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this token.|
|»»»»»»»»» name|string¦null|false|none|Name for this token.|
|»»»»»»»»» description|string¦null|false|none|Human readable description of this token.|
|»»»»»»»»» token|string¦null|false|none|Encrypted JWT Authorization BEARER token.|
|»»»»»»»»» tokenSalt|string¦null|false|none|Salt for token encryption.|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When this token was created.|
|»»»»»»»»» expirationDate|string(date-time)|false|none|Expiration date/time for this token.|
|»»»»»»»»» revoked|boolean|false|none|True if this token has been revoked.|
|»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this token.|
|»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»» status|any|false|none|none|
|»»»»»»»» description|string¦null|false|none|Human readable description of service status.|
|»»»»»»»» version|string¦null|false|none|Version number reported by the service.|
|»»»»»»»» serviceRegistrationId|string(uuid)¦null|false|none|Id of service registration associated with this service.|
|»»»»»»»» serviceRegistration|[SbPAM.Models.ServiceRegistration](../Models/sbpam.models.serviceregistration.md)|false|none|This model represents a registration for a remote service.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this service registration.|
|»»»»»»»»» type|[SbPAM.Models.RegisteredServiceType](../Models/sbpam.models.registeredservicetype.md)(int32)|false|none|none|
|»»»»»»»»» dnsHostName|string¦null|false|none|Host name for this service registration.|
|»»»»»»»»» credentialId|string(uuid)¦null|false|none|Id of credentials for host.|
|»»»»»»»»» serviceName|string¦null|false|none|Service name for this service registration.|
|»»»»»»»»» settingsFilePath|string¦null|false|none|Settings file path for this service registration.|
|»»»»»»»»» settingsFileContents|string¦null|false|none|Settings file contents for this service registration.|
|»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of logged in user who created this registration.|
|»»»»»»»»» actionQueueId|string(uuid)¦null|false|none|Id of action queue which registers this service.|
|»»»»»»»»» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»» actionServiceProperty|[[SbPAM.Models.ActionServiceProperty](../Models/sbpam.models.actionserviceproperty.md)]¦null|false|none|A list of properties associated with this service.|
|»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this property.|
|»»»»»»»»» name|string¦null|false|none|Name of this property.|
|»»»»»»»»» value|string¦null|false|none|Value of this property.|
|»»»»»»»»» actionServiceId|string(uuid)|false|none|Id of action service which owns this property.|
|»»»»»»»»» registeredService|[SbPAM.Models.RegisteredService](../Models/sbpam.models.registeredservice.md)|false|none|This model represents a registration for an service.|
|»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|A list of action queue actions currently active on this service if this is an action service.|
|»»»»»»»» serviceNodeId|string(uuid)¦null|false|none|Id of the node this service is running from|
|»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|This model represents a group of managed resources.|
|»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»»» name|string¦null|false|none|Name of this group.|
|»»»»»»»» type|[SbPAM.Models.ManagedResourceGroupType](../Models/sbpam.models.managedresourcegrouptype.md)(int32)|false|none|none|
|»»»»»»»» platformId|string(uuid)¦null|false|none|If this is a built-in platform resource group then for which platform?|
|»»»»»»»» manageAccounts|[SbPAM.Models.ManagedResourceGroupManageAccountsEnum](../Models/sbpam.models.managedresourcegroupmanageaccountsenum.md)(int32)|false|none|How to manage built-in accounts for managed resource group.|
|»»»»»»»» notificationEmailList|string¦null|false|none|Comma-delimited list of email addresses to send notifications to|
|»»»»»»»» nodeId|string(uuid)|false|none|Support multi-master data clustering|
|»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Created date and time in UTC.|
|»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Modified date and time in UTC.|
|»»»»»»»» managedResourceJoin|[[SbPAM.Models.ManagedResourceJoin](../Models/sbpam.models.managedresourcejoin.md)]¦null|false|read-only|Managed resources in this group via join table.|
|»»»»»»»»» managedResourceId|string(uuid)|false|none|Id of managed resource.<br><example>435c8527-51b8-4e7d-b2f9-16349706ba55</example>|
|»»»»»»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»»»»»»»»» managedResourceGroupId|string(uuid)|false|none|Id of managed resource group.<br><example>435c8527-51b8-4e7d-b2f9-16349706ba55</example>|
|»»»»»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|This model represents a group of managed resources.|
|»»»»»»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»»»»»»»» managedResourceGroupPolicyJoin|[[SbPAM.Models.ManagedResourceGroupPolicyJoin](../Models/sbpam.models.managedresourcegrouppolicyjoin.md)]¦null|false|read-only|Policies which reference this group via join table.|
|»»»»»»»»» managedResourceGroupId|string(uuid)|false|none|Id of managed resource group.|
|»»»»»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|This model represents a group of managed resources.|
|»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this item.|
|»»»»»»»»»» name|string¦null|false|none|Name of this policy.|
|»»»»»»»»»» description|string¦null|false|none|Human readable description of this policy.|
|»»»»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this policy.|
|»»»»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|»»»»»»»»»»» id|string(uuid)|false|none|Unique id for this collection.|
|»»»»»»»»»»» name|string¦null|false|none|Name for this collection of configuration settings.|
|»»»»»»»»»»» description|string¦null|false|none|Description of the collection.|
|»»»»»»»»»»» type|[SbPAM.Models.ActivityConfigurationType](../Models/sbpam.models.activityconfigurationtype.md)(int32)|false|none|none|
|»»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this collection.|
|»»»»»»»»»»» modifiedBy|string(uuid)¦null|false|none|Id of user that modified this collection.|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Creation date time in UTC|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Modified date time in UTC|
|»»»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»» activityConfigurationSettings|[[SbPAM.Models.ActivityConfigurationSetting](../Models/sbpam.models.activityconfigurationsetting.md)]¦null|false|none|Settings which are part of this collection.|
|»»»»»»»»»»»» id|string(uuid)|false|none|Unique id for this setting.|
|»»»»»»»»»»»» name|string¦null|false|none|Display Name for this configuration setting.|
|»»»»»»»»»»»» key|string¦null|false|none|Key for this setting.|
|»»»»»»»»»»»» value|string¦null|false|none|Value for this setting.|
|»»»»»»»»»»»» type|[SbPAM.Models.ActivityConfigurationSettingType](../Models/sbpam.models.activityconfigurationsettingtype.md)(int32)|false|none|none|
|»»»»»»»»»»»» activityConfigurationId|string(uuid)|false|none|Id of configuration collection to which this setting belongs.|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»» customFields|[[SbPAM.Models.CustomField](../Models/sbpam.models.customfield.md)]¦null|false|none|none|
|»»»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»»»» activityConfigurationId|string(uuid)|false|none|none|
|»»»»»»»»»»»» customFieldNumber|integer(int32)|false|none|none|
|»»»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»»»» label|string¦null|false|none|none|
|»»»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»»»» options|string¦null|false|none|none|
|»»»»»»»»»»»» length|integer(int32)¦null|false|none|none|
|»»»»»»»»»»»» customFieldDataType|[SbPAM.Models.CustomFieldDataType](../Models/sbpam.models.customfielddatatype.md)(int32)|false|none|none|
|»»»»»»»»»»»» required|boolean|false|none|none|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»» deleteAccount|boolean|false|none|none|
|»»»»»»»»»»» sessionRetryInterval|integer(int32)¦null|false|none|none|
|»»»»»»»»»»» approvedWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»»»»»» notifyApproversWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»»»»»» maxSessionLength|integer(int32)¦null|false|none|none|
|»»»»»»»»»»» allowSessionExtension|boolean|false|none|none|
|»»»»»»»»»»» sessionExtensionMinutes|integer(int32)¦null|false|none|none|
|»»»»»»»»»»» sessionExtensionCount|integer(int32)¦null|false|none|none|
|»»»»»»»»»»» sessionMonitorInterval|integer(int32)¦null|false|none|none|
|»»»»»»»»»»» expirationTimeoutThreshold|integer(int32)¦null|false|none|none|
|»»»»»»»»»»» rdpProxyHost|string¦null|false|none|none|
|»»»»»»»»»»» sshProxyHost|string¦null|false|none|none|
|»»»»»»»»»»» sshScanDc|boolean|false|none|none|
|»»»»»»»»»»» recordAudio|boolean|false|none|none|
|»»»»»»»»»»» proxyAutoConnect|boolean|false|none|none|
|»»»»»»»»»»» record|boolean|false|none|none|
|»»»»»»»»»»» recordKeystrokes|boolean|false|none|none|
|»»»»»»»»»»» approvalTypeRequired|[SbPAM.Models.ApprovalType](../Models/sbpam.models.approvaltype.md)(int32)|false|none|none|
|»»»»»»»»»»» approvalWorkflowId|string(uuid)¦null|false|none|none|
|»»»»»»»»»»» approvalWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|»»»»»»»»»»» monitorEntireSession|boolean|false|none|none|
|»»»»»»»»»»» allowViewPassword|boolean|false|none|none|
|»»»»»»»»»»» allowPasswordAccess|boolean|false|none|none|
|»»»»»»»»»»» allowAutofillPassword|boolean|false|none|none|
|»»»»»»»»»»» leaveInGroup|boolean|false|none|none|
|»»»»»»»»»»» activityTokenComplexity|string(uuid)¦null|false|none|none|
|»»»»»»»»»»» clearWebsiteDataAfterStop|boolean|false|none|none|
|»»»»»»»»»»» clearWebsiteDataBeforeStart|boolean|false|none|none|
|»»»»»»»»»»» notesRequired|boolean|false|none|none|
|»»»»»»»»»»» ticketRequired|boolean|false|none|none|
|»»»»»»»»»»» viewPasswordInSeconds|integer(int32)¦null|false|none|none|
|»»»»»»»»»»» commandRestrictionId|string(uuid)¦null|false|none|none|
|»»»»»»»»»»» commandRestriction|[SbPAM.Models.CommandRestriction](../Models/sbpam.models.commandrestriction.md)|false|none|none|
|»»»»»»»»»»»» id|string(uuid)|false|none|Unique identifier|
|»»»»»»»»»»»» name|string|true|none|Unique name for the command restriction|
|»»»»»»»»»»»» emailRecipient|string(email)¦null|false|none|Email address to send notifications|
|»»»»»»»»»»»» commandRestrictionSettings|[[SbPAM.Models.CommandRestrictionSetting](../Models/sbpam.models.commandrestrictionsetting.md)]¦null|false|none|List of command restriction settings|
|»»»»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»»»»» commandRestrictionId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» commandRestrictionSettingNumber|integer(int32)|false|none|none|
|»»»»»»»»»»»»» active|boolean|false|none|none|
|»»»»»»»»»»»»» email|boolean|false|none|none|
|»»»»»»»»»»»»» emailRecipient|string¦null|false|none|none|
|»»»»»»»»»»»»» lockMessage|string¦null|false|none|Custom Lock message|
|»»»»»»»»»»»»» commandRestrictionMatchType|[SbPAM.Models.CommandRestrictionMatchType](../Models/sbpam.models.commandrestrictionmatchtype.md)(int32)|false|none|none|
|»»»»»»»»»»»»» commandRestrictionActionType|[SbPAM.Models.CommandRestrictionActionType](../Models/sbpam.models.commandrestrictionactiontype.md)(int32)|false|none|none|
|»»»»»»»»»»»»» match|string¦null|false|none|none|
|»»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»» serviceNowConnectorId|string(uuid)¦null|false|none|none|
|»»»»»»»»»»» serviceNowConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»»»»»»»» priority|integer(int32)|false|none|Priority of this policy relative to other matching policies.<br>Note: 0 is the lowest priority.|
|»»»»»»»»»» isDisabled|boolean|false|none|True if this policy has been disabled.|
|»»»»»»»»»» isDeleted|boolean|false|none|True if this policy has been deleted.|
|»»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»»»» managedAccountPolicyJoin|[[SbPAM.Models.ManagedAccountPolicyJoin](../Models/sbpam.models.managedaccountpolicyjoin.md)]¦null|false|none|Managed account(s) referenced by this policy via join table.|
|»»»»»»»»»»» managedAccountId|string(uuid)|false|none|Id of managed account.|
|»»»»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|This model represents a managed account.|
|»»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this account.|
|»»»»»»»»»»»» name|string¦null|false|none|Name of this user.|
|»»»»»»»»»»»» type|[SbPAM.Models.ManagedAccountType](../Models/sbpam.models.managedaccounttype.md)(int32)|false|none|none|
|»»»»»»»»»»»» locked|boolean|false|none|Activity Lock - while true prevents from creating new activities|
|»»»»»»»»»»»» userId|string(uuid)¦null|false|none|AD user id associated with this user.|
|»»»»»»»»»»»» managedAccountJoin|[[SbPAM.Models.ManagedAccountJoin](../Models/sbpam.models.managedaccountjoin.md)]¦null|false|none|Groups to which this account belongs via join table.|
|»»»»»»»»»»»»» managedAccountId|string(uuid)|false|none|Id of managed account.|
|»»»»»»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|This model represents a managed account.|
|»»»»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|Id of managed account group.|
|»»»»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|This model represents a group of managed accounts.|
|»»»»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»»»»»»»»» name|string¦null|false|none|Name of this group.|
|»»»»»»»»»»»»»» type|[SbPAM.Models.ManagedAccountGroupType](../Models/sbpam.models.managedaccountgrouptype.md)(int32)|false|none|none|
|»»»»»»»»»»»»»» groupId|string(uuid)¦null|false|none|AD group id if this is an active directory group|
|»»»»»»»»»»»»»» mfaConnectorId|string(uuid)¦null|false|none|Alternate MFA provider for members of this group. Override this at the User level.|
|»»»»»»»»»»»»»» isReviewer|boolean|false|none|Is assigned reviewer role (for AccessCertification)|
|»»»»»»»»»»»»»» managedAccountJoin|[[SbPAM.Models.ManagedAccountJoin](../Models/sbpam.models.managedaccountjoin.md)]¦null|false|none|Managed accounts in this group via join table.|
|»»»»»»»»»»»»»» managedAccountGroupPolicyJoin|[[SbPAM.Models.ManagedAccountGroupPolicyJoin](../Models/sbpam.models.managedaccountgrouppolicyjoin.md)]¦null|false|none|Policies which reference this account group via join table.|
|»»»»»»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|Id of managed account group.|
|»»»»»»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|This model represents a group of managed accounts.|
|»»»»»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»»»»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»»»»»»»»» groupCollectionJoin|[[SbPAM.Models.GroupCollectionJoin](../Models/sbpam.models.groupcollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed account groups and user collections.|
|»»»»»»»»»»»»»»» managedAccountGroupId|string(uuid)|false|none|Id of Managed Account Group.|
|»»»»»»»»»»»»»»» managedAccountGroup|[SbPAM.Models.ManagedAccountGroup](../Models/sbpam.models.managedaccountgroup.md)|false|none|This model represents a group of managed accounts.|
|»»»»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|Id of User Collection.|
|»»»»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»»»»»»»» userCollectionJoin|[[SbPAM.Models.UserCollectionJoin](../Models/sbpam.models.usercollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed accounts and user collections.|
|»»»»»»»»»»»»»»»»» managedAccountId|string(uuid)|false|none|Id of Managed Account.|
|»»»»»»»»»»»»»»»»» managedAccount|[SbPAM.Models.ManagedAccount](../Models/sbpam.models.managedaccount.md)|false|none|This model represents a managed account.|
|»»»»»»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|Id of User Collection.|
|»»»»»»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»»»»»» groupCollectionJoin|[[SbPAM.Models.GroupCollectionJoin](../Models/sbpam.models.groupcollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed account groups and user collections.|
|»»»»»»»»»»»»»»»» userAndGroupCollectionPolicyJoin|[[SbPAM.Models.UserAndGroupCollectionPolicyJoin](../Models/sbpam.models.userandgroupcollectionpolicyjoin.md)]¦null|false|read-only|none|
|»»»»»»»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»»»»»»»» userAndGroupCollectionId|string(uuid)|false|none|none|
|»»»»»»»»»»»»»»»»» userAndGroupCollection|[SbPAM.Models.UserAndGroupCollection](../Models/sbpam.models.userandgroupcollection.md)|false|none|none|
|»»»»»»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»»»»»»» isReviewer|boolean|false|none|none|
|»»»»»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»»» managedAccountPolicyJoin|[[SbPAM.Models.ManagedAccountPolicyJoin](../Models/sbpam.models.managedaccountpolicyjoin.md)]¦null|false|none|Policies which reference this account via join table.|
|»»»»»»»»»»»» sid|string¦null|false|none|Sid of user, this should match an existing HostUser|
|»»»»»»»»»»»» userCollectionJoin|[[SbPAM.Models.UserCollectionJoin](../Models/sbpam.models.usercollectionjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between managed accounts and user collections.|
|»»»»»»»»»»»» isReviewer|boolean|false|none|none|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»»» isDeleted|boolean|false|none|Indicates whether this account has been soft-deleted (tombstoned).|
|»»»»»»»»»»»» deletedDateTimeUtc|string(date-time)¦null|false|none|The UTC timestamp when this account was tombstoned. Null if not deleted.|
|»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»»»»» managedAccountGroupPolicyJoin|[[SbPAM.Models.ManagedAccountGroupPolicyJoin](../Models/sbpam.models.managedaccountgrouppolicyjoin.md)]¦null|false|none|Managed account group(s) referenced by this policy via join table.|
|»»»»»»»»»» managedResourcePolicyJoin|[[SbPAM.Models.ManagedResourcePolicyJoin](../Models/sbpam.models.managedresourcepolicyjoin.md)]¦null|false|none|Managed resource(s) referenced by this policy via join table.|
|»»»»»»»»»»» managedResourceId|string(uuid)|false|none|Id of managed resource.|
|»»»»»»»»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|Id of access control policy.|
|»»»»»»»»»»» accessControlPolicy|[SbPAM.Models.AccessControlPolicy](../Models/sbpam.models.accesscontrolpolicy.md)|false|none|This model represents a policy which can be associated with<br>    an elevation session.<br>Policies are matched to a particular group, user and host and sorted by priority<br>    to determine which policy to use.|
|»»»»»»»»»» managedResourceGroupPolicyJoin|[[SbPAM.Models.ManagedResourceGroupPolicyJoin](../Models/sbpam.models.managedresourcegrouppolicyjoin.md)]¦null|false|none|Managed resource group(s) referenced by this policy via join table.|
|»»»»»»»»»» activityJoin|[[SbPAM.Models.ActivityJoin](../Models/sbpam.models.activityjoin.md)]¦null|false|none|Activities referenced by this policy via join table.|
|»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»» activityId|string(uuid)|false|none|none|
|»»»»»»»»»»» activity|[SbPAM.Models.Activity](../Models/sbpam.models.activity.md)|false|none|This model represents an activity that a user can perform such as requesting elevated access to a resource.|
|»»»»»»»»»»»» id|string(uuid)|false|none|Unique identifier for this activity.|
|»»»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this activity.|
|»»»»»»»»»»»» modifiedBy|string(uuid)¦null|false|none|Id of user that modified this activity.|
|»»»»»»»»»»»» name|string¦null|false|none|Activity name - i.e. Add to Local Group|
|»»»»»»»»»»»» description|string¦null|false|none|Description of the activity|
|»»»»»»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this activity.|
|»»»»»»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|»»»»»»»»»»»» platformId|string(uuid)¦null|false|none|Id of platform that this activity can be performed on.|
|»»»»»»»»»»»» platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»»»»»»»»»»»» startActionGroupId|string(uuid)¦null|false|none|Action Group to run at the start of the activity.|
|»»»»»»»»»»»» duringActionGroupId|string(uuid)¦null|false|none|Optional - Action group to run during the activity|
|»»»»»»»»»»»» endActionGroupId|string(uuid)¦null|false|none|Action group to run at the end of the activity.|
|»»»»»»»»»»»» activityType|[SbPAM.Models.ActivityType](../Models/sbpam.models.activitytype.md)(int32)|false|none|Represents the type of activity that will be performed during a session.|
|»»»»»»»»»»»» loginAccount|[SbPAM.Models.ActivityLoginType](../Models/sbpam.models.activitylogintype.md)(int32)|false|none|none|
|»»»»»»»»»»»» loginAccountNameFormat|string¦null|false|none|Login account format.|
|»»»»»»»»»»»» requesterLoginFormat|[SbPAM.Models.RequesterLoginFormat](../Models/sbpam.models.requesterloginformat.md)(int32)|false|none|none|
|»»»»»»»»»»»» applicationToLaunch|string¦null|false|none|Launch proxy from path|
|»»»»»»»»»»»» preferredRDSHostId|string(uuid)¦null|false|none|Managed resource for Remote Desktop Server(RDS)|
|»»»»»»»»»»»» connectCredentialId|string(uuid)¦null|false|none|Connect Account for RDS impersonation|
|»»»»»»»»»»»» createAccount|boolean|false|none|Create local account option for activity|
|»»»»»»»»»»»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](../Models/sbpam.models.activitygroupactivity.md)]¦null|false|none|Many to many relationship between activities and activity groups.|
|»»»»»»»»»»»»» activityId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» activity|[SbPAM.Models.Activity](../Models/sbpam.models.activity.md)|false|none|This model represents an activity that a user can perform such as requesting elevated access to a resource.|
|»»»»»»»»»»»»» activityGroupId|string(uuid)|false|none|none|
|»»»»»»»»»»»»» activityGroup|[SbPAM.Models.ActivityGroup](../Models/sbpam.models.activitygroup.md)|false|none|This model represents an group of activities.|
|»»»»»»»»»»»»»» id|string(uuid)|false|none|Unique identifier for this group.|
|»»»»»»»»»»»»»» createdBy|string(uuid)¦null|false|none|Id of user that created this activity.|
|»»»»»»»»»»»»»» modifiedBy|string(uuid)¦null|false|none|Id of user that modified this activity.|
|»»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Modified date time in UTC|
|»»»»»»»»»»»»»» name|string¦null|false|none|Name for this group.|
|»»»»»»»»»»»»»» description|string¦null|false|none|Description for this group.|
|»»»»»»»»»»»»»» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this group.|
|»»»»»»»»»»»»»» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|»»»»»»»»»»»»»» activityGroupActivities|[[SbPAM.Models.ActivityGroupActivity](../Models/sbpam.models.activitygroupactivity.md)]¦null|false|none|Many to many relationship between activities and activity groups.|
|»»»»»»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»»» deleteAccount|boolean|false|none|For a managed account, delete account when finished when false account will be disabled|
|»»»»»»»»»»»» vaultId|string(uuid)¦null|false|none|Use this vault to lookup the user credentials|
|»»»»»»»»»»»» vaultInfo|string¦null|false|none|Vault properties, JSON string and specific to the Vault|
|»»»»»»»»»»»» logonUrl|string¦null|false|none|Url for site login|
|»»»»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»»»» isUserModified|boolean|false|none|none|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»» isDefault|boolean|false|none|none|
|»»»»»»»»»»» isDeleted|boolean|false|none|none|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»» activityGroupJoin|[[SbPAM.Models.ActivityGroupJoin](../Models/sbpam.models.activitygroupjoin.md)]¦null|false|none|Activity groups referenced by this policy via join table.|
|»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»» activityGroupId|string(uuid)|false|none|none|
|»»»»»»»»»»» activityGroup|[SbPAM.Models.ActivityGroup](../Models/sbpam.models.activitygroup.md)|false|none|This model represents an group of activities.|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»» credentialPolicyJoin|[[SbPAM.Models.CredentialPolicyJoin](../Models/sbpam.models.credentialpolicyjoin.md)]¦null|false|none|Credentials referenced by this policy via join table.|
|»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»» credentialId|string(uuid)|false|none|none|
|»»»»»»»»»»» credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»» credentialGroupPolicyJoin|[[SbPAM.Models.CredentialGroupPolicyJoin](../Models/sbpam.models.credentialgrouppolicyjoin.md)]¦null|false|none|Credential Groups referenced by this policy via join table.|
|»»»»»»»»»»» accessControlPolicyId|string(uuid)|false|none|none|
|»»»»»»»»»»» credentialGroupId|string(uuid)|false|none|none|
|»»»»»»»»»»» credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|»»»»»»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»»»» description|string¦null|false|none|none|
|»»»»»»»»»»»» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between credentials and credential groups.|
|»»»»»»»»»»»»» credentialId|string(uuid)|false|none|Id of credential.|
|»»»»»»»»»»»»» credential|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»»»»»»»»»»»»» credentialGroupId|string(uuid)|false|none|Id of credential group.|
|»»»»»»»»»»»»» credentialGroup|[SbPAM.Models.CredentialGroup](../Models/sbpam.models.credentialgroup.md)|false|none|none|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|none|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»» userAndGroupCollectionPolicyJoin|[[SbPAM.Models.UserAndGroupCollectionPolicyJoin](../Models/sbpam.models.userandgroupcollectionpolicyjoin.md)]¦null|false|none|User and Group Collections referenced by this policy via join table.|
|»»»»»»»»»» policyType|[SbPAM.Models.PolicyType](../Models/sbpam.models.policytype.md)(int32)|false|none|none|
|»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»» manageResourceGroupProtectionPolicyJoin|[[SbPAM.Models.ManageResourceGroupProtectionPolicyJoin](../Models/sbpam.models.manageresourcegroupprotectionpolicyjoin.md)]¦null|false|read-only|Policies which reference this group via join table.|
|»»»»»»»»» managedResourceGroupId|string(uuid)|false|none|Id of managed resource group.|
|»»»»»»»»» managedResourceGroup|[SbPAM.Models.ManagedResourceGroup](../Models/sbpam.models.managedresourcegroup.md)|false|none|This model represents a group of managed resources.|
|»»»»»»»»» protectionPolicyId|string(uuid)|false|none|Id of protect group policy.|
|»»»»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|This model represents a policy which specifies a group or groups to be protected on a collection of managed resources.|
|»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this policy.|
|»»»»»»»»»» name|string¦null|false|none|Name of this policy.|
|»»»»»»»»»» description|string¦null|false|none|Human readable description of this policy.|
|»»»»»»»»»» groupMonitorInterval|integer(int32)|false|none|Protected group monitor interval in minutes.<br>Note: 0 means monitoring is disabled.|
|»»»»»»»»»» isDisabled|boolean|false|none|True if this policy has been disabled.|
|»»»»»»»»»» isDeleted|boolean|false|none|True if this policy has been deleted.|
|»»»»»»»»»» protectionPolicyGroup|[[SbPAM.Models.ProtectionPolicyGroup](../Models/sbpam.models.protectionpolicygroup.md)]¦null|false|none|Protected groups which belong to this policy.|
|»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»»»»»»»»»»» name|string¦null|false|none|Name of this group.|
|»»»»»»»»»»» deleted|boolean|false|none|Has this group been removed from policy?|
|»»»»»»»»»»» protectionPolicyId|string(uuid)|false|none|Id of policy to which this group belongs.|
|»»»»»»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|This model represents a policy which specifies a group or groups to be protected on a collection of managed resources.|
|»»»»»»»»»»» protectionPolicyGroupMember|[[SbPAM.Models.ProtectionPolicyGroupMember](../Models/sbpam.models.protectionpolicygroupmember.md)]¦null|false|none|Members allowed in this group.|
|»»»»»»»»»»»» id|string(uuid)|false|none|Unique id and DB key for this member.|
|»»»»»»»»»»»» userName|string¦null|false|none|UserName of this member.|
|»»»»»»»»»»»» deleted|boolean|false|none|Has this member been removed from its group?|
|»»»»»»»»»»»» userId|string(uuid)¦null|false|none|Id of user if this member is a user.|
|»»»»»»»»»»»» protectionPolicyGroupId|string(uuid)¦null|false|none|Id of group in which this member is allowed.|
|»»»»»»»»»»»» protectionPolicyGroup|[SbPAM.Models.ProtectionPolicyGroup](../Models/sbpam.models.protectionpolicygroup.md)|false|none|This model represents a group protected by a protected group policy.|
|»»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»»»» manageResourceProtectionPolicyJoin|[[SbPAM.Models.ManageResourceProtectionPolicyJoin](../Models/sbpam.models.manageresourceprotectionpolicyjoin.md)]¦null|false|none|Managed resources which use this policy via join table.|
|»»»»»»»»»»» managedResourceId|string(uuid)|false|none|Id of managed resource.|
|»»»»»»»»»»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»»»»»»»»»»» protectionPolicyId|string(uuid)|false|none|Id of protect group policy.|
|»»»»»»»»»»» protectionPolicy|[SbPAM.Models.ProtectionPolicy](../Models/sbpam.models.protectionpolicy.md)|false|none|This model represents a policy which specifies a group or groups to be protected on a collection of managed resources.|
|»»»»»»»»»» manageResourceGroupProtectionPolicyJoin|[[SbPAM.Models.ManageResourceGroupProtectionPolicyJoin](../Models/sbpam.models.manageresourcegroupprotectionpolicyjoin.md)]¦null|false|none|Managed resource groups which use this policy via join table.|
|»»»»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»»»» ouMappingEnabled|boolean|false|none|Is mapping enabled for this group|
|»»»»»»»» ouFqdn|string¦null|false|none|Fully Qualified Domain Name for the mapped OU|
|»»»»»»»» ouDomainConfigId|string(uuid)¦null|false|none|Id of Domain which contains the mapped OU|
|»»»»»»»» ouDomainConfig|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|»»»»»»»» ouAutoOnboard|boolean|false|none|Automatically onboard to SbPAM|
|»»»»»»»» ouIncludeChildren|boolean|false|none|Include chiild OUs in the group|
|»»»»»»»» defaultPlatformId|string(uuid)¦null|false|none|Default platform for auto-onboarded resources from OU.<br>If null, existing auto-detection logic is used.|
|»»»»»»»» defaultPlatform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|none|This model represents an platform on which a particular activity can be performed.|
|»»»»»»»» defaultServiceAccountId|string(uuid)¦null|false|none|Default service account for auto-onboarded resources from OU.<br>If null, no service account is assigned.|
|»»»»»»»» defaultServiceAccount|[SbPAM.Models.Credential](../Models/sbpam.models.credential.md)|false|none|This model represents the stored credentials for a user.|
|»»»»»»»» adGroupMappingEnabled|boolean|false|none|none|
|»»»»»»»» adGroupId|string(uuid)¦null|false|none|none|
|»»»»»»»» adGroup|[SbPAM.ActiveDirectory.Models.ActiveDirectoryGroup](../Models/sbpam.activedirectory.models.activedirectorygroup.md)|false|none|Represents an Active Directory group.|
|»»»»»»»» adGroupDomainConfigId|string(uuid)¦null|false|none|none|
|»»»»»»»» adGroupDomainConfig|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomainConfiguration](../Models/sbpam.activedirectory.models.activedirectorydomainconfiguration.md)|false|none|Represents the configuration for an Active Directory domain.|
|»»»»»»»» adGroupIncludeNested|boolean|false|none|none|
|»»»»»»»» adGroupAutoOnboard|boolean|false|none|none|
|»»»»»»» managedResourceGroupId|string(uuid)¦null|false|none|Managed Resource Group ID for affinity|
|»»»»»»» startTime|string(date-time)|false|none|When the job started|
|»»»»»»» endTime|string(date-time)|false|none|When the job finished|
|»»»»»»» nodeId|string(uuid)|false|none|The action service node id|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|When the job was created|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|When the job was modified|
|»»»»»»» heartbeatUtc|string(date-time)|false|none|Heartbeat is used by the scheduler service to determine if a action job has stalled etc.|
|»»»»»»» complete|boolean|false|none|Complete is set true when the action step has completed successfully or continue on failure|
|»»»»»» createdBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»» lastModifiedBy|string(uuid)¦null|false|none|Logged in user id.|
|»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»» classification|any|false|none|none|
|»»»»»» pairedActionId|string(uuid)¦null|false|none|Reference to another action representing the end to this start or start to this end action|
|»»»»»» pairedAction|[SbPAM.Models.Action](../Models/sbpam.models.action.md)|false|none|This model represents an action which is a member of an action group.|
|»»»»»» isDeleted|boolean|false|none|none|
|»»»»»» isDefault|boolean|false|none|none|
|»»»»»» isUserModified|boolean|false|none|none|
|»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|Current action group jobs which refer to this action group, if any.<br>Note: Is this obsolete???|
|»»»»»» id|string(uuid)|false|none|none|
|»»»»»» actionGroupId|string(uuid)|false|none|none|
|»»»»»» jobId|string(uuid)|false|none|none|
|»»»»»» job|[SbPAM.Models.Job](../Models/sbpam.models.job.md)|false|none|none|
|»»»»»»» id|string(uuid)|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» actionGroupJob|[[SbPAM.Models.ActionGroupJob](../Models/sbpam.models.actiongroupjob.md)]¦null|false|none|none|
|»»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»»» actionGroup|[SbPAM.Models.ActionGroup](../Models/sbpam.models.actiongroup.md)|false|none|This model represents a group of actions which can be performed<br>    in a particular order (by Action.ExecutionOrder) by an action service.|
|»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»» actionQueue|[[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)]¦null|false|none|Current action queues which refer to this action group, if any.|
|»»»» actionQueueAction|[[SbPAM.Models.ActionQueueAction](../Models/sbpam.models.actionqueueaction.md)]¦null|false|none|List of action queue action associate with this action queue.|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» configuration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»» id|string(uuid)|false|none|Unique identifier for available connector.|
|»»»» name|string¦null|false|none|Name for configuration type of connector.|
|»»»» integrationConnector|[SbPAM.Models.IntegrationConnector](../Models/sbpam.models.integrationconnector.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»» integrationConnectorTemplate|[SbPAM.Models.IntegrationConnectorTemplate](../Models/sbpam.models.integrationconnectortemplate.md)|false|none|none|
|»»»»» id|string(uuid)|false|none|Unique identifier for this integration connector.|
|»»»»» name|string¦null|false|none|Name for integration connector, this corresponds to the "type" of the connector|
|»»»»» description|string¦null|false|none|Description for integration connector template.|
|»»»»» type|[SbPAM.Models.IntegrationConnectorType](../Models/sbpam.models.integrationconnectortype.md)(int32)|false|none|none|
|»»»»» configurationId|string(uuid)|false|none|Configuration Id for integration connector template.<br>The configuration of a template provide defaults for a new instance of a connector.|
|»»»»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|List of available connector settings|
|»»»»»» id|string(uuid)|false|none|Unique identifier for connector configuration values.|
|»»»»»» configurationId|string(uuid)|false|none|Unique identifier of connector configuration set.|
|»»»»»» name|string¦null|false|none|Name of configuration value.|
|»»»»»» value|string¦null|false|none|Set value for configuration.|
|»»»»»» defaultValue|string¦null|false|none|Default value for configuration.|
|»»»»»» description|string¦null|false|none|Description for configuration set.|
|»»»»»» displayOrder|integer(int32)|false|none|Numerical order display of configuration set for use in UI.|
|»»»»»» required|boolean|false|none|Determines whether a configuration value is required or optional.|
|»»»»»» connectorId|string(uuid)¦null|false|none|Unique identifier of integration connector|
|»»»»»» integrationConnectorTemplateId|string(uuid)¦null|false|none|Unique identifier of integration connector|
|»»»»»» connectorConfiguration|[SbPAM.Models.ConnectorConfiguration](../Models/sbpam.models.connectorconfiguration.md)|false|none|This model represents integration connectors for Stealthbits products and available third-party apps.|
|»»»»»» type|[SbPAM.Models.ConnectorConfigurationValueType](../Models/sbpam.models.connectorconfigurationvaluetype.md)(int32)|false|none|none|
|»»»»»» helperText|string¦null|false|none|Helper text displayed beneath the field in the UI.|
|»»»»»» advanced|boolean|false|none|Advanced setting|
|»»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»»» configurationValues|[[SbPAM.Models.ConnectorConfigurationValue](../Models/sbpam.models.connectorconfigurationvalue.md)]¦null|false|none|Settings for this connector|
|»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» passwordVaultInfo|string¦null|false|none|Extra info needed for password vault integration.|
|»» changeOnCheckout|boolean¦null|false|none|Settings for managed users on checkout change|
|»» changeOnRelease|boolean¦null|false|none|Settings for managed users on release change|
|»» postSessionAction|[SbPAM.Models.PostSessionAction](../Models/sbpam.models.postsessionaction.md)(int32)|false|none|none|
|»» showPassword|boolean|false|none|none|
|»» credentialJoin|[[SbPAM.Models.CredentialJoin](../Models/sbpam.models.credentialjoin.md)]¦null|false|read-only|This model is used to model the many to many relationship between credentials and credential groups.|
|»» isDeleted|boolean|false|none|Credentials are marked as deleted when the owning user is removed|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» authenticationMethod|[SbPAM.Models.AuthenticationMethodType](../Models/sbpam.models.authenticationmethodtype.md)(int32)|false|none|none|
|»» keyGenAlgorithm|string¦null|false|none|none|
|»» keyLength|integer(int32)¦null|false|none|none|
|»» autoGenPassphrase|boolean¦null|false|none|none|
|»» passphrase|string¦null|false|none|none|
|»» privateKey|string¦null|false|none|none|
|»» publicKey|string¦null|false|none|none|
|»» comment|string¦null|false|none|none|
|» manageAccount|[SbPAM.Models.ManagedResourceManageAccountEnum](../Models/sbpam.models.managedresourcemanageaccountenum.md)(int32)|false|none|none|
|» protectedGroup|[[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)]¦null|false|none|Group(s) protected by this resource.|
|»» id|string(uuid)|false|none|Unique id and DB key for this group.|
|»» name|string¦null|false|none|Name of this group.|
|»» allowedProtectedGroupMember|[[SbPAM.Models.ProtectedGroupMember](../Models/sbpam.models.protectedgroupmember.md)]¦null|false|none|Members allowed in this group.|
|»»» id|string(uuid)|false|none|Unique id and DB key for this member.|
|»»» userName|string¦null|false|none|UserName of this member.|
|»»» userId|string(uuid)¦null|false|none|Id of user if this member is a user.|
|»»» allowedProtectedGroupId|string(uuid)¦null|false|none|Id of group to which this member is allowed.|
|»»» allowedProtectedGroup|[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)|false|none|This model represents a protected group associated with a managed resource.|
|»»» currentProtectedGroupId|string(uuid)¦null|false|none|Id of group to which this member belongs.|
|»»» currentProtectedGroup|[SbPAM.Models.ProtectedGroup](../Models/sbpam.models.protectedgroup.md)|false|none|This model represents a protected group associated with a managed resource.|
|»»» isTransient|boolean|false|none|Transient group membership (was added by a session)|
|»»» isSystem|boolean|false|none|System group membership (was added by policy)|
|»»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» currentProtectedGroupMember|[[SbPAM.Models.ProtectedGroupMember](../Models/sbpam.models.protectedgroupmember.md)]¦null|false|none|Current members in this group.|
|»» managedResourceId|string(uuid)|false|none|Id of managed resource which protects this group.|
|»» managedResource|[SbPAM.Models.ManagedResource](../Models/sbpam.models.managedresource.md)|false|none|This model represents a managed resource such as a Host.|
|»» isSystem|boolean|false|none|Protection policy created by|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» activityConfigurationId|string(uuid)¦null|false|none|Id of configuration collection for this policy.|
|» activityConfiguration|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|» actionQueueId|string(uuid)¦null|false|none|Id of Action queue for the hostscan job of this resource.|
|» actionQueue|[SbPAM.Models.ActionQueue](../Models/sbpam.models.actionqueue.md)|false|none|This model represents a collection of action queue actions associated<br>    with the actions in an action group, which can be scheduled for execution.<br>    The queue is ordered by the Action.ExecutionOrder (lowest to highest).|
|» managedResourceJoin|[[SbPAM.Models.ManagedResourceJoin](../Models/sbpam.models.managedresourcejoin.md)]¦null|false|none|Groups to which this resource belongs via join table.|
|» managedResourcePolicyJoin|[[SbPAM.Models.ManagedResourcePolicyJoin](../Models/sbpam.models.managedresourcepolicyjoin.md)]¦null|false|none|Policies which reference this resource via join table.|
|» manageResourceProtectionPolicyJoin|[[SbPAM.Models.ManageResourceProtectionPolicyJoin](../Models/sbpam.models.manageresourceprotectionpolicyjoin.md)]¦null|false|none|Policies which reference this group via join table.|
|» verificationScheduleId|string(uuid)¦null|false|none|Id for the managed user verification schedule (can override platform, resource schedule id)|
|» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|» passwordComplexityPolicyId|string(uuid)¦null|false|none|Id for password complexity (can override platform, resource password policy id)|
|» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|Password complexity model|
|» portSsh|integer(int32)|false|none|SSH port for the host|
|» portRdp|integer(int32)|false|none|RDP port for the host|
|» portWinRm|integer(int32)|false|none|WinRM port for the host|
|» portWinRmHttps|integer(int32)|false|none|WinRM HTTPS port for the host|
|» winRmHttpSetting|[SbPAM.Models.WinRmHttpSettings](../Models/sbpam.models.winrmhttpsettings.md)(int32)|false|none|none|
|» disableWinRm|boolean|false|none|Do not use WinRM to connect to the host.|
|» acceptThumbprintOnFirstDiscovery|boolean|false|none|Whether to trust the certificate thumbprint found on the host automatically on first scan.|
|» trustedThumbprint|string¦null|false|none|The thumbprint of the certificate that is trusted on the host.|
|» discoveredThumbprint|string¦null|false|none|The thumbprint of the certificate that was last discovered on the host.|
|» sshTrustActionType|any|false|none|none|
|» certificateType|any|false|none|none|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

#### Enumerated Values

|Property|Value|
|---|---|
|type|Host|
|type|Domain|
|type|Website|
|type|AzureAdTenant|
|type|SecretVault|
|type|Database|
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
|type|PostgreSQL|
|type|SqlServer|
|type|Sqlite|
|type|Oracle|
|type|MySql|
|type|Unknown|
|match|Domain|
|match|Exact|
|match|Never|
|match|StartsWith|
|match|Regex|
|match|Host|
|match|All|
|matchType|Domain|
|matchType|Exact|
|matchType|Never|
|matchType|StartsWith|
|matchType|Regex|
|matchType|Host|
|matchType|All|
|type|PostgreSQL|
|type|SqlServer|
|type|Sqlite|
|type|Oracle|
|type|MySql|
|type|Unknown|
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
|type|Configuration|
|type|User|
|type|Service|
|type|ActivityToken|
|type|Application|
|type|VaultUser|
|type|SshKeyCert|
|type|Any|
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
|jobType|Debug|
|jobType|CommandPlanRun|
|type|ActionService|
|type|ProxyService|
|type|AgentService|
|type|EmailService|
|type|ServiceNode|
|type|SchedulerService|
|type|SiemService|
|type|ActiveDirectoryService|
|type|WebService|
|type|RagGateway|
|type|RagPortal|
|type|HostScanService|
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
|type|RagGateway|
|type|RagPortal|
|type|HostScanService|
|type|Unknown|
|type|TestService|
|type|Local|
|manageAccounts|PerResource|
|manageAccounts|Unmanaged|
|manageAccounts|Managed|
|type|Generic|
|type|ConnectionProfile|
|type|EmailSettings|
|type|System|
|type|String|
|type|Integer|
|type|UnsignedInteger|
|type|Boolean|
|type|Guid|
|customFieldDataType|Integer|
|customFieldDataType|String|
|customFieldDataType|Options|
|approvalTypeRequired|Deny|
|approvalTypeRequired|Allow|
|approvalTypeRequired|Workflow|
|approvalTypeRequired|External|
|commandRestrictionMatchType|Keyword|
|commandRestrictionActionType|LogOnly|
|commandRestrictionActionType|Block|
|commandRestrictionActionType|BlockAndLock|
|commandRestrictionActionType|Terminate|
|type|HostUser|
|type|HostService|
|type|HostScheduledTask|
|type|Local|
|type|ActiveDirectory|
|activityType|Interactive|
|activityType|InteractiveAppLaunch|
|activityType|TaskAutomation|
|activityType|CredentialRelease|
|activityType|FileRelease|
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
|policyType|Resource|
|policyType|Credential|
|type|GenericConnector|
|type|StealthAUDITConnector|
|type|PasswordVaultConnector|
|type|ServiceNowConnector|
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
|postSessionAction|Disable|
|postSessionAction|Enable|
|postSessionAction|KeepPrevious|
|authenticationMethod|Password|
|authenticationMethod|SshCertificate|
|authenticationMethod|SshCertificateAndPassword|
|manageAccount|Unmanaged|
|manageAccount|Managed|
|winRmHttpSetting|UseHttp|
|winRmHttpSetting|UseHttpsIfAvailable|
|winRmHttpSetting|UseHttpsOnly|
|winRmHttpSetting|Default|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


