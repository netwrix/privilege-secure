
<h2 id="tocS_SbPAM.Models.AccessPolicyObject">SbPAM.Models.AccessPolicyObject</h2>

<a id="schemasbpam.models.accesspolicyobject"></a>
<a id="schema_SbPAM.Models.AccessPolicyObject"></a>
<a id="tocSsbpam.models.accesspolicyobject"></a>
<a id="tocssbpam.models.accesspolicyobject"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "policyType": "Resource",
  "activityPolicies": [
    {
      "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
      "activityName": "string",
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "policyName": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "isDeleted": true,
      "notesRequired": true,
      "ticketRequired": true,
      "maxSessionLength": 0
    }
  ],
  "name": "string",
  "os": "string",
  "platform": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|policyType|[SbPAM.Models.PolicyType](../Models/sbpam.models.policytype.md)|false|none|none|
|activityPolicies|[[SbPAM.Models.ActivityPolicy](../Models/sbpam.models.activitypolicy.md)]¦null|false|none|none|
|name|string¦null|false|none|none|
|os|string¦null|false|none|none|
|platform|string¦null|false|none|none|


