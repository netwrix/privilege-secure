
## Search the existing credentials and discovered users (Auth roles: Admin,App,UserPlus)

<a id="opIdSearchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Credential/Search \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Credential/Search -Headers $Headers
```

`GET /api/v1/Credential/Search`

This will return all users and credentials from the system.
This will include users found via ADSYNC and host scans.

<h3 id="search-the-existing-credentials-and-discovered-users-(auth-roles:-admin,app,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filterText|query|string|false|Case-insensitive contains search of username|
|managedType|query|[SbPAM.Models.ManagedType](../Models/sbpam.models.managedtype.md)|false|One of: All, Internal, Standard, Service|
|credentialType|query|[SbPAM.Models.CredentialType](../Models/sbpam.models.credentialtype.md)|false|One of: Any, Configuration, User, Service, ActivityToken, Application, VaultUser, SshKeyCert|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 10)|
|includeDeleted|query|boolean|false|Include deleted items|
|orderBy|query|string|false|Property name to order results by|
|orderDescending|query|boolean|false|Use descending sort order|
|managedFilter|query|[SbPAM.Models.CredentialSearchManagedFilter](../Models/sbpam.models.credentialsearchmanagedfilter.md)|false|One of: All = -1, Managed, Unmanaged|
|privilegeFilter|query|[SbPAM.ActiveDirectory.Models.Enums.UserPrivilege](../Models/sbpam.activedirectory.models.enums.userprivilege.md)|false|One of: NotSet, Administrator, PowerUser, Guest, User, SuperUser,LinuxUser,
|

#### Detailed descriptions

**privilegeFilter**: One of: NotSet, Administrator, PowerUser, Guest, User, SuperUser,LinuxUser,
            CiscoPrivilege_0,CiscoPrivilege_1, CiscoPrivilege_2, CiscoPrivilege_3, CiscoPrivilege_4,
            CiscoPrivilege_5, CiscoPrivilege_6, CiscoPrivilege_7, CiscoPrivilege_8, CiscoPrivilege_9,
            CiscoPrivilege_10, CiscoPrivilege_11, CiscoPrivilege_12, CiscoPrivilege_13, CiscoPrivilege_14,
            CiscoPrivilege_15, DomainAdmin, EnterpriseAdmin

#### Enumerated Values

|Parameter|Value|
|---|---|
|managedType|Internal|
|managedType|Standard|
|managedType|Service|
|managedType|All|
|credentialType|Configuration|
|credentialType|User|
|credentialType|Service|
|credentialType|ActivityToken|
|credentialType|Application|
|credentialType|VaultUser|
|credentialType|SshKeyCert|
|credentialType|Any|
|managedFilter|Managed|
|managedFilter|Unmanaged|
|managedFilter|All|
|privilegeFilter|NotSet|
|privilegeFilter|Administrator|
|privilegeFilter|PowerUser|
|privilegeFilter|Guest|
|privilegeFilter|User|
|privilegeFilter|SuperUser|
|privilegeFilter|LinuxUser|
|privilegeFilter|CiscoPrivilege_0|
|privilegeFilter|CiscoPrivilege_1|
|privilegeFilter|CiscoPrivilege_2|
|privilegeFilter|CiscoPrivilege_3|
|privilegeFilter|CiscoPrivilege_4|
|privilegeFilter|CiscoPrivilege_5|
|privilegeFilter|CiscoPrivilege_6|
|privilegeFilter|CiscoPrivilege_7|
|privilegeFilter|CiscoPrivilege_8|
|privilegeFilter|CiscoPrivilege_9|
|privilegeFilter|CiscoPrivilege_10|
|privilegeFilter|CiscoPrivilege_11|
|privilegeFilter|CiscoPrivilege_12|
|privilegeFilter|CiscoPrivilege_13|
|privilegeFilter|CiscoPrivilege_14|
|privilegeFilter|CiscoPrivilege_15|
|privilegeFilter|DomainAdmin|
|privilegeFilter|EnterpriseAdmin|

> Example responses

> 200 Response

```json
{
  "data": [
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
  ],
  "recordsTotal": 0
}
```

<h3 id="search-the-existing-credentials-and-discovered-users-(auth-roles:-admin,app,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.CredentialResult]](../Models/sbpam.models.datatable_sbpam.models.credentialresult.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


