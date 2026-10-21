
## Posts the specified license.

<a id="opIdPostAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/LicenseInfo \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "license": "string"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/LicenseInfo" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/LicenseInfo`

> Body parameter

```json
{
  "license": "string"
}
```

<h3 id="posts-the-specified-license.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.License.Models.LicenseFileContent](../Models/sbpam.license.models.licensefilecontent.md)|false|The license.|

> Example responses

> 200 Response

```json
{
  "credits": 0,
  "maxCredits": 0,
  "machineID": "string",
  "isTrial": true,
  "isTrialExpired": true,
  "lastActivationTime": "2019-08-24T14:15:22Z",
  "lastConsumptionTime": "2019-08-24T14:15:22Z",
  "trialExpirationDate": "2019-08-24T14:15:22Z",
  "customerInfo": {
    "companyName": "string",
    "address1": "string",
    "address2": "string",
    "city": "string",
    "stateProvince": "string",
    "country": "string",
    "postalCode": "string",
    "phone": "string",
    "fax": "string",
    "email": "string",
    "fullName": "string"
  },
  "errorMessage": "string",
  "creditInfo": [
    {
      "activationName": "string",
      "expirationDate": "2019-08-24T14:15:22Z",
      "credits": 0
    }
  ]
}
```

<h3 id="posts-the-specified-license.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.License.Models.LicenseInfo](../Models/sbpam.license.models.licenseinfo.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


