
##  (Auth roles: Admin,App)

<a id="opIdGetGroupsForUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Group/ForUser/{userId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Group/ForUser/{userId} -Headers $Headers
```

`GET /api/v1/Group/ForUser/{userId}`

<h3 id="-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
    "hostName": "string",
    "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
    "managedResourceName": "string",
    "managedResourceDisplayName": "string",
    "groupMembers": [
      "string"
    ],
    "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
    "createdDateTimeUtc": "20240101T05:07:08.555Z",
    "modifiedDateTimeUtc": "20240102T05:07:08.555Z"
  }
]
```

<h3 id="-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="-(auth-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.ActiveDirectory.Models.HostGroupInfo](../Models/sbpam.activedirectory.models.hostgroupinfo.md)]|false|none|[Host group information]|
|» id|string(uuid)|false|none|Unique id and DB key for this group.|
|» name|string¦null|false|none|Name for this group.|
|» hostId|string(uuid)|false|none|Id of host to which this group belongs.|
|» hostName|string¦null|false|none|Name of the host to which this group belongs.|
|» managedResourceId|string(uuid)¦null|false|none|Id of the managed resource associated with this group.|
|» managedResourceName|string¦null|false|none|Name of the managed resource associated with this group.|
|» managedResourceDisplayName|string¦null|false|none|Display name of the managed resource associated with this group.|
|» groupMembers|[string]¦null|false|read-only|List of group members.|
|» nodeId|string(uuid)|false|none|Internal identifier for node that is the primary database.<br>This should not be sent as a property during creation.|
|» createdDateTimeUtc|string(date-time)|false|none|Internal date (when object was created in database)|
|» modifiedDateTimeUtc|string(date-time)|false|none|Internal date (when object was modified in database)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


