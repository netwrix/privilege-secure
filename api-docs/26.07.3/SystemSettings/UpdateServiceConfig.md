
## Update the Service Config (Auth roles: Admin,App)

<a id="opIdUpdateServiceConfig"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/SystemSettings/ServiceConfig \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "insecureSkipVerify": true,
  "restUrl": "string"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/SystemSettings/ServiceConfig" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/SystemSettings/ServiceConfig`

> Body parameter

```json
{
  "insecureSkipVerify": true,
  "restUrl": "string"
}
```

<h3 id="update-the-service-config-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Common.ServiceConfig](../Models/sbpam.common.serviceconfig.md)|false|Service Config to be updated|

> Example responses

> 200 Response

```json
{
  "insecureSkipVerify": true,
  "restUrl": "string"
}
```

<h3 id="update-the-service-config-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Common.ServiceConfig](../Models/sbpam.common.serviceconfig.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


