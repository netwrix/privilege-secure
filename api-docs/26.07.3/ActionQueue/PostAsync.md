
## Queues a new action (or actions) for an action group. (Auth roles: Admin,App,AuditingAndReporting)

<a id="opIdPostAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ActionQueue \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ActionQueue" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ActionQueue`

> Body parameter

```json
[
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
]
```

<h3 id="queues-a-new-action-(or-actions)-for-an-action-group.-(auth-roles:-admin,app,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|actionGroupId|query|string(uuid)|false|none|
|startDateTimeUtc|query|string(date-time)|false|none|
|createdBy|query|string(uuid)|false|none|
|body|body|[SbPAM.Models.ActionParameter](../Models/sbpam.models.actionparameter.md)|false|none|

> Example responses

> 400 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="queues-a-new-action-(or-actions)-for-an-action-group.-(auth-roles:-admin,app,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


