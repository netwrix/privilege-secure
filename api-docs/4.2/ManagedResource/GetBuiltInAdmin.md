
## Retrieves the built-in account for the Managed Resource, if one exists for its platform, or a null value if the platform does not support it. (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdGetBuiltInAdmin"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/{managedResourceId}/BuiltInAdmin \
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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ManagedResource/{managedResourceId}/BuiltInAdmin" -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/ManagedResource/{managedResourceId}/BuiltInAdmin`

Introduced in NPS 4.2

<h3 id="retrieves-the-built-in-account-for-the-managed-resource,-if-one-exists-for-its-platform,-or-a-null-value-if-the-platform-does-not-support-it.-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|managedResourceId|path|string(uuid)|true|none|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "displayName": "string",
  "email": "string",
  "managed": true,
  "managedType": "Internal",
  "rotationType": "NotManaged",
  "title": "string",
  "department": "string",
  "samAccountName": "string",
  "userPrincipalName": "string",
  "distinguishedName": "string",
  "enabled": true,
  "unixId": 0,
  "privilege": "NotSet",
  "lastLogonUtc": "2019-08-24T14:15:22Z",
  "passwordChangedUtc": "2019-08-24T14:15:22Z",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "domainConfigName": "string",
  "hostId": "70e3fb2d-1cb6-4dbc-ab8d-fa7209aca5dd",
  "hostName": "string",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "managedAccountName": "string",
  "appUserType": null,
  "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
  "scheduleId": "b7b4f318-018f-4d71-ac1a-f61e4bfaefbe",
  "scheduleName": "string",
  "passwordComplexityId": "fae1d72a-2085-4283-a7b1-627c4535a6d9",
  "passwordComplexityName": "string",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "dependencyCount": 0,
  "passwordStatus": "Unspecified",
  "passwordLastCheckedUtc": "2019-08-24T14:15:22Z",
  "passwordNextChangeUtc": "2019-08-24T14:15:22Z",
  "changeOnCheckout": true,
  "changeOnRelease": true,
  "age": 0
}
```


</details>

<h3 id="retrieves-the-built-in-account-for-the-managed-resource,-if-one-exists-for-its-platform,-or-a-null-value-if-the-platform-does-not-support-it.-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.ManagedResourceLocalUserView](../Models/sbpam.models.managedresourcelocaluserview.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|If the resource ID isn't valid, the resource doesn't have a host, a platform, or the expected admin account does not exist.|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


