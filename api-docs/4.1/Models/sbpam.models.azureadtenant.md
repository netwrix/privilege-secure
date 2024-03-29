
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
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
|emailDomain|string¦null|false|none|The '@whatever.com' part of the email address <br>Activity Token random characters will form the prefix|
|associatedDomainId|string(uuid)¦null|false|none|Optional link to ActiveDirectory domain|
|processGroupMembership|boolean|false|none|Enable/disable group membership processing|
|nodeId|string(uuid)|false|none|none|
|createdDateTimeUtc|string(date-time)|false|none|none|
|modifiedDateTimeUtc|string(date-time)|false|none|none|


