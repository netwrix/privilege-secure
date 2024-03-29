
<h2 id="tocS_SbPAM.Models.EmailTemplate">SbPAM.Models.EmailTemplate</h2>

<a id="schemasbpam.models.emailtemplate"></a>
<a id="schema_SbPAM.Models.EmailTemplate"></a>
<a id="tocSsbpam.models.emailtemplate"></a>
<a id="tocssbpam.models.emailtemplate"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "emailSettingsId": "f97b605c-a258-4007-967b-14f8a52c230d",
  "emailSettings": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "description": "string",
    "type": "Generic",
    "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
    "modifiedBy": "07ff0787-1af5-4fc4-9832-7aaeaa962a5e",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "isDefault": true,
    "isDeleted": true,
    "isUserModified": true,
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "activityConfigurationSettings": [
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
    "customFields": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "activityConfigurationId": "e649ca68-23ab-42cb-8af5-260e01dc50d6",
        "customFieldNumber": 0,
        "name": "string",
        "label": "string",
        "description": "string",
        "options": "string",
        "length": 0,
        "customFieldDataType": "Integer",
        "required": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ],
    "deleteAccount": true,
    "sessionRetryInterval": 0,
    "approvedWorkflowEmailTemplateId": "7323f20a-d61f-4cbd-9b9a-1ce63404d7a1",
    "notifyApproversWorkflowEmailTemplateId": "5997e1ba-a294-43d0-acaa-18d25ec8482f",
    "maxSessionLength": 0,
    "allowSessionExtension": true,
    "sessionExtensionMinutes": 0,
    "sessionExtensionCount": 0,
    "sessionMonitorInterval": 0,
    "expirationTimeoutThreshold": 0,
    "rdpProxyHost": "string",
    "sshProxyHost": "string",
    "sshScanDc": true,
    "recordAudio": true,
    "proxyAutoConnect": true,
    "record": true,
    "approvalTypeRequired": "Deny",
    "approvalWorkflowId": "2db777ef-e869-4d8f-8dc2-f01750b5b4aa",
    "approvalWorkflowEmailTemplateId": "3416bc31-9e7f-4338-b33c-7314dfcb92d4",
    "monitorEntireSession": true,
    "allowViewPassword": true,
    "allowPasswordAccess": true,
    "allowAutofillPassword": true,
    "leaveInGroup": true,
    "activityTokenComplexity": "123519da-14b2-440d-af88-b17b69fb9aa6",
    "clearWebsiteDataAfterStop": true,
    "clearWebsiteDataBeforeStart": true,
    "notesRequired": true,
    "ticketRequired": true,
    "viewPasswordInSeconds": 0
  },
  "htmlTemplate": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}

```

This model is a template used to send an email to a user or group of users.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique id and DB key for this template.|
|name|string¦null|false|none|Name for this template.|
|description|string¦null|false|none|Description of this template.|
|emailSettingsId|string(uuid)¦null|false|none|Id of email settings used for sending email(s).|
|emailSettings|[SbPAM.Models.ActivityConfiguration](../Models/sbpam.models.activityconfiguration.md)|false|none|This model represents a collection of settings for running an activity.|
|htmlTemplate|string¦null|false|none|HTML template used for formatting email message.|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


