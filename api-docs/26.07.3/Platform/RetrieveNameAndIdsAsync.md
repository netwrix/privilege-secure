
## Retrieve all platform names and ids (Auth policies: MfaRequired)

<a id="opIdRetrieveNameAndIdsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Platform/Names \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Platform/Names -Headers $Headers
```

`GET /api/v1/Platform/Names`

<h3 id="retrieve-all-platform-names-and-ids-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|includeBaseId|query|boolean|false|Include the base platform id|

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

<h3 id="retrieve-all-platform-names-and-ids-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the list of platform names and ids|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="retrieve-all-platform-names-and-ids-(auth-policies:-mfarequired)-responseschema">Response Schema</h3>

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


