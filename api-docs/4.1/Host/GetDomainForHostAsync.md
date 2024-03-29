
## Get domain for host (Auth roles: Admin,App)

<a id="opIdGetDomainForHostAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Host/{id}/Domain \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Host/{id}/Domain -Headers $Headers
```

`GET /api/v1/Host/{id}/Domain`

<h3 id="get-domain-for-host-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|NPS Host Id|

> Example responses

> 200 Response

```json
{
  "id": "c9151464-b069-4770-b7ea-a1f6e23f2428",
  "name": null,
  "domainName": null,
  "netBiosName": null,
  "domainController": null,
  "usnChanged": null,
  "activeDirectoryDomainConfigurationId": "00000000-0000-0000-0000-000000000000",
  "activeDirectoryDomainConfiguration": null,
  "functionalLevel": null,
  "activeDirectoryGroup": null,
  "objectSid": null,
  "maxRenewAge": null,
  "maxTicketAge": null,
  "nodeId": "710b18c4-ac74-4cfc-9aeb-4a3794149923",
  "createdDateTimeUtc": "0001-01-01T00:00:00Z",
  "modifiedDateTimeUtc": "0001-01-01T00:00:00Z"
}
```

<h3 id="get-domain-for-host-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.ActiveDirectory.Models.ActiveDirectoryDomain](../Models/sbpam.activedirectory.models.activedirectorydomain.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


