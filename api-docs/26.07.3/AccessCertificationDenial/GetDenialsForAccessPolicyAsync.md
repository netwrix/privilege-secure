
## Get certification details for a specific access policy. The default is to include the details that have
been resolved (grants or denials). If you want to only see the details that are still pending, set
includeAll to true. (Auth policies: MfaRequired, MfaRequired; roles: Admin,UserPlus)

<a id="opIdGetDenialsForAccessPolicyAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessCertificationDenial/AccessPolicy/{policyId} \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example

$Host = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($Host)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebRequestSession $WebSession
$Token = Invoke-RestMethod -Url "$($Host)/sigin2fa" -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"} -WebRequestSession $WebSession

$Headers = @{

    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessCertificationDenial/AccessPolicy/{policyId} -Headers $Headers
```

`GET /api/v1/AccessCertificationDenial/AccessPolicy/{policyId}`

<h3 id="get-certification-details-for-a-specific-access-policy.-the-default-is-to-include-the-details-that-have
been-resolved-(grants-or-denials).-if-you-want-to-only-see-the-details-that-are-still-pending,-set
includeall-to-true.-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|The access policy id|
|includeAll|query|boolean|false|Include all certification details (grants or denials), even those that have been resolved|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
    "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
    "resourceId": "026d60bb-63a8-407e-bf67-01dcfc6022e6",
    "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
    "denyingTaskId": "19b87266-8b7d-44d1-b836-1e581cf4eaff",
    "status": "NotSet",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
    "denyingTaskName": "string",
    "resourceName": "string",
    "credentialName": "string",
    "activityName": "string"
  }
]
```

<h3 id="get-certification-details-for-a-specific-access-policy.-the-default-is-to-include-the-details-that-have
been-resolved-(grants-or-denials).-if-you-want-to-only-see-the-details-that-are-still-pending,-set
includeall-to-true.-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="get-certification-details-for-a-specific-access-policy.-the-default-is-to-include-the-details-that-have
been-resolved-(grants-or-denials).-if-you-want-to-only-see-the-details-that-are-still-pending,-set
includeall-to-true.-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,userplus)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.AccessCertificationDenial](../Models/sbpam.models.accesscertificationdenial.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» accessPolicyId|string(uuid)|false|none|none|
|» managedUserId|string(uuid)|false|none|Managed account ID representing the user who is denied access|
|» resourceId|string(uuid)¦null|false|none|none|
|» activityId|string(uuid)|false|none|none|
|» credentialId|string(uuid)¦null|false|none|none|
|» denyingTaskId|string(uuid)|false|none|none|
|» status|[SbPAM.Models.AccessCertificationTaskRowStatus](../Models/sbpam.models.accesscertificationtaskrowstatus.md)(int32)|false|none|Access certification task row status|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» denyingTaskName|string¦null|false|none|none|
|» resourceName|string¦null|false|none|none|
|» credentialName|string¦null|false|none|none|
|» activityName|string¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|NotSet|
|status|Requested|
|status|Approved|
|status|Denied|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


