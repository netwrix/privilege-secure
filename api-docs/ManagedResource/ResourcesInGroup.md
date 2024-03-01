
## Return DataTable of managed resources in group (Auth roles: Admin,App)

<a id="opIdResourcesInGroup"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/InGroup/{managedResourceGroupId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedResource/InGroup/{managedResourceGroupId} -Headers $Headers
```

`GET /api/v1/ManagedResource/InGroup/{managedResourceGroupId}`

<h3 id="return-datatable-of-managed-resources-in-group-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceGroupId|path|string(uuid)|true|none|
|filterText|query|string|false|none|
|orderBy|query|string|false|Property name to order results by|
|orderDescending|query|boolean|false|Use descending sort order|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: -1)|
|showAll|query|boolean|false|none|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "name": "string",
      "displayName": "string",
      "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
      "dnsHostName": "string",
      "hostDistinguishedName": "string",
      "hostObjectSid": "string",
      "onboardState": "NotOnboard",
      "onboardStateName": "string",
      "ipAddress": "string",
      "manageAccount": "Unmanaged",
      "os": "string",
      "saName": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "builtInAccount": "string",
      "lastScanDateTimeUtc": "2019-08-24T14:15:22Z"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="return-datatable-of-managed-resources-in-group-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceSkeletonDto]](../Models/sbpam.models.datatable[sbpam.models.managedresourceskeletondto].md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


