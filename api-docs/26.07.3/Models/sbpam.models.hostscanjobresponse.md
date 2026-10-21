
<h2 id="tocS_SbPAM.Models.HostScanJobResponse">SbPAM.Models.HostScanJobResponse</h2>

<a id="schemasbpam.models.hostscanjobresponse"></a>
<a id="schema_SbPAM.Models.HostScanJobResponse"></a>
<a id="tocSsbpam.models.hostscanjobresponse"></a>
<a id="tocssbpam.models.hostscanjobresponse"></a>

```json
{
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
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
  "platformDetectionOnly": true,
  "credentialNameError": "string",
  "platformNameError": "string",
  "ipAddressError": "string",
  "dnsHostNameError": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|hostId|string(uuid)¦null|false|none|Known Host id, when the caller has already resolved (or created) the exact Host row this<br>request is for. When set, the scheduler uses it directly instead of re-deriving the host via<br>a name/IP search - that search can fail to match the caller's already-known host (e.g. a<br>blank DnsHostName) and silently mint a duplicate Host/ManagedResource otherwise. Leave null<br>only when the host genuinely isn't resolved yet (e.g. CSV import of new hostnames).|
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
|platformDetectionOnly|boolean|false|none|When true, the scan only detects and persists the host platform/OS and skips the<br>full user, group, feature, service, task and database enumeration.|
|credentialNameError|string¦null|false|none|none|
|platformNameError|string¦null|false|none|none|
|ipAddressError|string¦null|false|none|none|
|dnsHostNameError|string¦null|false|none|none|


