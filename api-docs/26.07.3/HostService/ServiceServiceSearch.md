
##  (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdServiceServiceSearch"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/HostService/ServiceService/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/HostService/ServiceService/Search -Headers $Headers
```

`GET /api/v1/HostService/ServiceService/Search`

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterText|query|string|false|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|parentHostServiceId|query|string(uuid)|false|none|
|childHostServiceId|query|string(uuid)|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "parentHostServiceId": "7f5f72ec-f67a-4b67-a2c2-9fade55ae2b7",
      "parentHostService": {
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
        "lastSeenUtc": "2019-08-24T14:15:22Z",
        "deleted": true,
        "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
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
        "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
        "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
      },
      "childHostServiceId": "8eafebe6-f9a1-4f8d-8863-3248a58409ae",
      "childHostService": {
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
        "lastSeenUtc": "2019-08-24T14:15:22Z",
        "deleted": true,
        "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
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
        "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
        "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9"
      },
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.ActiveDirectory.Models.HostServiceService]](../Models/sbpam.models.datatable_sbpam.activedirectory.models.hostserviceservice.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


