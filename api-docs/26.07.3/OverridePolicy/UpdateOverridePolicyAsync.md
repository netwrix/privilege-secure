
## Update an Override Policy (Auth roles: Admin)

<a id="opIdUpdateOverridePolicyAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/OverridePolicy/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "name": "string",
  "description": "string",
  "type": "Credential",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
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
  "protectScheduleId": "c955773e-7378-4050-af91-002299988236",
  "protectSchedule": {
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
  "rotateScheduleId": "379784bc-29b2-46de-bb99-10f680a8146c",
  "rotateSchedule": {
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
  "verifyScheduleId": "2190edbf-7ff9-4763-a5b1-82aead3141b4",
  "verifySchedule": {
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
  }
}
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/OverridePolicy/{id}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/OverridePolicy/{id}`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "name": "string",
  "description": "string",
  "type": "Credential",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
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
  "protectScheduleId": "c955773e-7378-4050-af91-002299988236",
  "protectSchedule": {
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
  "rotateScheduleId": "379784bc-29b2-46de-bb99-10f680a8146c",
  "rotateSchedule": {
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
  "verifyScheduleId": "2190edbf-7ff9-4763-a5b1-82aead3141b4",
  "verifySchedule": {
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
  }
}
```

<h3 id="update-an-override-policy-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|Id of Override Policy to update|
|body|body|[SbPAM.Models.OverridePolicy](../Models/sbpam.models.overridepolicy.md)|false|Override Policy to update|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "name": "string",
  "description": "string",
  "type": "Credential",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "scanScheduleId": "0eb70c50-8dc6-4087-9b2a-b6a2adebf24d",
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
  "protectScheduleId": "c955773e-7378-4050-af91-002299988236",
  "protectSchedule": {
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
  "rotateScheduleId": "379784bc-29b2-46de-bb99-10f680a8146c",
  "rotateSchedule": {
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
  "verifyScheduleId": "2190edbf-7ff9-4763-a5b1-82aead3141b4",
  "verifySchedule": {
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
  }
}
```

<h3 id="update-an-override-policy-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.OverridePolicy](../Models/sbpam.models.overridepolicy.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error updating Override Policy|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Override Policy not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


