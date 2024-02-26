
## Disassociate activity from a policy.

<a id="opIdRemoveMultipleActivitiesFromPolicy"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/AccessControlPolicy/{policyId}/Activity/Remove \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
$JsonBody = [
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Activity"
  }
];

$Login = @{
    Login = "User",
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

Invoke-RestMethod -Method PUT -Url /api/v1/AccessControlPolicy/{policyId}/Activity/Remove -ContentType application/json-patch+json -Body $JsonBody
```

`PUT /api/v1/AccessControlPolicy/{policyId}/Activity/Remove`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Activity"
  }
]
```

<h3 id="disassociate-activity-from-a-policy.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.ActivityIdAndEntity](#schemasbpam.models.activityidandentity)|false|none|

> Example responses

> 200 Response

```
{"item1":0,"item2":0}
```

```json
{
  "item1": 0,
  "item2": 0
}
```

<h3 id="disassociate-activity-from-a-policy.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[System.Tuple`2[[System.Int32, System.Private.CoreLib, Version=6.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e],[System.Int32, System.Private.CoreLib, Version=6.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]](#schemasystem.tuple`2[[system.int32, system.private.corelib, version=6.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e],[system.int32, system.private.corelib, version=6.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e]])|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


