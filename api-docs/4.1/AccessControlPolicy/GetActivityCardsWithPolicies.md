
## Get activity card information with access policy information (Auth)

<a id="opIdGetActivityCardsWithPolicies"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ActivityCardWithPolicies \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessControlPolicy/ActivityCardWithPolicies -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/ActivityCardWithPolicies`

<h3 id="get-activity-card-information-with-access-policy-information-(auth)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountId|query|string(uuid)|false|Managed account id|
|Skip|query|integer(int32)|false|Start at this item (default: 0)|
|Take|query|integer(int32)|false|Return this number of items (default: 100)|
|OrderBy|query|string|false|Property name to order results by|
|OrderDescending|query|boolean|false|Use descending sort order (default: false)|
|FilterText|query|string|false|Filter by entries that contain this text. Properties match vary by endpoint.|
|FilterColumns|query|array[string]|false|Columns to include in filter|
|groupByPolicy|query|boolean|false|Group data by policy|
|includeCount|query|boolean|false|Include counts (slower request)|
|includeData|query|boolean|false|Include data (slower request)|

> Example responses

> 200 Response

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
      "policies": [
        {
          "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
          "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
          "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
          "policyName": "string",
          "policyType": "Resource",
          "maxSessionLength": 0,
          "notesRequired": true,
          "ticketRequired": true,
          "activityCard": {},
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
          ]
        }
      ],
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "policyName": "string",
      "policyType": "Resource"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="get-activity-card-information-with-access-policy-information-(auth)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ActivityCardWithPolicies]](../Models/sbpam.models.datatable_sbpam.models.activitycardwithpolicies.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|ManagedAccountId not defined on request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Admin and has specified an accountid that does not match their accountid|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


