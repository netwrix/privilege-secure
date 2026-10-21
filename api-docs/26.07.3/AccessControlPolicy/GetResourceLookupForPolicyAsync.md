
## Get available resources for access policy (Auth policies: MfaRequired; roles: Admin,UserPlus)

<a id="opIdGetResourceLookupForPolicyAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/Lookup/{policyId}/Resource \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/AccessControlPolicy/Lookup/{policyId}/Resource -Headers $Headers
```

`GET /api/v1/AccessControlPolicy/Lookup/{policyId}/Resource`

<h3 id="get-available-resources-for-access-policy-(auth-policies:-mfarequired;-roles:-admin,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|Access control policy id|

> Example responses

> 200 Response

```json
{
  "passed": 0,
  "failed": 0,
  "report": [
    "string"
  ]
}
```

<h3 id="get-available-resources-for-access-policy-(auth-policies:-mfarequired;-roles:-admin,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.PassFailReportDto](../Models/sbpam.models.passfailreportdto.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Admin or does not have access via Access Policy custom role|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Policy was not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


