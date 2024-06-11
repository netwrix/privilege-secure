
## Create a new Local user (Auth roles: Admin,App)

<a id="opIdCreateLocalUserAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedAccount/CreateLocalUser \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "managedAccountView": {
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
  },
  "localUserPasswordChangeRequest": {
    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
    "username": "string",
    "passwordOld": "string",
    "passwordNew": "string"
  },
  "changePasswordNextLogin": true
}
"@

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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/ManagedAccount/CreateLocalUser" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```

`POST /api/v1/ManagedAccount/CreateLocalUser`

> Body parameter

```json
{
  "managedAccountView": {
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
  },
  "localUserPasswordChangeRequest": {
    "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
    "username": "string",
    "passwordOld": "string",
    "passwordNew": "string"
  },
  "changePasswordNextLogin": true
}
```

<h3 id="create-a-new-local-user-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.CreateLocalUserRequest](../Models/sbpam.models.createlocaluserrequest.md)|false|Local user to create|

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

<h3 id="create-a-new-local-user-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.ManagedAccountView](../Models/sbpam.models.managedaccountview.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


