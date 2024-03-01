
## Add multiple resources by hostid (Auth roles: Admin,App)

<a id="opIdCandidateAddMultiple"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/Candidate/AddMultiple \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "hostIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c"
}
"@

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedResource/Candidate/AddMultiple" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedResource/Candidate/AddMultiple`

> Body parameter

```json
{
  "hostIds": [
    "497f6eca-6276-4993-bfeb-53cbbbba6f08"
  ],
  "serviceAccountId": "a814cf67-aaac-43ae-acb4-8d34e82a4b4c"
}
```

<h3 id="add-multiple-resources-by-hostid-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.WebAPI.Controllers.CandidateAddMultipleAsyncRequest](../Models/sbpam.webapi.controllers.candidateaddmultipleasyncrequest.md)|false|none|

> Example responses

> 200 Response

```json
0
```

<h3 id="add-multiple-resources-by-hostid-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|integer|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


