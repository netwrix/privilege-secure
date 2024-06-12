
## Configure WinRM to use Https on target resource (Auth policies: MfaRequired; roles: Admin)

<a id="opIdConfigureWinRmHttpsAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/WinRmHttps/{managedResourceId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ManagedResource/WinRmHttps/{managedResourceId}" -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ManagedResource/WinRmHttps/{managedResourceId}`

This will create a job that will update the given
resource to match the settings given. This also
updates the WinRM settings for the resource so the
WinRM calls will be made using HTTPS.
            
**NOTE** Setting DeleteHttp to _true_ will remove the
ability to use WinRM over HTTP on the target resource.
To re-enable WinRM over HTTP you will need to manually
connect to the resource and run _Enable-PSRemoting_ as
an Administrator.

<h3 id="configure-winrm-to-use-https-on-target-resource-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceId|path|string(uuid)|true|Managed resource id|
|thumbPrint|query|string|false|Thumbprint of certificate|
|exportCert|query|boolean|false|Export certificate identified by thumbprint|
|deleteHttp|query|boolean|false|Disable-WinRmHttpListeners on target resource|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
"497f6eca-6276-4993-bfeb-53cbbbba6f08"
```


</details>

<h3 id="configure-winrm-to-use-https-on-target-resource-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|string|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Resource is not valid for operation|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Managed resource does not exist|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


