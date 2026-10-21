
## Endpoint for updating a task with review information (Auth policies: MfaRequired; roles: Reviewer)

<a id="opIdReviewTaskAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/AccessCertificationTask/Review/{taskId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "status": "NotSet",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  }
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/AccessCertificationTask/Review/{taskId}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/AccessCertificationTask/Review/{taskId}`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "status": "NotSet",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  }
]
```

<h3 id="endpoint-for-updating-a-task-with-review-information-(auth-policies:-mfarequired;-roles:-reviewer)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|taskId|path|string(uuid)|true|Id of task to review|
|status|query|[SbPAM.Models.AccessCertificationTaskStatus](../Models/sbpam.models.accesscertificationtaskstatus.md)|false|Status to set for the task|
|body|body|[SbPAM.Models.AccessCertificationTaskRowReview](../Models/sbpam.models.accesscertificationtaskrowreview.md)|false|List of task row reviews|

#### Enumerated Values

|Parameter|Value|
|---|---|
|status|Setup|
|status|ReadyToStart|
|status|Incomplete|
|status|Complete|

> Example responses

> 200 Response

```json
{
  "summary": {
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
  },
  "activitiesDetail": [
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
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
      "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5"
    }
  ]
}
```

<h3 id="endpoint-for-updating-a-task-with-review-information-(auth-policies:-mfarequired;-roles:-reviewer)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.AccessCertificationTaskRequestResponse](../Models/sbpam.models.accesscertificationtaskrequestresponse.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


