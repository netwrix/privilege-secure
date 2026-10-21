
##  (Auth policies: MfaRequired, MfaRequired; roles: Admin,App,AuditingAndReporting)

<a id="opIdGetReportSource"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReportSource \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReportSource -Headers $Headers
```

`GET /api/v1/ReportSource`

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "dbSet": "string",
    "reportAttributeTemplateJoins": [
      {
        "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
        "reportSource": {},
        "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
        "reportAttributeTemplate": {
          "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
          "name": "string",
          "displayName": "string",
          "dataType": "Boolean",
          "type": "User",
          "reportAttributeTemplateJoins": [
            {}
          ],
          "reportOperatorJoins": [
            {
              "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
              "reportAttributeTemplate": {},
              "reportOperator": "Equals"
            }
          ],
          "createdDateTimeUtc": "2019-08-24T14:15:22Z",
          "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
          "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
        },
        "attributeName": "string"
      }
    ],
    "columns": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
        "source": {},
        "name": "string",
        "title": "string",
        "columnOrder": 0,
        "dataType": "string",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
      }
    ],
    "dateColumn": "string",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
  }
]
```

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app,auditingandreporting)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ReportSource](../Models/sbpam.models.reportsource.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» dbSet|string¦null|false|none|none|
|» reportAttributeTemplateJoins|[[SbPAM.Models.ReportAttributeTemplateJoin](../Models/sbpam.models.reportattributetemplatejoin.md)]¦null|false|none|none|
|»» reportSourceId|string(uuid)|false|none|none|
|»» reportSource|[SbPAM.Models.ReportSource](../Models/sbpam.models.reportsource.md)|false|none|none|
|»» reportAttributeTemplateId|string(uuid)|false|none|none|
|»» reportAttributeTemplate|[SbPAM.Models.ReportAttributeTemplate](../Models/sbpam.models.reportattributetemplate.md)|false|none|none|
|»»» id|string(uuid)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» displayName|string¦null|false|none|none|
|»»» dataType|[SbPAM.Models.ReportAttributeDataType](../Models/sbpam.models.reportattributedatatype.md)(int32)|false|none|none|
|»»» type|[SbPAM.Models.ReportAttributeType](../Models/sbpam.models.reportattributetype.md)(int32)|false|none|none|
|»»» reportAttributeTemplateJoins|[[SbPAM.Models.ReportAttributeTemplateJoin](../Models/sbpam.models.reportattributetemplatejoin.md)]¦null|false|none|none|
|»»» reportOperatorJoins|[[SbPAM.Models.ReportOperatorJoin](../Models/sbpam.models.reportoperatorjoin.md)]¦null|false|none|none|
|»»»» reportAttributeTemplateId|string(uuid)|false|none|none|
|»»»» reportAttributeTemplate|[SbPAM.Models.ReportAttributeTemplate](../Models/sbpam.models.reportattributetemplate.md)|false|none|none|
|»»»» reportOperator|[SbPAM.Models.ReportOperatorEnum](../Models/sbpam.models.reportoperatorenum.md)(int32)|false|none|none|
|»»» createdDateTimeUtc|string(date-time)|false|none|none|
|»»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»»» nodeId|string(uuid)|false|none|none|
|»» attributeName|string¦null|false|none|none|
|» columns|[[SbPAM.Models.ReportColumn](../Models/sbpam.models.reportcolumn.md)]¦null|false|none|none|
|»» id|string(uuid)|false|none|none|
|»» reportSourceId|string(uuid)|false|none|none|
|»» source|[SbPAM.Models.ReportSource](../Models/sbpam.models.reportsource.md)|false|none|none|
|»» name|string¦null|false|none|none|
|»» title|string¦null|false|none|none|
|»» columnOrder|integer(int32)|false|none|none|
|»» dataType|string¦null|false|none|none|
|»» createdDateTimeUtc|string(date-time)|false|none|none|
|»» modifiedDateTimeUtc|string(date-time)|false|none|none|
|»» nodeId|string(uuid)|false|none|none|
|» dateColumn|string¦null|false|none|none|
|» createdDateTimeUtc|string(date-time)|false|none|none|
|» modifiedDateTimeUtc|string(date-time)|false|none|none|
|» nodeId|string(uuid)|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|dataType|Boolean|
|dataType|Number|
|dataType|String|
|dataType|Options|
|dataType|FreeSolo|
|type|User|
|type|Host|
|type|Domain|
|type|Platform|
|type|Activity|
|type|Credential|
|type|Privilege|
|type|RotationType|
|type|RotationStatus|
|type|None|
|reportOperator|Equals|
|reportOperator|NotEquals|
|reportOperator|Contains|
|reportOperator|NotContains|
|reportOperator|StartsWith|
|reportOperator|EndsWith|
|reportOperator|LessThan|
|reportOperator|GreaterThan|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


