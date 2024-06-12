
<h2 id="tocS_SbPAM.Identity.Models.SbPAMMfaConnector">SbPAM.Identity.Models.SbPAMMfaConnector</h2>

<a id="schemasbpam.identity.models.sbpammfaconnector"></a>
<a id="schema_SbPAM.Identity.Models.SbPAMMfaConnector"></a>
<a id="tocSsbpam.identity.models.sbpammfaconnector"></a>
<a id="tocssbpam.identity.models.sbpammfaconnector"></a>

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "enabled": true,
  "radiusOptionsId": "19c692f0-44af-465e-b79e-2698a0bdfd99",
  "isDefault": true,
  "isExclusive": true,
  "connectorType": "MFAConnector",
  "openIdOptionsId": "20688541-9d2e-492f-9adf-1e763f84a2bb",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "samlOptionsId": "cc163a3f-3e1a-406d-b825-5b45a0693fae",
  "useRemoteAccessGateway": true
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|enabled|boolean|false|none|none|
|radiusOptionsId|string(uuid)¦null|false|none|none|
|isDefault|boolean|false|none|none|
|isExclusive|boolean|false|none|none|
|connectorType|[SbPAM.Identity.Models.SbPAMMfaConnectorType](../Models/sbpam.identity.models.sbpammfaconnectortype.md)|false|none|none|
|openIdOptionsId|string(uuid)¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|samlOptionsId|string(uuid)¦null|false|none|none|
|useRemoteAccessGateway|boolean|false|none|none|


