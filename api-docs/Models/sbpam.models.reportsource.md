
<h2 id="tocS_SbPAM.Models.ReportSource">SbPAM.Models.ReportSource</h2>

<a id="schemasbpam.models.reportsource"></a>
<a id="schema_SbPAM.Models.ReportSource"></a>
<a id="tocSsbpam.models.reportsource"></a>
<a id="tocssbpam.models.reportsource"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "dbSet": "string",
  "reportAttributeTemplateJoins": [
    {
      "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
      "reportSource": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "dbSet": "string",
        "reportAttributeTemplateJoins": [],
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
      },
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
      "source": {
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
        "columns": [],
        "dateColumn": "string",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
      },
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

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|dbSet|string¦null|false|none|none|
|reportAttributeTemplateJoins|[[SbPAM.Models.ReportAttributeTemplateJoin](../Models/sbpam.models.reportattributetemplatejoin.md)]¦null|false|none|none|
|columns|[[SbPAM.Models.ReportColumn](../Models/sbpam.models.reportcolumn.md)]¦null|false|none|none|
|dateColumn|string¦null|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|nodeId|string(uuid)|false|none|none|


