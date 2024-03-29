
<h2 id="tocS_SbPAM.Models.ReportAttributeTemplate">SbPAM.Models.ReportAttributeTemplate</h2>

<a id="schemasbpam.models.reportattributetemplate"></a>
<a id="schema_SbPAM.Models.ReportAttributeTemplate"></a>
<a id="tocSsbpam.models.reportattributetemplate"></a>
<a id="tocssbpam.models.reportattributetemplate"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "displayName": "string",
  "dataType": "Boolean",
  "type": "User",
  "reportAttributeTemplateJoins": [
    {
      "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
      "reportSource": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "dbSet": "string",
        "reportAttributeTemplateJoins": [
          {}
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
      },
      "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
      "reportAttributeTemplate": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "displayName": "string",
        "dataType": "Boolean",
        "type": "User",
        "reportAttributeTemplateJoins": [],
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
  "reportOperatorJoins": [
    {
      "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
      "reportAttributeTemplate": {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "string",
        "displayName": "string",
        "dataType": "Boolean",
        "type": "User",
        "reportAttributeTemplateJoins": [
          {
            "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
            "reportSource": {
              "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
              "name": "string",
              "dbSet": "string",
              "reportAttributeTemplateJoins": [
                {}
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
            },
            "reportAttributeTemplateId": "f895b642-4c0a-41db-a175-2812933e6f65",
            "reportAttributeTemplate": {},
            "attributeName": "string"
          }
        ],
        "reportOperatorJoins": [],
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177"
      },
      "reportOperator": "Equals"
    }
  ],
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
|displayName|string¦null|false|none|none|
|dataType|[SbPAM.Models.ReportAttributeDataType](../Models/sbpam.models.reportattributedatatype.md)|false|none|none|
|type|[SbPAM.Models.ReportAttributeType](../Models/sbpam.models.reportattributetype.md)|false|none|none|
|reportAttributeTemplateJoins|[[SbPAM.Models.ReportAttributeTemplateJoin](../Models/sbpam.models.reportattributetemplatejoin.md)]¦null|false|none|none|
|reportOperatorJoins|[[SbPAM.Models.ReportOperatorJoin](../Models/sbpam.models.reportoperatorjoin.md)]¦null|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|nodeId|string(uuid)|false|none|none|


