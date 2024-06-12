
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ActivityCardWithPolicies]">SbPAM.Models.DataTable[SbPAM.Models.ActivityCardWithPolicies]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.activitycardwithpolicies]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ActivityCardWithPolicies]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.activitycardwithpolicies]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.activitycardwithpolicies]"></a>

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


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|[[SbPAM.Models.ActivityCardWithPolicies](../Models/sbpam.models.activitycardwithpolicies.md)]¦null|false|none|none|
|recordsTotal|integer(int32)|false|none|none|


