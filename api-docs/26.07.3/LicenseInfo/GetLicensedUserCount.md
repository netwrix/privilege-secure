
## Get number of licenses left and licensed users. (Auth roles: Admin)

<a id="opIdGetLicensedUserCount"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/LicenseInfo/GetLicensedUserCount \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/LicenseInfo/GetLicensedUserCount -Headers $Headers
```

`GET /api/v1/LicenseInfo/GetLicensedUserCount`

> Example responses

> 200 Response

```json
{}
```

<h3 id="get-number-of-licenses-left-and-licensed-users.-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[System.ValueTupleSystem.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e],[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]](../Models/system.valuetuplesystem.int32, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_,_system.int32, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


