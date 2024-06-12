
<h2 id="tocS_SbPAM.Models.AccessCertificationTaskSummary">SbPAM.Models.AccessCertificationTaskSummary</h2>

<a id="schemasbpam.models.accesscertificationtasksummary"></a>
<a id="schema_SbPAM.Models.AccessCertificationTaskSummary"></a>
<a id="tocSsbpam.models.accesscertificationtasksummary"></a>
<a id="tocssbpam.models.accesscertificationtasksummary"></a>

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "reviewer": "string",
  "reviewerId": "6426b718-0cec-4a62-ba39-47b50ade3870",
  "status": "Setup",
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "scheduledStartDateTimeUtc": "2019-08-24T14:15:22Z",
  "completedDateTimeUtc": "2019-08-24T14:15:22Z",
  "activitiesSummary": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "userName": "string",
      "status": "NotSet",
      "accessControlPolicy": "string",
      "resource": "string",
      "credential": "string",
      "activity": "string",
      "groupName": "string",
      "permissions": [
        "string"
      ],
      "lastAccessedDateTimeUtc": "2019-08-24T14:15:22Z",
      "connectionProfile": "string",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "selectedUserIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "selectedUserGroupIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|reviewer|string¦null|false|none|none|
|reviewerId|string(uuid)|false|none|none|
|status|[SbPAM.Models.AccessCertificationTaskStatus](../Models/sbpam.models.accesscertificationtaskstatus.md)|false|none|none|
|startDateTimeUtc|string(date-time)¦null|false|none|none|
|scheduledStartDateTimeUtc|string(date-time)¦null|false|none|none|
|completedDateTimeUtc|string(date-time)¦null|false|none|none|
|activitiesSummary|[[SbPAM.Models.AccessCertificationTaskRowSummary](../Models/sbpam.models.accesscertificationtaskrowsummary.md)]¦null|false|none|none|
|selectedUserIds|[string]¦null|false|none|none|
|selectedUserGroupIds|[string]¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


