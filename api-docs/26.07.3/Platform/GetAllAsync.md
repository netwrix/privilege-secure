
## Retrieves all platforms. (Auth policies: MfaRequired)

<a id="opIdGetAllAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Platform \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Platform -Headers $Headers
```

`GET /api/v1/Platform`

> Example responses

> 200 Response

```json
[
  {
    "id": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
    "name": "Linux",
    "description": "Linux",
    "builtInAccount": "root",
    "passwordComplexityPolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
    "passwordComplexityPolicy": {
      "id": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "name": "ComplexityName",
      "description": "ComplexityDescription",
      "lowerCase": true,
      "upperCase": true,
      "specialCharacter": true,
      "space": true,
      "numeric": true,
      "mustEndWith": "None",
      "mustStartWith": "None",
      "length": 0,
      "maxConsecutive": 0,
      "charsToExclude": "string",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
      "type": "Password"
    },
    "scheduledChangePolicyId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
    "scheduledChangePolicy": {
      "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
      "name": "Every 2 hours",
      "description": "Every 2 hours",
      "frequency": null,
      "periodValue": 60,
      "daysOfWeek": "SmtwTfs",
      "dayNumber": 1,
      "localTime": "20240101T05:07:08.555",
      "utcTime": "20240101T05:07:08.555Z",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "protectionPolicyScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
    "protectionPolicySchedule": {
      "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
      "name": "Every 2 hours",
      "description": "Every 2 hours",
      "frequency": null,
      "periodValue": 60,
      "daysOfWeek": "SmtwTfs",
      "dayNumber": 1,
      "localTime": "20240101T05:07:08.555",
      "utcTime": "20240101T05:07:08.555Z",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "scanScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
    "scanSchedule": {
      "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
      "name": "Every 2 hours",
      "description": "Every 2 hours",
      "frequency": null,
      "periodValue": 60,
      "daysOfWeek": "SmtwTfs",
      "dayNumber": 1,
      "localTime": "20240101T05:07:08.555",
      "utcTime": "20240101T05:07:08.555Z",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "verificationScheduleId": "88b2e1d1-cf84-4081-8a47-7189f68a36cf",
    "verificationSchedule": {
      "id": "ca72c39f-5534-412e-aa38-6a1f6301f145",
      "name": "Every 2 hours",
      "description": "Every 2 hours",
      "frequency": null,
      "periodValue": 60,
      "daysOfWeek": "SmtwTfs",
      "dayNumber": 1,
      "localTime": "20240101T05:07:08.555",
      "utcTime": "20240101T05:07:08.555Z",
      "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
      "createdDateTimeUtc": "20240101T05:07:08.555Z",
      "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
    },
    "resetOnMismatch": true,
    "icon": "string",
    "basePlatformId": "43a54a6d-1ba3-4b98-a2eb-552e03c60766",
    "os": "string",
    "type": "Unspecified",
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z",
    "showCommandPlans": true,
    "permanent": true
  }
]
```

<h3 id="retrieves-all-platforms.-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="retrieves-all-platforms.-(auth-policies:-mfarequired)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.Platform](../Models/sbpam.models.platform.md)]|false|none|[This model represents an platform on which a particular activity can be performed.]|
|» id|string(uuid)|false|none|Unique identifier for this platform.|
|» name|string¦null|false|none|Name for this platform.|
|» description|string¦null|false|none|Description for this platform.|
|» builtInAccount|string¦null|false|none|Built-in account for this platform.|
|» passwordComplexityPolicyId|string(uuid)¦null|false|none|Password complexity policy Id for this platform.|
|» passwordComplexityPolicy|[SbPAM.Models.PasswordComplexity](../Models/sbpam.models.passwordcomplexity.md)|false|none|Password complexity model|
|»» id|string(uuid)|false|none|Unique identifier for the object|
|»» name|string¦null|false|none|The name of the password complexity|
|»» description|string¦null|false|none|The description of the password complexity|
|»» lowerCase|boolean|false|none|Use at least one lowercase character|
|»» upperCase|boolean|false|none|Use at least one uppercase character|
|»» specialCharacter|boolean|false|none|Use at least one special character|
|»» space|boolean|false|none|none|
|»» numeric|boolean|false|none|none|
|»» mustEndWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»» mustStartWith|[SbPAM.Constants.CharacterTypeFlags](../Models/sbpam.constants.charactertypeflags.md)(int32)|false|none|none|
|»» length|integer(int32)|false|none|none|
|»» maxConsecutive|integer(int32)|false|none|none|
|»» charsToExclude|string¦null|false|none|none|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|»» type|[SbPAM.Models.PasswordComplexityTypeEnum](../Models/sbpam.models.passwordcomplexitytypeenum.md)(int32)|false|none|Password complexity type enum|
|» scheduledChangePolicyId|string(uuid)¦null|false|none|Password change schedule policy Id for this platform.|
|» scheduledChangePolicy|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|»» id|string(uuid)|false|none|The unique identifier of the scheduled change policy.|
|»» name|string¦null|false|none|The name of the scheduled change policy.|
|»» description|string¦null|false|none|The description of the scheduled change policy.|
|»» frequency|any|false|none|none|
|»» periodValue|integer(int32)|false|none|The period value of the scheduled change.|
|»» daysOfWeek|string¦null|false|none|The days of the week on which the scheduled change occurs.|
|»» dayNumber|integer(int32)|false|none|The day of the month on which the scheduled change occurs.|
|»» localTime|string(date-time)|false|none|The local time at which the scheduled change occurs.|
|»» utcTime|string(date-time)¦null|false|none|The UTC time at which the scheduled change occurs.|
|»» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|»» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|»» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» protectionPolicyScheduleId|string(uuid)¦null|false|none|Protection policy schedule Id for this platform.|
|» protectionPolicySchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|» scanScheduleId|string(uuid)¦null|false|none|Scan schedule Id for this platform.|
|» scanSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|» verificationScheduleId|string(uuid)¦null|false|none|Password verification schedule Id for this platform.|
|» verificationSchedule|[SbPAM.Models.ScheduledChangePolicy](../Models/sbpam.models.scheduledchangepolicy.md)|false|none|Represents a scheduled change policy for a node.|
|» resetOnMismatch|boolean|false|none|Password reset on mismatch.|
|» icon|string(byte)¦null|false|none|Icon for this platform.|
|» basePlatformId|string(uuid)¦null|false|none|Base platform ID for this platform.|
|» os|string¦null|false|none|OS is the list of operating systems returned by uname - this is for custom platform support|
|» type|[SbPAM.Models.PlatformTypeEnum](../Models/sbpam.models.platformtypeenum.md)(int32)|false|none|Platform types|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|
|» showCommandPlans|boolean|false|none|Indicates to show command plans.|
|» permanent|boolean|false|none|Permanent is set true for base platforms that cannot be deleted|

#### Enumerated Values

|Property|Value|
|---|---|
|mustEndWith|None|
|mustEndWith|Lowercase|
|mustEndWith|Uppercase|
|mustEndWith|Numeric|
|mustEndWith|Symbol|
|mustEndWith|Space|
|mustStartWith|None|
|mustStartWith|Lowercase|
|mustStartWith|Uppercase|
|mustStartWith|Numeric|
|mustStartWith|Symbol|
|mustStartWith|Space|
|type|Password|
|type|Samaccountname|
|type|Unspecified|
|type|Cloud|
|type|Database|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


