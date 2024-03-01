
<h2 id="tocS_SbPAM.Models.PolicyInfo">SbPAM.Models.PolicyInfo</h2>

<a id="schemasbpam.models.policyinfo"></a>
<a id="schema_SbPAM.Models.PolicyInfo"></a>
<a id="tocSsbpam.models.policyinfo"></a>
<a id="tocssbpam.models.policyinfo"></a>

```json
{
  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
  "policyName": "string",
  "policyType": "Resource",
  "maxSessionLength": 0,
  "notesRequired": true,
  "ticketRequired": true,
  "activityCard": {
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
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|activityId|string(uuid)|false|none|none|
|managedAccountId|string(uuid)|false|none|none|
|policyId|string(uuid)|false|none|none|
|policyName|string¦null|false|none|none|
|policyType|[SbPAM.Models.PolicyType](../Models/sbpam.models.policytype.md)|false|none|none|
|maxSessionLength|integer(int32)|false|none|none|
|notesRequired|boolean|false|none|none|
|ticketRequired|boolean|false|none|none|
|activityCard|[SbPAM.Models.ActivityCardWithPolicies](../Models/sbpam.models.activitycardwithpolicies.md)|false|none|none|


