
## Get all sessions by status
<param name="status"></param><param name="orderBy"></param><param name="orderDescending"></param><param name="userId"></param><param name="userGroupId"></param><param name="skip"></param><param name="take"></param><param name="filterText"></param><param name="metadataFilterText"></param><param name="startDate"></param><param name="endDate"></param><param name="resourceName"></param><param name="userName"></param><param name="streamType"></param> (Auth policies: MfaRequired)

<a id="opIdGetSessionSummaryByStatusAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/SummaryByStatus/{status} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ActivitySession/SummaryByStatus/{status} -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ActivitySession/SummaryByStatus/{status}`

<h3 id="get-all-sessions-by-status
<param-name="status"></param><param-name="orderby"></param><param-name="orderdescending"></param><param-name="userid"></param><param-name="usergroupid"></param><param-name="skip"></param><param-name="take"></param><param-name="filtertext"></param><param-name="metadatafiltertext"></param><param-name="startdate"></param><param-name="enddate"></param><param-name="resourcename"></param><param-name="username"></param><param-name="streamtype"></param>-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|status|path|undefined|true|none|
|orderBy|query|string|false|none|
|orderDescending|query|boolean|false|none|
|userId|query|string(uuid)|false|none|
|userGroupId|query|string(uuid)|false|none|
|skip|query|integer(int32)|false|none|
|take|query|integer(int32)|false|none|
|filterText|query|string|false|none|
|metadataFilterText|query|string|false|none|
|startDate|query|string(date-time)|false|none|
|endDate|query|string(date-time)|false|none|
|resourceName|query|array[string]|false|none|
|userName|query|array[string]|false|none|
|streamType|query|undefined|false|none|

> Example responses

> 200 Response

<details><summary>JSON</summary>


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
  ],
  "recordsTotal": 0
}
```


</details>

<h3 id="get-all-sessions-by-status
<param-name="status"></param><param-name="orderby"></param><param-name="orderdescending"></param><param-name="userid"></param><param-name="usergroupid"></param><param-name="skip"></param><param-name="take"></param><param-name="filtertext"></param><param-name="metadatafiltertext"></param><param-name="startdate"></param><param-name="enddate"></param><param-name="resourcename"></param><param-name="username"></param><param-name="streamtype"></param>-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.SessionSummary]](../Models/sbpam.models.datatable_sbpam.models.sessionsummary.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


