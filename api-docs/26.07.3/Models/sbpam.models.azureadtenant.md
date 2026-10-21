
<h2 id="tocS_SbPAM.Models.AzureAdTenant">SbPAM.Models.AzureAdTenant</h2>

<a id="schemasbpam.models.azureadtenant"></a>
<a id="schema_SbPAM.Models.AzureAdTenant"></a>
<a id="tocSsbpam.models.azureadtenant"></a>
<a id="tocssbpam.models.azureadtenant"></a>

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "tenantId": "string",
  "logonUrl": "string",
  "emailDomain": "string",
  "associatedDomainId": "ff9f5d4c-96c6-4b4d-bd1f-f4b6029efcd8",
  "processGroupMembership": true,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "20240101T05:07:08.555Z",
  "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|none|Unique Id|
|name|string¦null|false|none|Required - name of AzureAD tenant|
|description|string¦null|false|none|Description of the AzureAD tenant|
|tenantId|string¦null|false|none|Required - tenant identifier<br>"https://login.microsoftonline.com/$TenantId/oauth2/v2.0/token"|
|logonUrl|string¦null|false|none|Required - where to send the browser for the user to get into the site; typically a login page|
|emailDomain|string¦null|false|none|The '@whatever.com' part of the email address<br>Activity Token random characters will form the prefix|
|associatedDomainId|string(uuid)¦null|false|none|Optional link to ActiveDirectory domain|
|processGroupMembership|boolean|false|none|Enable/disable group membership processing|
|nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|


