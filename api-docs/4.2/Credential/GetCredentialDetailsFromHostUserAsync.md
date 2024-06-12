
## Get credential from a user (Auth policies: MfaRequired; roles: Admin)

<a id="opIdGetCredentialDetailsFromHostUserAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X GET /api/v1/Credential/Details/{userId}/User \
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
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/Credential/Details/{userId}/User" -Headers $Headers -ContentType "application/json"
```


</details>

`GET /api/v1/Credential/Details/{userId}/User`

<h3 id="get-credential-from-a-user-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userId|path|string(uuid)|true|User id|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "userName": "string",
  "displayName": "string",
  "lastVerifiedDateTimeUtc": "2019-08-24T14:15:22Z",
  "status": "string",
  "lastPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
  "nextPasswordChangeDateTimeUtc": "2019-08-24T14:15:22Z",
  "age": 0,
  "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
  "managedUserId": "439de23b-cc42-455b-b873-63056c0fad88",
  "samAccountName": "string",
  "userPrincipalName": "string",
  "dependencyCount": 0,
  "managedType": "Internal",
  "rotationType": "NotManaged",
  "credentialType": "Configuration",
  "domain": "string",
  "resource": "string",
  "platform": "string",
  "platformId": "32a6e381-64f4-4911-86b6-3bf681b64d23",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
  "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9",
  "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
  "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
  "passwordStatus": "Unspecified",
  "privilege": "NotSet",
  "lastLogonTimestamp": "2019-08-24T14:15:22Z"
}
```


</details>

<h3 id="get-credential-from-a-user-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.CredentialResult](../Models/sbpam.models.credentialresult.md)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error has occurred, see response body for details|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Credential not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


