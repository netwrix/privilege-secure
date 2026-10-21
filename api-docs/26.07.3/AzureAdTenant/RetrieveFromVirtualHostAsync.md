
##  (Auth roles: Admin,App)

<a id="opIdRetrieveFromVirtualHostAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AzureAdTenant/RetrieveFromVirtualHost/{virtualHostId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AzureAdTenant/RetrieveFromVirtualHost/{virtualHostId} -Headers $Headers
```

`GET /api/v1/AzureAdTenant/RetrieveFromVirtualHost/{virtualHostId}`

<h3 id="-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|virtualHostId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "description": "string",
  "tenantId": "string",
  "logonUrl": "string",
  "emailDomain": "string",
  "associatedDomainId": "ff9f5d4c-96c6-4b4d-bd1f-f4b6029efcd8",
  "processGroupMembership": true,
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c",
  "virtualHostId": "bc1c2187-fc2b-47af-80fd-f5832bdcfcd1",
  "virtualWebsiteId": "b714a209-c14c-4522-b502-becc34cf7512"
}
```

<h3 id="-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.AzureAdDto](../Models/sbpam.models.azureaddto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


