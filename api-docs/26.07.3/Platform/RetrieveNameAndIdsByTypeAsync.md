
## Retrieves the names and IDs of platforms by type. (Auth policies: MfaRequired; roles: Admin)

<a id="opIdRetrieveNameAndIdsByTypeAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Platform/Names/{platformType} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Platform/Names/{platformType} -Headers $Headers
```

`GET /api/v1/Platform/Names/{platformType}`

<h3 id="retrieves-the-names-and-ids-of-platforms-by-type.-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|platformType|path|[SbPAM.Models.PlatformTypeEnum](../Models/sbpam.models.platformtypeenum.md)|true|The type of platform.|

#### Enumerated Values

|Parameter|Value|
|---|---|
|platformType|Unspecified|
|platformType|Cloud|
|platformType|Database|

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string",
    "basePlatformId": "01dea6be-a8fe-4b3c-9c51-3efd6a2732fb",
    "permanent": true
  }
]
```

<h3 id="retrieves-the-names-and-ids-of-platforms-by-type.-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="retrieves-the-names-and-ids-of-platforms-by-type.-(auth-policies:-mfarequired;-roles:-admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.PlatformNameIdBase](../Models/sbpam.models.platformnameidbase.md)]|false|none|[Platform name, id, and base platform id.]|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|
|» basePlatformId|string(uuid)¦null|false|none|Base platform ID for this platform.|
|» permanent|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


