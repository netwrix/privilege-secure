
<h2 id="tocS_SbPAM.Models.SessionSummary">SbPAM.Models.SessionSummary</h2>

<a id="schemasbpam.models.sessionsummary"></a>
<a id="schema_SbPAM.Models.SessionSummary"></a>
<a id="tocSsbpam.models.sessionsummary"></a>
<a id="tocssbpam.models.sessionsummary"></a>

```json
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
  "createdByDisplayName": "string",
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "actualStartDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "actualEndDateTimeUtc": "2019-08-24T14:15:22Z",
  "durationInSeconds": 0,
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "expirationDateTimeUtc": "2019-08-24T14:15:22Z",
  "sessionStatus": null,
  "sessionStatusDescription": "string",
  "status": "Unknown",
  "statusMessage": "string",
  "loginDateTimeUtc": "2019-08-24T14:15:22Z",
  "loginSessionState": "Inactive",
  "activityName": "string",
  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
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
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
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
  "managedResourceType": "Host",
  "targetId": "cbca1126-180e-4334-9df8-cf82289d378b",
  "targetName": "string",
  "loginAccountName": "string",
  "loginDisplayName": "string",
  "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
  "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
  "vaultId": "867f3a98-ec66-42f4-abbc-5980239e4a28",
  "managedDatabaseId": "135fd3c6-7070-402f-a1b7-bd9f2ff14b9f",
  "locked": true,
  "allowSessionExtension": true,
  "sessionExtensionCount": 0,
  "sessionExtensionMinutes": 0,
  "expirationTimeoutThreshold": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|hostId|string(uuid)¦null|false|none|none|
|hostDisplayName|string¦null|false|none|none|
|domainId|string(uuid)¦null|false|none|none|
|domainName|string¦null|false|none|none|
|userId|string(uuid)¦null|false|none|none|
|userDisplayName|string¦null|false|none|none|
|targetUserId|string(uuid)¦null|false|none|none|
|targetUserDisplayName|string¦null|false|none|none|
|canViewPassword|boolean|false|none|none|
|canAutofillPassword|boolean|false|none|none|
|viewPasswordInSeconds|integer(int32)|false|none|none|
|recordAudio|boolean|false|none|none|
|createdBy|string(uuid)¦null|false|none|none|
|managedAccountId|string(uuid)¦null|false|none|none|
|managedResourceId|string(uuid)¦null|false|none|none|
|managedResourceName|string¦null|false|none|none|
|managedResourceOs|string¦null|false|none|none|
|managedResourceDisplayName|string¦null|false|none|none|
|createdByDisplayName|string¦null|false|none|none|
|startDateTimeUtc|string(date-time)¦null|false|none|none|
|actualStartDateTimeUtc|string(date-time)¦null|false|none|none|
|endDateTimeUtc|string(date-time)¦null|false|none|none|
|actualEndDateTimeUtc|string(date-time)¦null|false|none|none|
|durationInSeconds|integer(int32)|false|none|none|
|createdDateTimeUtc|string(date-time)¦null|false|none|none|
|expirationDateTimeUtc|string(date-time)¦null|false|none|none|
|sessionStatus|[SbPAM.Constants.ActionConstants+SessionStatus](#schemasbpam.constants.actionconstants+sessionstatus)|false|none|none|
|sessionStatusDescription|string¦null|false|none|none|
|status|[SbPAM.Models.SessionSummaryStatus](#schemasbpam.models.sessionsummarystatus)|false|none|none|
|statusMessage|string¦null|false|none|none|
|loginDateTimeUtc|string(date-time)¦null|false|none|none|
|loginSessionState|[SbPAM.ActiveDirectory.Models.Enums.LoginSessionState](#schemasbpam.activedirectory.models.enums.loginsessionstate)|false|none|none|
|activityName|string¦null|false|none|none|
|activityId|string(uuid)¦null|false|none|none|
|activityType|[SbPAM.Models.ActivityType](#schemasbpam.models.activitytype)|false|none|none|
|connectionUri|string¦null|false|none|none|
|platformId|string(uuid)|false|none|none|
|platformName|string¦null|false|none|none|
|userType|[SbPAM.Constants.SbPAMAccountType](#schemasbpam.constants.sbpamaccounttype)|false|none|none|
|proxySessions|[[SbPAM.Models.ProxySession](#schemasbpam.models.proxysession)]¦null|false|none|none|
|accessPolicyId|string(uuid)¦null|false|none|none|
|accessPolicyName|string¦null|false|none|none|
|note|string¦null|false|none|none|
|ticket|string¦null|false|none|none|
|managedResourceType|[SbPAM.Models.ManagedResourceType](#schemasbpam.models.managedresourcetype)|false|none|none|
|targetId|string(uuid)¦null|false|none|none|
|targetName|string¦null|false|none|none|
|loginAccountName|string¦null|false|none|none|
|loginDisplayName|string¦null|false|none|none|
|websiteId|string(uuid)¦null|false|none|none|
|azureAdTenantId|string(uuid)¦null|false|none|none|
|vaultId|string(uuid)¦null|false|none|none|
|managedDatabaseId|string(uuid)¦null|false|none|none|
|locked|boolean|false|none|none|
|allowSessionExtension|boolean|false|none|none|
|sessionExtensionCount|integer(int32)|false|none|none|
|sessionExtensionMinutes|integer(int32)|false|none|none|
|expirationTimeoutThreshold|integer(int32)|false|none|none|


