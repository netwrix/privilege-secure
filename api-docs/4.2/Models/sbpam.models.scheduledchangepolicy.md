
<h2 id="tocS_SbPAM.Models.ScheduledChangePolicy">SbPAM.Models.ScheduledChangePolicy</h2>

<a id="schemasbpam.models.scheduledchangepolicy"></a>
<a id="schema_SbPAM.Models.ScheduledChangePolicy"></a>
<a id="tocSsbpam.models.scheduledchangepolicy"></a>
<a id="tocssbpam.models.scheduledchangepolicy"></a>

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "frequency": null,
  "periodValue": 0,
  "daysOfWeek": "string",
  "dayNumber": 0,
  "localTime": "2019-08-24T14:15:22Z",
  "utcTime": "2019-08-24T14:15:22Z",
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
|frequency|[SbPAM.Models.ScheduledChangePolicy+FrequencyType](../Models/sbpam.models.scheduledchangepolicy+frequencytype.md)|false|none|none|
|periodValue|integer(int32)|false|none|none|
|daysOfWeek|string¦null|false|none|none|
|dayNumber|integer(int32)|false|none|none|
|localTime|string(date-time)|false|none|none|
|utcTime|string(date-time)¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


