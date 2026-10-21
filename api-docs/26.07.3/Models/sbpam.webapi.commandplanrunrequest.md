
<h2 id="tocS_SbPAM.WebAPI.CommandPlanRunRequest">SbPAM.WebAPI.CommandPlanRunRequest</h2>

<a id="schemasbpam.webapi.commandplanrunrequest"></a>
<a id="schema_SbPAM.WebAPI.CommandPlanRunRequest"></a>
<a id="tocSsbpam.webapi.commandplanrunrequest"></a>
<a id="tocssbpam.webapi.commandplanrunrequest"></a>

```json
{
  "commandPlan": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "testState": "NotStarted",
    "startTimeUtc": "2019-08-24T14:15:22Z",
    "endTimeUtc": "2019-08-24T14:15:22Z",
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "runData": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "commandPlanRunId": "f9c4a554-d218-4693-8172-a905ae6cf253",
        "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
        "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
        "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
        "computer": "string",
        "port": 0,
        "insecureAlwaysTrustRemoteCert": true,
        "trustedKey": "string",
        "substitutions": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
            "key": "string",
            "value": "string",
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
          }
        ],
        "sensitiveData": [
          "string"
        ],
        "searchTags": [
          "string"
        ],
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
        "showPassword": true,
        "runResults": [
          {
            "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
            "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
            "data": "string",
            "steps": "string",
            "definition": "string",
            "status": "string",
            "valid": true,
            "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
            "createdDateTimeUtc": "2019-08-24T14:15:22Z",
            "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
            "showPassword": true
          }
        ]
      }
    ]
  },
  "runData": {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "commandPlanRunId": "f9c4a554-d218-4693-8172-a905ae6cf253",
    "gennixCommandPlanId": "cd9cdd43-d260-4548-be3d-c84c53989aa9",
    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
    "jobId": "9d222c6d-893e-4e79-8201-3c9ca16a0f39",
    "computer": "string",
    "port": 0,
    "insecureAlwaysTrustRemoteCert": true,
    "trustedKey": "string",
    "substitutions": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
        "key": "string",
        "value": "string",
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
      }
    ],
    "sensitiveData": [
      "string"
    ],
    "searchTags": [
      "string"
    ],
    "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
    "createdDateTimeUtc": "2019-08-24T14:15:22Z",
    "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
    "showPassword": true,
    "runResults": [
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "commandPlanRunDataId": "54afc227-f752-4c59-a9ab-266137cc4715",
        "data": "string",
        "steps": "string",
        "definition": "string",
        "status": "string",
        "valid": true,
        "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
        "createdDateTimeUtc": "2019-08-24T14:15:22Z",
        "modifiedDateTimeUtc": "2019-08-24T14:15:22Z",
        "showPassword": true
      }
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|commandPlan|[SbPAM.Models.CommandPlanRun](../Models/sbpam.models.commandplanrun.md)|false|none|none|
|runData|[SbPAM.Models.CommandPlanRunData](../Models/sbpam.models.commandplanrundata.md)|false|none|none|


