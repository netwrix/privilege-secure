
## Get Activity Session Configuration (Auth policies: MfaRequired, MfaRequired; roles: Admin,App)

<a id="opIdGtActivityConfigurationAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ActivitySession/Config/{id} \
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
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url "$($NPSUrl)/api/v1/ActivitySession/Config/{id} -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ActivitySession/Config/{id}`

<h3 id="get-activity-session-configuration-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|Id of the Activity Session|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "type": "Generic",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "isDefault": true,
  "isDeleted": true,
  "isUserModified": true,
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "activityConfigurationSettings": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "key": "string",
      "value": "string",
      "type": "String",
      "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "customFields": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
      "customFieldNumber": 0,
      "name": "string",
      "label": "string",
      "description": "string",
      "options": "string",
      "length": 0,
      "customFieldDataType": "Integer",
      "required": true,
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "deleteAccount": true,
  "sessionRetryInterval": 0,
  "approvedWorkflowEmailTemplateId": "7323f20a-d61f-4cbd-9b9a-1ce63404d7a1",
  "notifyApproversWorkflowEmailTemplateId": "5997e1ba-a294-43d0-acaa-18d25ec8482f",
  "maxSessionLength": 0,
  "allowSessionExtension": true,
  "sessionExtensionMinutes": 0,
  "sessionExtensionCount": 0,
  "sessionMonitorInterval": 0,
  "expirationTimeoutThreshold": 0,
  "rdpProxyHost": "string",
  "sshProxyHost": "string",
  "sshScanDc": true,
  "recordAudio": true,
  "proxyAutoConnect": true,
  "record": true,
  "approvalTypeRequired": "Deny",
  "approvalWorkflowId": "2db777ef-e869-4d8f-8dc2-f01750b5b4aa",
  "approvalWorkflowEmailTemplateId": "3416bc31-9e7f-4338-b33c-7314dfcb92d4",
  "monitorEntireSession": true,
  "allowViewPassword": true,
  "allowPasswordAccess": true,
  "allowAutofillPassword": true,
  "leaveInGroup": true,
  "activityTokenComplexity": "123519da-14b2-440d-af88-b17b69fb9aa6",
  "clearWebsiteDataAfterStop": true,
  "clearWebsiteDataBeforeStart": true,
  "notesRequired": true,
  "ticketRequired": true,
  "viewPasswordInSeconds": 0
}
```


</details>

<h3 id="get-activity-session-configuration-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


