
<h2 id="tocS_SbPAM.Models.PasswordComplexity">SbPAM.Models.PasswordComplexity</h2>

<a id="schemasbpam.models.passwordcomplexity"></a>
<a id="schema_SbPAM.Models.PasswordComplexity"></a>
<a id="tocSsbpam.models.passwordcomplexity"></a>
<a id="tocssbpam.models.passwordcomplexity"></a>

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "lowerCase": true,
  "upperCase": true,
  "specialCharacter": true,
  "space": true,
  "numeric": true,
  "mustEndWith": "None",
  "mustStartWith": "None",
  "length": 0,
  "maxConsecutive": 0,
  "charsToExclude": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "type": "Password"
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|lowerCase|boolean|false|none|none|
|upperCase|boolean|false|none|none|
|specialCharacter|boolean|false|none|none|
|space|boolean|false|none|none|
|numeric|boolean|false|none|none|
|mustEndWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)|false|none|none|
|mustStartWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)|false|none|none|
|length|integer(int32)|false|none|none|
|maxConsecutive|integer(int32)|false|none|none|
|charsToExclude|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|type|[SbPAM.Models.PasswordComplexityTypeEnum](../Models/sbpam.models.passwordcomplexitytypeenum.md)|false|none|none|


