
<h2 id="tocS_SbPAM.Models.HostScanJobRequest">SbPAM.Models.HostScanJobRequest</h2>

<a id="schemasbpam.models.hostscanjobrequest"></a>
<a id="schema_SbPAM.Models.HostScanJobRequest"></a>
<a id="tocSsbpam.models.hostscanjobrequest"></a>
<a id="tocssbpam.models.hostscanjobrequest"></a>

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
  "source": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|dnsHostName|string¦null|false|none|DNS hostname.|
|ipAddress|string¦null|false|none|IP Address to use if DNS resolution fails|
|os|string¦null|false|none|Default OS value if scan fails|
|credentialId|string(uuid)|false|none|Id of credentials for host.|
|credentialName|string¦null|false|none|Name of credentials for host.|
|platformName|string¦null|false|none|none|
|acceptThumbprintOnFirstDiscovery|boolean|false|none|Accept thumbprint on first discovery will allow the scan to complete and store the found thumbprint as trusted|
|sshTrustActionType|[SbPAM.Constants.SshConstants+SshTrustActionType](../Models/sbpam.constants.sshconstants+sshtrustactiontype.md)|false|none|none|
|certificateType|[SbPAM.Constants.SshConstants+CertificateType](../Models/sbpam.constants.sshconstants+certificatetype.md)|false|none|none|
|trustedThumbprint|string¦null|false|none|Trusted thumbprint|
|sshPort|integer(int32)¦null|false|none|SSH Port|
|source|string¦null|false|none|none|


