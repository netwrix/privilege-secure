
<h2 id="tocS_SbPAM.Models.HostGroupDomainMembersBatchRequest">SbPAM.Models.HostGroupDomainMembersBatchRequest</h2>

<a id="schemasbpam.models.hostgroupdomainmembersbatchrequest"></a>
<a id="schema_SbPAM.Models.HostGroupDomainMembersBatchRequest"></a>
<a id="tocSsbpam.models.hostgroupdomainmembersbatchrequest"></a>
<a id="tocssbpam.models.hostgroupdomainmembersbatchrequest"></a>

```json
{
  "hostGroupId": "16b77703-e101-4cf4-94d3-1264fcec3596",
  "domainGroupSids": [
    "string"
  ]
}

```

Request model for upserting domain group memberships for multiple host groups in a batch.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|hostGroupId|string(uuid)|false|none|The host group ID.|
|domainGroupSids|[string]¦null|false|none|List of domain group SIDs that are members of this host group.|


