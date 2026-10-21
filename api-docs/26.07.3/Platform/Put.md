
## Update a platform (Auth policies: MfaRequired; roles: Admin)

<a id="opIdPut"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/Platform/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/Platform/{id}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/Platform/{id}`

> Body parameter

```json
{
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
}
```

<h3 id="update-a-platform-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|Platform Id|
|body|body|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|false|Platform|

> Example responses

> 200 Response

```json
{
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
}
```

<h3 id="update-a-platform-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the updated platform|[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Platform not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


