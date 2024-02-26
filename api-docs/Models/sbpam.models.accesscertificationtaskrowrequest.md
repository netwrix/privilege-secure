
<h2 id="tocS_SbPAM.Models.AccessCertificationTaskRowRequest">SbPAM.Models.AccessCertificationTaskRowRequest</h2>

<a id="schemasbpam.models.accesscertificationtaskrowrequest"></a>
<a id="schema_SbPAM.Models.AccessCertificationTaskRowRequest"></a>
<a id="tocSsbpam.models.accesscertificationtaskrowrequest"></a>
<a id="tocssbpam.models.accesscertificationtaskrowrequest"></a>

```json
{
  "taskId": "e6e9d88a-9b63-468a-aec3-b7a11de27af8",
  "rows": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "userName": "string",
      "status": "NotSet",
      "accessControlPolicy": "string",
      "resource": "string",
      "credential": "string",
      "activity": "string",
      "groupName": "string",
      "permissions": [
        "string"
      ],
      "lastAccessedDateTimeUtc": "2019-08-24T14:15:22Z",
      "connectionProfile": "string",
      "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
      "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|taskId|string(uuid)|false|none|none|
|rows|[[SbPAM.Models.AccessCertificationTaskRowDetail](#schemasbpam.models.accesscertificationtaskrowdetail)]¦null|false|none|none|


