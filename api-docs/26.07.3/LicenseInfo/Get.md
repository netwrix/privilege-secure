
## Gets this instance.

<a id="opIdGet"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/LicenseInfo \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/LicenseInfo -Headers $Headers
```

`GET /api/v1/LicenseInfo`

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

<h3 id="gets-this-instance.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.License.Models.LicenseInfo](../Models/sbpam.license.models.licenseinfo.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


