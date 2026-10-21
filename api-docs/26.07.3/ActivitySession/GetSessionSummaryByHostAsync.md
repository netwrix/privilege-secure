
## Get all sessions for a resource (Auth policies: MfaRequired, MfaRequired; roles: Admin,AuditingAndReporting)

<a id="opIdGetSessionSummaryByHostAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/SummaryForResource/{managedResourceId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActivitySession/SummaryForResource/{managedResourceId} -Headers $Headers
```

`GET /api/v1/ActivitySession/SummaryForResource/{managedResourceId}`

<h3 id="get-all-sessions-for-a-resource-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceId|path|string(uuid)|true|Managed resource id|
|orderBy|query|string|false|Order by column|
|orderDescending|query|boolean|false|Use descending sort order|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 10)|
|startDate|query|string(date-time)|false|Find sessions starting after this date|
|endDate|query|string(date-time)|false|Find sessions with start dates before this date|
|filterText|query|string|false|String to search using contains|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "hostDisplayName": "string",
      "domainId": "8a0b02c3-fdd8-452e-bc6e-ef07a335ec7e",
      "domainName": "string",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "userDisplayName": "string",
      "targetUserId": "73727401-c2dc-4b4b-ad9b-350075d6b049",
      "targetUserDisplayName": "string",
      "canViewPassword": true,
      "canAutofillPassword": true,
      "viewPasswordInSeconds": 0,
      "recordAudio": true,
      "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "managedResourceName": "string",
      "managedResourceOs": "string",
      "managedResourceDisplayName": "string",
      "encryptedFileId": "fe83ccb5-70fd-46c6-92b7-b4bdb5233d67",
      "encryptedFileName": "string",
      "createdByDisplayName": "string",
      "startDateTimeUtc": "2019-08-24T14:15:22Z",
      "actualStartDateTimeUtc": "2019-08-24T14:15:22Z",
      "endDateTimeUtc": "2019-08-24T14:15:22Z",
      "actualEndDateTimeUtc": "2019-08-24T14:15:22Z",
      "durationInSeconds": 0,
      "expirationDateTimeUtc": "2019-08-24T14:15:22Z",
      "sessionStatus": null,
      "sessionStatusDescription": "string",
      "status": "Unknown",
      "statusMessage": "string",
      "loginDateTimeUtc": "2019-08-24T14:15:22Z",
      "loginSessionState": "Inactive",
      "activityName": "Add User to Domain Admains",
      "activityId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "activityType": "Interactive",
      "connectionUri": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "platformName": "string",
      "userType": "User",
      "proxySessions": [
        {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
          "record": true,
          "type": "string",
          "active": true,
          "startDateTimeUtc": "2019-08-24T14:15:22Z",
          "endDateTimeUtc": "2019-08-24T14:15:22Z",
          "key": "string",
          "locked": true,
          "lockedMessage": "string",
          "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
          "createdDateTimeUtc": "20240101T05:07:08.555Z",
          "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
          "sessionMetadata": {
            "id": "string",
            "nid": "string",
            "size": 0,
            "startTimestamp": "2019-08-24T14:15:22Z",
            "endTimestamp": "2019-08-24T14:15:22Z",
            "recordingStartTimestamp": "2019-08-24T14:15:22Z",
            "recordingEndTimestamp": "2019-08-24T14:15:22Z",
            "records": [
              {
                "type": null,
                "timestamp": 0,
                "entries": [
                  "string"
                ]
              }
            ]
          }
        }
      ],
      "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
      "accessPolicyName": "string",
      "note": "string",
      "ticket": "string",
      "notesRequired": true,
      "ticketRequired": true,
      "managedResourceType": "Host",
      "targetId": "cbca1126-180e-4334-9df8-cf82289d378b",
      "targetName": "string",
      "loginAccountName": "string",
      "loginAccount": "Requester",
      "loginDisplayName": "string",
      "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
      "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
      "vaultId": "867f3a98-ec66-42f4-abbc-5980239e4a28",
      "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
      "locked": true,
      "allowSessionExtension": true,
      "sessionExtensionCount": 0,
      "sessionExtensionMinutes": 0,
      "serviceNowTicketLink": "string",
      "expirationTimeoutThreshold": 0,
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="get-all-sessions-for-a-resource-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.SessionSummary]](../Models/sbpam.models.datatable_sbpam.models.sessionsummary.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


