
## Creates an action template parameter. (Auth roles: Admin,App)

<a id="opIdPostTemplateParameter"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ActionGroup/Template/Parameter \
  -H 'Content-Type: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ActionGroup/Template/Parameter" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ActionGroup/Template/Parameter`

> Body parameter

```json
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
```

<h3 id="creates-an-action-template-parameter.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)|false|none|

<h3 id="creates-an-action-template-parameter.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


