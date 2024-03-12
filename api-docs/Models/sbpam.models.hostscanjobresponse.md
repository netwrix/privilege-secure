
<h2 id="tocS_SbPAM.Models.HostScanJobResponse">SbPAM.Models.HostScanJobResponse</h2>

<a id="schemasbpam.models.hostscanjobresponse"></a>
<a id="schema_SbPAM.Models.HostScanJobResponse"></a>
<a id="tocSsbpam.models.hostscanjobresponse"></a>
<a id="tocssbpam.models.hostscanjobresponse"></a>

```json
{
  "dnsHostName": "string",
  "ipAddress": "string",
  "os": "string",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "credentialName": "string",
  "platformName": "string",
  "acceptThumbprintOnFirstDiscovery": true,
  "sshTrustActionType": null,
  "certificateType": null,
  "trustedThumbprint": "string",
  "sshPort": 0,
  "source": "string",
  "credentialNameError": "string",
  "platformNameError": "string",
  "ipAddressError": "string",
  "dnsHostNameError": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|dnsHostName|string¦null|false|none|none|
|ipAddress|string¦null|false|none|none|
|os|string¦null|false|none|none|
|credentialId|string(uuid)|false|none|none|
|credentialName|string¦null|false|none|none|
|platformName|string¦null|false|none|none|
|acceptThumbprintOnFirstDiscovery|boolean|false|none|none|
|sshTrustActionType|[SbPAM.Constants.SshConstants+SshTrustActionType](../Models/sbpam.constants.sshconstants+sshtrustactiontype.md)|false|none|none|
|certificateType|[SbPAM.Constants.SshConstants+CertificateType](../Models/sbpam.constants.sshconstants+certificatetype.md)|false|none|none|
|trustedThumbprint|string¦null|false|none|none|
|sshPort|integer(int32)¦null|false|none|none|
|source|string¦null|false|none|none|
|credentialNameError|string¦null|false|none|none|
|platformNameError|string¦null|false|none|none|
|ipAddressError|string¦null|false|none|none|
|dnsHostNameError|string¦null|false|none|none|


