
<h2 id="tocS_SbPAM.Models.EmailSettings">SbPAM.Models.EmailSettings</h2>

<a id="schemasbpam.models.emailsettings"></a>
<a id="schema_SbPAM.Models.EmailSettings"></a>
<a id="tocSsbpam.models.emailsettings"></a>
<a id="tocssbpam.models.emailsettings"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "configurationSettings": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "key": "string",
      "value": "string",
      "type": "String",
      "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "sendNotification": true,
  "useTls": true,
  "useAuth": true,
  "smtpHost": "string",
  "smtpPort": 0,
  "fromAddress": "string",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|configurationSettings|[[SbPAM.Models.ActivityConfigurationSetting](#schemasbpam.models.activityconfigurationsetting)]¦null|false|none|none|
|sendNotification|boolean|false|none|none|
|useTls|boolean|false|none|none|
|useAuth|boolean|false|none|none|
|smtpHost|string¦null|false|none|none|
|smtpPort|integer(int32)|false|none|none|
|fromAddress|string¦null|false|none|none|
|credentialId|string(uuid)|false|none|none|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


