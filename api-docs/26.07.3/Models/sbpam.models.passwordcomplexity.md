
<h2 id="tocS_SbPAM.Models.PasswordComplexity">SbPAM.Models.PasswordComplexity</h2>

<a id="schemasbpam.models.passwordcomplexity"></a>
<a id="schema_SbPAM.Models.PasswordComplexity"></a>
<a id="tocSsbpam.models.passwordcomplexity"></a>
<a id="tocssbpam.models.passwordcomplexity"></a>

```json
{
  "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "name": "ComplexityName",
  "description": "ComplexityDescription",
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
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
  "type": "Password"
}

```

Password complexity model

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique identifier for the object|
|name|string¦null|false|none|The name of the password complexity|
|description|string¦null|false|none|The description of the password complexity|
|lowerCase|boolean|false|none|Use at least one lowercase character|
|upperCase|boolean|false|none|Use at least one uppercase character|
|specialCharacter|boolean|false|none|Use at least one special character|
|space|boolean|false|none|none|
|numeric|boolean|false|none|none|
|mustEndWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)|false|none|none|
|mustStartWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)|false|none|none|
|length|integer(int32)|false|none|none|
|maxConsecutive|integer(int32)|false|none|none|
|charsToExclude|string¦null|false|none|none|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|type|[SbPAM.Models.PasswordComplexityTypeEnum](../Models/sbpam.models.passwordcomplexitytypeenum.md)|false|none|Password complexity type enum|


