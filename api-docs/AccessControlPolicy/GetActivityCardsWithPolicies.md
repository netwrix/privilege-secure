
## Get activity card information with access policy information (Auth)

<a id="opIdGetActivityCardsWithPolicies"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ActivityCardWithPolicies \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example

$Login = @{
    Login = "User"
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/ActivityCardWithPolicies -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/ActivityCardWithPolicies`

<h3 id="get-activity-card-information-with-access-policy-information-(auth)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedAccountId|query|string(uuid)|false|none|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|groupByPolicy|query|boolean|false|none|
|includeCount|query|boolean|false|none|
|includeData|query|boolean|false|none|

> Example responses

> 200 Response

```
{"data":[{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","description":"string","activityType":"Interactive","resourceText":"string","platformId":"32a6e381-64f4-4911-86b6-3bf681b64d23","platformName":"string","os":"string","managedAccountId":"98c25b84-2c06-4fcd-94c7-306443f45a3d","totalResources":0,"latestSessionActualStartUtc":"2019-08-24T14:15:22Z","policies":[{"activityId":"bdfd0655-55e6-45e6-8bbc-6ed31d3820b5","managedAccountId":"98c25b84-2c06-4fcd-94c7-306443f45a3d","policyId":"2f5573e6-5ba4-48f2-a75d-df99c936463b","policyName":"string","policyType":"Resource","maxSessionLength":0,"notesRequired":true,"ticketRequired":true,"activityCard":{}}],"policyId":"2f5573e6-5ba4-48f2-a75d-df99c936463b","policyName":"string","policyType":"Resource"}],"recordsTotal":0}
```

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
          "activityCard": {}
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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ActivityCardWithPolicies]](#schemasbpam.models.datatable[sbpam.models.activitycardwithpolicies])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


