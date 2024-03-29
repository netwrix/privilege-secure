
<h2 id="tocS_SbPAM.Models.AppToken">SbPAM.Models.AppToken</h2>

<a id="schemasbpam.models.apptoken"></a>
<a id="schema_SbPAM.Models.AppToken"></a>
<a id="tocSsbpam.models.apptoken"></a>
<a id="tocssbpam.models.apptoken"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "token": "string",
  "tokenSalt": "string",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "expirationDate": "2019-08-24T14:15:22Z",
  "revoked": true,
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

This model represents a token that can be used by a service for authorization.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this token.|
|name|string¦null|false|none|Name for this token.|
|description|string¦null|false|none|Human readable description of this token.|
|token|string¦null|false|none|Encrypted JWT Authorization BEARER token.|
|tokenSalt|string¦null|false|none|Salt for token encryption.|
|createdDateTimeUtc|string(date-time)|false|none|When this token was created.|
|expirationDate|string(date-time)|false|none|Expiration date/time for this token.|
|revoked|boolean|false|none|True if this token has been revoked.|
|createdBy|string(uuid)¦null|false|none|Id of logged in user who created this token.|
|nodeId|string(uuid)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


