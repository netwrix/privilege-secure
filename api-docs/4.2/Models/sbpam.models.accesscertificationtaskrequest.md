
<h2 id="tocS_SbPAM.Models.AccessCertificationTaskRequest">SbPAM.Models.AccessCertificationTaskRequest</h2>

<a id="schemasbpam.models.accesscertificationtaskrequest"></a>
<a id="schema_SbPAM.Models.AccessCertificationTaskRequest"></a>
<a id="tocSsbpam.models.accesscertificationtaskrequest"></a>
<a id="tocssbpam.models.accesscertificationtaskrequest"></a>

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "reviewerId": "6426b718-0cec-4a62-ba39-47b50ade3870",
  "status": "Setup",
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "scheduledStartDateTimeUtc": "2019-08-24T14:15:22Z",
  "userIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "groupIds": [
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
|reviewerId|string(uuid)|false|none|none|
|status|[SbPAM.Models.AccessCertificationTaskStatus](../Models/sbpam.models.accesscertificationtaskstatus.md)|false|none|none|
|startDateTimeUtc|string(date-time)¦null|false|none|none|
|scheduledStartDateTimeUtc|string(date-time)¦null|false|none|none|
|userIds|[string]¦null|false|none|none|
|groupIds|[string]¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


