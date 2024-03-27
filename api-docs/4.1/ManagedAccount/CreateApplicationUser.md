
## Create new Application user (Auth roles: Admin)

<a id="opIdCreateApplicationUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedAccount/CreateApplicationUser \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "entityType": "ManagedAccount",
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "name": "string",
  "displayName": "string",
  "samAccountName": "string",
  "department": "string",
  "userPrincipalName": "string",
  "email": "string",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "domainName": "string",
  "lastLogonTimestamp": "2019-08-24T14:15:22Z",
  "activeSessionCount": 0,
  "scheduledSessionCount": 0,
  "accessPolicyCount": 0,
  "certificateSerialNumber": "string",
  "locked": true,
  "lockoutEnd": "2019-08-24T14:15:22Z",
  "isReviewer": true
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedAccount/CreateApplicationUser" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedAccount/CreateApplicationUser`

> Body parameter

```json
{
  "entityType": "ManagedAccount",
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "name": "string",
  "displayName": "string",
  "samAccountName": "string",
  "department": "string",
  "userPrincipalName": "string",
  "email": "string",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "domainName": "string",
  "lastLogonTimestamp": "2019-08-24T14:15:22Z",
  "activeSessionCount": 0,
  "scheduledSessionCount": 0,
  "accessPolicyCount": 0,
  "certificateSerialNumber": "string",
  "locked": true,
  "lockoutEnd": "2019-08-24T14:15:22Z",
  "isReviewer": true
}
```

<h3 id="create-new-application-user-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.ManagedAccountView](../Models/sbpam.models.managedaccountview.md)|false|Application user to create|

> Example responses

> 200 Response

```json
{
  "entityType": "ManagedAccount",
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "hostUserId": "f49f66da-8e90-4a2e-90ba-36f4d97bfbe9",
  "name": "string",
  "displayName": "string",
  "samAccountName": "string",
  "department": "string",
  "userPrincipalName": "string",
  "email": "string",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "domainName": "string",
  "lastLogonTimestamp": "2019-08-24T14:15:22Z",
  "activeSessionCount": 0,
  "scheduledSessionCount": 0,
  "accessPolicyCount": 0,
  "certificateSerialNumber": "string",
  "locked": true,
  "lockoutEnd": "2019-08-24T14:15:22Z",
  "isReviewer": true
}
```

<h3 id="create-new-application-user-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.ManagedAccountView](../Models/sbpam.models.managedaccountview.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error creating Application user|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


