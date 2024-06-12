
<h2 id="tocS_SbPAM.Models.EmailRequest">SbPAM.Models.EmailRequest</h2>

<a id="schemasbpam.models.emailrequest"></a>
<a id="schema_SbPAM.Models.EmailRequest"></a>
<a id="tocSsbpam.models.emailrequest"></a>
<a id="tocssbpam.models.emailrequest"></a>

<details><summary>JSON</summary>


```json
{
  "subject": "string",
  "htmlBody": "string",
  "toAddress": "string",
  "fromAddress": "string",
  "useTls": true,
  "useAuth": true,
  "smtpHost": "string",
  "smtpPort": 0,
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "importance": "Low",
  "priority": "NonUrgent"
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|subject|string¦null|false|none|none|
|htmlBody|string¦null|false|none|none|
|toAddress|string¦null|false|none|none|
|fromAddress|string¦null|false|none|none|
|useTls|boolean|false|none|none|
|useAuth|boolean|false|none|none|
|smtpHost|string¦null|false|none|none|
|smtpPort|integer(int32)|false|none|none|
|credentialId|string(uuid)¦null|false|none|none|
|importance|[SbPAM.Models.ImportanceEnums](../Models/sbpam.models.importanceenums.md)|false|none|none|
|priority|[SbPAM.Models.PriorityEnums](../Models/sbpam.models.priorityenums.md)|false|none|none|


