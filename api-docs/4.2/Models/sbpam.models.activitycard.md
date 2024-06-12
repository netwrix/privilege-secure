
<h2 id="tocS_SbPAM.Models.ActivityCard">SbPAM.Models.ActivityCard</h2>

<a id="schemasbpam.models.activitycard"></a>
<a id="schema_SbPAM.Models.ActivityCard"></a>
<a id="tocSsbpam.models.activitycard"></a>
<a id="tocssbpam.models.activitycard"></a>

<details><summary>JSON</summary>


```json
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

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|activityType|[SbPAM.Models.ActivityType](../Models/sbpam.models.activitytype.md)|false|none|none|
|resourceText|string¦null|false|none|none|
|platformId|string(uuid)|false|none|none|
|platformName|string¦null|false|none|none|
|os|string¦null|false|none|none|
|managedAccountId|string(uuid)|false|none|none|
|totalResources|integer(int32)|false|none|none|
|latestSessionActualStartUtc|string(date-time)¦null|false|none|none|
|customField1Name|string¦null|false|none|none|
|customField1Label|string¦null|false|none|none|
|customField1Description|string¦null|false|none|none|
|customField1Length|integer(int32)¦null|false|none|none|
|customField1Options|string¦null|false|none|none|
|customField1CustomFieldDataType|[SbPAM.Models.CustomFieldDataType](../Models/sbpam.models.customfielddatatype.md)|false|none|none|
|customField1Required|boolean¦null|false|none|none|
|customField2Name|string¦null|false|none|none|
|customField2Label|string¦null|false|none|none|
|customField2Description|string¦null|false|none|none|
|customField2Length|integer(int32)¦null|false|none|none|
|customField2Options|string¦null|false|none|none|
|customField2CustomFieldDataType|[SbPAM.Models.CustomFieldDataType](../Models/sbpam.models.customfielddatatype.md)|false|none|none|
|customField2Required|boolean¦null|false|none|none|
|customField3Name|string¦null|false|none|none|
|customField3Label|string¦null|false|none|none|
|customField3Description|string¦null|false|none|none|
|customField3Length|integer(int32)¦null|false|none|none|
|customField3Options|string¦null|false|none|none|
|customField3CustomFieldDataType|[SbPAM.Models.CustomFieldDataType](../Models/sbpam.models.customfielddatatype.md)|false|none|none|
|customField3Required|boolean¦null|false|none|none|
|policyId|string(uuid)|false|none|none|
|policyName|string¦null|false|none|none|
|policyType|[SbPAM.Models.PolicyType](../Models/sbpam.models.policytype.md)|false|none|none|
|notesRequired|boolean|false|none|none|
|ticketRequired|boolean|false|none|none|
|maxSessionLength|integer(int32)|false|none|none|


