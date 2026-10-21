
<h2 id="tocS_SbPAM.Models.AccessCertificationTaskRequestResponse">SbPAM.Models.AccessCertificationTaskRequestResponse</h2>

<a id="schemasbpam.models.accesscertificationtaskrequestresponse"></a>
<a id="schema_SbPAM.Models.AccessCertificationTaskRequestResponse"></a>
<a id="tocSsbpam.models.accesscertificationtaskrequestresponse"></a>
<a id="tocssbpam.models.accesscertificationtaskrequestresponse"></a>

```json
{
  "summary": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "description": "string",
    "reviewer": "string",
    "reviewerId": "6426b718-0cec-4a62-ba39-47b50ade3870",
    "status": "Setup",
    "startDateTimeUtc": "2019-08-24T14:15:22Z",
    "scheduledStartDateTimeUtc": "2019-08-24T14:15:22Z",
    "completedDateTimeUtc": "2019-08-24T14:15:22Z",
    "activitiesSummary": [
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
        "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
        "createdDateTimeUtc": "20240101T05:07:08.555Z",
        "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
      }
    ],
    "selectedUserIds": [
      "497f6eca-6276-4993-bfeb-53cbbbba6f08"
    ],
    "selectedUserGroupIds": [
      "497f6eca-6276-4993-bfeb-53cbbbba6f08"
    ],
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  },
  "activitiesDetail": [
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
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
      "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
      "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
      "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5"
    }
  ]
}

```

Detailed Access Certification task specification
Endpoint => UI
Not persisted

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|summary|[SbPAM.Models.AccessCertificationTaskSummary](../Models/sbpam.models.accesscertificationtasksummary.md)|false|none|Summary data structure for Access Certification tasks<br>Endpoint => UI<br>Not persisted|
|activitiesDetail|[[SbPAM.Models.AccessCertificationTaskRowDetail](../Models/sbpam.models.accesscertificationtaskrowdetail.md)]¦null|false|none|[Access Certification task row details<br>Endpoint => UI<br>Not persisted]|


