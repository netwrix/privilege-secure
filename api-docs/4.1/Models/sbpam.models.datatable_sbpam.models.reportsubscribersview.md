
<h2 id="tocS_SbPAM.Models.DataTable[SbPAM.Models.ReportSubscribersView]">SbPAM.Models.DataTable[SbPAM.Models.ReportSubscribersView]</h2>

<a id="schemasbpam.models.datatable[sbpam.models.reportsubscribersview]"></a>
<a id="schema_SbPAM.Models.DataTable[SbPAM.Models.ReportSubscribersView]"></a>
<a id="tocSsbpam.models.datatable[sbpam.models.reportsubscribersview]"></a>
<a id="tocssbpam.models.datatable[sbpam.models.reportsubscribersview]"></a>

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "reportId": "836df459-dc40-4aa1-972a-6eb0a864dff9",
      "reportName": "string",
      "scheduledChangePolicyId": "17df2cc9-77aa-486d-b2c3-eb63a3689174",
      "scheduledChangePolicyName": "string",
      "actionJobId": "52754069-8370-4a0f-82df-62ef71b95899",
      "actionJobName": "string"
    }
  ],
  "recordsTotal": 0
}

```

Generic container for the output of some API endpoints and .Search() 
methods in some actors that return paged subsets of filtered search results

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|[[SbPAM.Models.ReportSubscribersView](../Models/sbpam.models.reportsubscribersview.md)]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


