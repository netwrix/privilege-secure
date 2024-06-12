
<h2 id="tocS_SbPAM.Models.BootstrapConfig">SbPAM.Models.BootstrapConfig</h2>

<a id="schemasbpam.models.bootstrapconfig"></a>
<a id="schema_SbPAM.Models.BootstrapConfig"></a>
<a id="tocSsbpam.models.bootstrapconfig"></a>
<a id="tocssbpam.models.bootstrapconfig"></a>

<details><summary>JSON</summary>


```json
{
  "eula": {
    "enabled": true
  },
  "toggles": {
    "accessManagement": true
  },
  "sso": {
    "enabled": true,
    "entrypoint": "string",
    "url": "string",
    "ssoFlow": "string"
  },
  "web": {
    "uiBranding": {
      "headerBackgroundColor": "string",
      "hasCustomHeaderLogo": "string"
    },
    "sessionStorage": true,
    "restrictDashboard": true,
    "restrictInsight": true,
    "restrictBulkActionJita": true,
    "enableInsightUser": true,
    "restrictGettingStarted": true,
    "hideModes": true,
    "defaultPage": "string"
  }
}

```


</details>

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|eula|[SbPAM.Models.EulaConfig](../Models/sbpam.models.eulaconfig.md)|false|none|none|
|toggles|[SbPAM.Models.ToggleConfig](../Models/sbpam.models.toggleconfig.md)|false|none|none|
|sso|[SbPAM.Models.BootstrapSsoConfig](../Models/sbpam.models.bootstrapssoconfig.md)|false|none|none|
|web|[SbPAM.Models.BootstrapWebConfig](../Models/sbpam.models.bootstrapwebconfig.md)|false|none|none|


