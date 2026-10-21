
## Gets template parameters for a template with the specified ID. (Auth roles: Admin,App)

<a id="opIdGetParameter"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActionTemplate/parameter/{templateId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActionTemplate/parameter/{templateId} -Headers $Headers
```

`GET /api/v1/ActionTemplate/parameter/{templateId}`

<h3 id="gets-template-parameters-for-a-template-with-the-specified-id.-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|templateId|path|string(uuid)|true|Template id|

> Example responses

> 200 Response

```json
[
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
    "shouldSerialize_ValueSet": true,
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
]
```

<h3 id="gets-template-parameters-for-a-template-with-the-specified-id.-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="gets-template-parameters-for-a-template-with-the-specified-id.-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ActionTemplateParameter](../Models/sbpam.models.actiontemplateparameter.md)]|false|none|[This model represents a template for a parameter associated with an action group action.]|
|» id|string(uuid)|false|none|Unique id and DB key for this parameter.|
|» name|string¦null|false|none|Name for this parameter.|
|» displayName|string¦null|false|none|Long name for this parameter.|
|» description|string¦null|false|none|Human readable description for this parameter.|
|» sortOrder|integer(int32)|false|none|The order these will appear in lists and reports|
|» required|boolean|false|none|True if parameter is required.|
|» type|any|false|none|none|
|» multiline|boolean|false|none|Tell UI to make this multiline|
|» defaultValue|string¦null|false|none|Default value.|
|» shouldSerialize_ValueSet|boolean|false|read-only|Allowed values (if restricted).|
|» _ValueSet|string¦null|false|none|none|
|» valueSet|[string]¦null|false|none|none|
|» limitToValueSet|boolean|false|none|If true (default) and .ValueSet is given then the user may not enter something off that list|
|» helperText|string¦null|false|none|none|
|» actionTemplateId|string(uuid)¦null|false|none|Id of action template which contains this parameter.|
|» actionPackId|string(uuid)¦null|false|none|none|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


