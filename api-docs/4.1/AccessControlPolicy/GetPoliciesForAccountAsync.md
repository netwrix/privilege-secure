
## Retrieve Activity Cards for managed account id. (Auth policies: MfaRequired)

<a id="opIdGetPoliciesForAccountAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId} \
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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId} -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/AccessControlPolicy/ManagedAccount/{managedAccountId}`

<h3 id="retrieve-activity-cards-for-managed-account-id.-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountId|path|string(uuid)|true|ManagedAccountId for user|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|groupByPolicy|query|boolean|false|none|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "description": "string",
      "activityType": "Interactive",
      "resourceText": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "platformName": "string",
      "os": "string",
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
      "totalResources": 0,
      "latestSessionActualStartUtc": "2019-08-24T14:15:22Z",
      "customField1Name": "string",
      "customField1Label": "string",
      "customField1Description": "string",
      "customField1Length": 0,
      "customField1Options": "string",
      "customField1CustomFieldDataType": "Integer",
      "customField1Required": true,
      "customField2Name": "string",
      "customField2Label": "string",
      "customField2Description": "string",
      "customField2Length": 0,
      "customField2Options": "string",
      "customField2CustomFieldDataType": "Integer",
      "customField2Required": true,
      "customField3Name": "string",
      "customField3Label": "string",
      "customField3Description": "string",
      "customField3Length": 0,
      "customField3Options": "string",
      "customField3CustomFieldDataType": "Integer",
      "customField3Required": true,
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "policyName": "string",
      "policyType": "Resource",
      "notesRequired": true,
      "ticketRequired": true,
      "maxSessionLength": 0
    }
  ],
  "recordsTotal": 0
}
```


</details>

<h3 id="retrieve-activity-cards-for-managed-account-id.-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ActivityCard]](../Models/sbpam.models.datatable_sbpam.models.activitycard.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is unauthorized to view user's policies, account id must match logged
            in user OR user must be an Administrator.|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


