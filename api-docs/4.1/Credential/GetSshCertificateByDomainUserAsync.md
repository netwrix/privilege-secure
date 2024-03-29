
## Get SSH Certificate by domain/username (Auth roles: Admin,App)

<a id="opIdGetSshCertificateByDomainUserAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Credential/GetSSHCertificateByDomainUser/{domainName}/{userName} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Credential/GetSSHCertificateByDomainUser/{domainName}/{userName} -Headers $Headers
```

`GET /api/v1/Credential/GetSSHCertificateByDomainUser/{domainName}/{userName}`

<h3 id="get-ssh-certificate-by-domain/username-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|domainName|path|string|true|none|
|userName|path|string|true|none|

> Example responses

> 403 Response

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

<h3 id="get-ssh-certificate-by-domain/username-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


