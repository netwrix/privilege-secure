
<h2 id="tocS_SbPAM.Models.DataTable[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]">SbPAM.Models.DataTable[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]</h2>

<a id="schemasbpam.models.datatable[system.object, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e]]"></a>
<a id="schema_SbPAM.Models.DataTable[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]"></a>
<a id="tocSsbpam.models.datatable[system.object, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e]]"></a>
<a id="tocssbpam.models.datatable[system.object, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e]]"></a>

```json
{
  "data": [
    null
  ],
  "recordsTotal": 0
}

```

Generic container for the output of some API endpoints and .Search() 
methods in some actors that return paged subsets of filtered search results

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|[any]¦null|false|none|A subset of the filtered, sorted, and paged (e.g., rows 30 - 39 of <br>589 found) search results|
|recordsTotal|integer(int32)|false|none|What is the total count of search results that .DataRows may only <br>be a paged subset of (e.g., rows 30 - 39 of 589 found)|


