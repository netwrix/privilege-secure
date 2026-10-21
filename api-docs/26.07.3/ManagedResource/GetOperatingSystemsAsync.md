
## Get all distinct operating system values across managed resources (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdGetOperatingSystemsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/OperatingSystems \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedResource/OperatingSystems -Headers $Headers
```

`GET /api/v1/ManagedResource/OperatingSystems`

> Example responses

> 200 Response

```json
[
  "string"
]
```

<h3 id="get-all-distinct-operating-system-values-across-managed-resources-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<h3 id="get-all-distinct-operating-system-values-across-managed-resources-(auth-policies:-mfarequired;-roles:-admin,app)-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


