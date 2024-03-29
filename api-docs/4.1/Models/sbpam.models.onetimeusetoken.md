
<h2 id="tocS_SbPAM.Models.OneTimeUseToken">SbPAM.Models.OneTimeUseToken</h2>

<a id="schemasbpam.models.onetimeusetoken"></a>
<a id="schema_SbPAM.Models.OneTimeUseToken"></a>
<a id="tocSsbpam.models.onetimeusetoken"></a>
<a id="tocssbpam.models.onetimeusetoken"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "expirationDate": "2019-08-24T14:15:22Z",
  "revoked": true,
  "videoToken": true,
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

This model represents a token that can be used once to get a user token to impersonate a user.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique identifier for this token.|
|name|string¦null|false|none|Name of the user to impersonate.|
|activitySessionId|string(uuid)|false|none|SessionId|
|managedAccountId|string(uuid)|false|none|ManagedAccountId|
|createdDateTimeUtc|string(date-time)|false|none|When this token was created.|
|expirationDate|string(date-time)|false|none|Expiration date/time for this token.|
|revoked|boolean|false|none|True if this token has been revoked.|
|videoToken|boolean|false|none|none|
|createdBy|string(uuid)¦null|false|none|Id of logged in user who created this token.|
|nodeId|string(uuid)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


