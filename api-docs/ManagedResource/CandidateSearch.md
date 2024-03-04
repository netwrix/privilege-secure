
## Search for resources that are not under management (Auth roles: Admin,App)

<a id="opIdCandidateSearch"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/Candidate/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedResource/Candidate/Search -Headers $Headers
```

`GET /api/v1/ManagedResource/Candidate/Search`

The filterText parameter will perform a case-insensitive search using the following properties:
* DisplayName
* DomainName
* Os
* DnsHostName
* DistinguishedName
* ServiceAccountName

<h3 id="search-for-resources-that-are-not-under-management-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterAppResourceType|query|undefined|false|NotEnrolled, Resource|
|filterText|query|string|false|Search for items that contain this string|
|domainConfigId|query|string(uuid)|false|ActiveDirectory domain configuration id|
|orderBy|query|string|false|Property name to order results by|
|orderDescending|query|boolean|false|Use descending sort order|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 100)|
|filterServers|query|boolean|false|none|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "appResourceType": null,
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "displayName": "string",
      "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
      "platformName": "string",
      "os": "string",
      "version": "string",
      "ipAddress": "string",
      "isDomainController": true,
      "dnsHostName": "string",
      "distinguishedName": "string",
      "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
      "domainName": "string",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
      "serviceAccountName": "string"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-resources-that-are-not-under-management-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceCandidateView]](../Models/sbpam.models.datatable_sbpam.models.managedresourcecandidateview.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


