
## Set thumbprint of the expected certificate for resource (Auth roles: App)

<a id="opIdCertThumbprintAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/ManagedResource/{resourceId}/CertThumbprint \
  -H 'Content-Type: application/json-patch+json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "thumbprint": "string"
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/ManagedResource/{resourceId}/CertThumbprint" -ContentType "application/json-patch+json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/ManagedResource/{resourceId}/CertThumbprint`

> Body parameter

```json
{
  "thumbprint": "string"
}
```

<h3 id="set-thumbprint-of-the-expected-certificate-for-resource-(auth-roles:-app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|resourceId|path|string(uuid)|true|Resource id|
|type|query|undefined|false|WinRM, RDP, SSH|
|body|body|[SbPAM.Models.ThumbprintInfo](../Models/sbpam.models.thumbprintinfo.md)|false|Thumbprint for certificate|

> Example responses

> 400 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="set-thumbprint-of-the-expected-certificate-for-resource-(auth-roles:-app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|No thumbprint provided OR unable to find managed resource|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Only callable in ActionService (custom PowerShell steps)|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


