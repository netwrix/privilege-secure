
<h2 id="tocS_SbPAM.Models.ReportAttributeTemplateJoin">SbPAM.Models.ReportAttributeTemplateJoin</h2>

<a id="schemasbpam.models.reportattributetemplatejoin"></a>
<a id="schema_SbPAM.Models.ReportAttributeTemplateJoin"></a>
<a id="tocSsbpam.models.reportattributetemplatejoin"></a>
<a id="tocssbpam.models.reportattributetemplatejoin"></a>

```json
{
  "reportSourceId": "7ac31b1d-ecbf-43a3-aaf9-c77e7f57dfbe",
  "reportSource": {
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
  },
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

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|reportSourceId|string(uuid)|false|none|none|
|reportSource|[SbPAM.Models.ReportSource](#schemasbpam.models.reportsource)|false|none|none|
|reportAttributeTemplateId|string(uuid)|false|none|none|
|reportAttributeTemplate|[SbPAM.Models.ReportAttributeTemplate](#schemasbpam.models.reportattributetemplate)|false|none|none|
|attributeName|string¦null|false|none|none|


