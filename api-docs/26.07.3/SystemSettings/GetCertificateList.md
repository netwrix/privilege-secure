
## Get Certificate List (Auth roles: Admin, Admin,App)

<a id="opIdGetCertificateList"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/SystemSettings/Certificates \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/SystemSettings/Certificates -Headers $Headers
```

`GET /api/v1/SystemSettings/Certificates`

<h3 id="get-certificate-list-(auth-roles:-admin,-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|serverAuthOnly|query|boolean|false|Whether to get server auth only|

> Example responses

> 200 Response

```json
[
  {
    "friendlyName": "string",
    "subject": "string",
    "thumbprint": "string"
  }
]
```

<h3 id="get-certificate-list-(auth-roles:-admin,-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-certificate-list-(auth-roles:-admin,-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.CertificateDto](../Models/sbpam.models.certificatedto.md)]|false|none|none|
|» friendlyName|string¦null|false|none|none|
|» subject|string¦null|false|none|none|
|» thumbprint|string¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


