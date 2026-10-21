
## Endpoint for task items list
Name, Status and Id (Auth policies: MfaRequired; roles: Admin)

<a id="opIdGetSummaryAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessCertificationTask/Summary \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessCertificationTask/Summary -Headers $Headers
```

`GET /api/v1/AccessCertificationTask/Summary`

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "description": "string",
    "reviewer": "string",
    "reviewerId": "6426b718-0cec-4a62-ba39-47b50ade3870",
    "status": "Setup",
    "startDateTimeUtc": "2019-08-24T14:15:22Z",
    "scheduledStartDateTimeUtc": "2019-08-24T14:15:22Z",
    "completedDateTimeUtc": "2019-08-24T14:15:22Z",
    "activitiesSummary": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "userName": "string",
        "status": "NotSet",
        "accessControlPolicy": "string",
        "resource": "string",
        "credential": "string",
        "activity": "string",
        "groupName": "string",
        "permissions": [
          "string"
        ],
        "lastAccessedDateTimeUtc": "2019-08-24T14:15:22Z",
        "connectionProfile": "string",
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      }
    ],
    "selectedUserIds": [
      "497f6eca-6276-4993-bfeb-53cbbbba6f08"
    ],
    "selectedUserGroupIds": [
      "497f6eca-6276-4993-bfeb-53cbbbba6f08"
    ],
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  }
]
```

<h3 id="endpoint-for-task-items-list
name,-status-and-id-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="endpoint-for-task-items-list
name,-status-and-id-(auth-policies:-mfarequired;-roles:-admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.AccessCertificationTaskSummary](../Models/sbpam.models.accesscertificationtasksummary.md)]|false|none|[Summary data structure for Access Certification tasks<br>Endpoint => UI<br>Not persisted]|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» description|string¦null|false|none|none|
|» reviewer|string¦null|false|none|none|
|» reviewerId|string(uuid)|false|none|none|
|» status|[SbPAM.Models.AccessCertificationTaskStatus](../Models/sbpam.models.accesscertificationtaskstatus.md)(int32)|false|none|Access certification task status|
|» startDateTimeUtc|string(date-time)¦null|false|none|none|
|» scheduledStartDateTimeUtc|string(date-time)¦null|false|none|none|
|» completedDateTimeUtc|string(date-time)¦null|false|none|none|
|» activitiesSummary|[[SbPAM.Models.AccessCertificationTaskRowSummary](../Models/sbpam.models.accesscertificationtaskrowsummary.md)]¦null|false|none|[Summary data structure for Access Certification Task rows<br>Endpoint => UI<br>Not persisted]|
|»» id|string(uuid)|false|none|none|
|»» userName|string¦null|false|none|none|
|»» status|[SbPAM.Models.AccessCertificationTaskRowStatus](../Models/sbpam.models.accesscertificationtaskrowstatus.md)(int32)|false|none|Access certification task row status|
|»» accessControlPolicy|string¦null|false|none|none|
|»» resource|string¦null|false|none|none|
|»» credential|string¦null|false|none|none|
|»» activity|string¦null|false|none|none|
|»» groupName|string¦null|false|none|none|
|»» permissions|[string]¦null|false|none|none|
|»» lastAccessedDateTimeUtc|string(date-time)|false|none|none|
|»» connectionProfile|string¦null|false|none|none|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» selectedUserIds|[string]¦null|false|none|none|
|» selectedUserGroupIds|[string]¦null|false|none|none|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

#### Enumerated Values

|Property|Value|
|---|---|
|status|Setup|
|status|ReadyToStart|
|status|Incomplete|
|status|Complete|
|status|NotSet|
|status|Requested|
|status|Approved|
|status|Denied|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


