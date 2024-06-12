
<h2 id="tocS_SbPAM.Models.ActivityConfiguration">SbPAM.Models.ActivityConfiguration</h2>

<a id="schemasbpam.models.activityconfiguration"></a>
<a id="schema_SbPAM.Models.ActivityConfiguration"></a>
<a id="tocSsbpam.models.activityconfiguration"></a>
<a id="tocssbpam.models.activityconfiguration"></a>

<details><summary>JSON</summary>


```json
{
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
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|none|
|name|string¦null|false|none|none|
|description|string¦null|false|none|none|
|type|[SbPAM.Models.ActivityConfigurationType](../Models/sbpam.models.activityconfigurationtype.md)|false|none|none|
|createdBy|string(uuid)¦null|false|none|none|
|modifiedBy|string(uuid)¦null|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|
|isDefault|boolean|false|none|none|
|isDeleted|boolean|false|none|none|
|isUserModified|boolean|false|none|none|
|nodeId|string(uuid)|false|none|none|
|activityConfigurationSettings|[[SbPAM.Models.ActivityConfigurationSetting](../Models/sbpam.models.activityconfigurationsetting.md)]¦null|false|none|none|
|customFields|[[SbPAM.Models.CustomField](../Models/sbpam.models.customfield.md)]¦null|false|none|none|
|deleteAccount|boolean|false|none|none|
|sessionRetryInterval|integer(int32)¦null|false|none|none|
|approvedWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|notifyApproversWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|maxSessionLength|integer(int32)¦null|false|none|none|
|allowSessionExtension|boolean|false|none|none|
|sessionExtensionMinutes|integer(int32)¦null|false|none|none|
|sessionExtensionCount|integer(int32)¦null|false|none|none|
|sessionMonitorInterval|integer(int32)¦null|false|none|none|
|expirationTimeoutThreshold|integer(int32)¦null|false|none|none|
|rdpProxyHost|string¦null|false|none|none|
|sshProxyHost|string¦null|false|none|none|
|sshScanDc|boolean|false|none|none|
|recordAudio|boolean|false|none|none|
|proxyAutoConnect|boolean|false|none|none|
|record|boolean|false|none|none|
|approvalTypeRequired|[SbPAM.Models.ApprovalType](../Models/sbpam.models.approvaltype.md)|false|none|none|
|approvalWorkflowId|string(uuid)¦null|false|none|none|
|approvalWorkflowEmailTemplateId|string(uuid)¦null|false|none|none|
|monitorEntireSession|boolean|false|none|none|
|allowViewPassword|boolean|false|none|none|
|allowPasswordAccess|boolean|false|none|none|
|allowAutofillPassword|boolean|false|none|none|
|leaveInGroup|boolean|false|none|none|
|activityTokenComplexity|string(uuid)¦null|false|none|none|
|clearWebsiteDataAfterStop|boolean|false|none|none|
|clearWebsiteDataBeforeStart|boolean|false|none|none|
|notesRequired|boolean|false|none|none|
|ticketRequired|boolean|false|none|none|
|viewPasswordInSeconds|integer(int32)¦null|false|none|none|


