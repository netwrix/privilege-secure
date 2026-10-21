
##  (Auth policies: MfaRequired, MfaRequired; roles: Admin)

<a id="opIdSearchManagedUsersAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/SecretVault/User/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/SecretVault/User/Search -Headers $Headers
```

`GET /api/v1/SecretVault/User/Search`

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|secretVaultId|query|string(uuid)|false|none|
|Skip|query|integer(int32)|false|Start at this item (default: 0)|
|Take|query|integer(int32)|false|Return this number of items (default: 100)|
|OrderBy|query|string|false|Property name to order results by|
|OrderDescending|query|boolean|false|Use descending sort order (default: false)|
|FilterText|query|string|false|Filter by entries that contain this text. Properties match vary by endpoint.|
|FilterColumns|query|array[string]|false|Columns to include in filter|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "name": "string",
      "username": "string",
      "password": "string",
      "managedType": "NotManaged",
      "createdDateTimeUtc": "2019-08-24T14:15:22Z",
      "comment": "string"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.ManagedUserCredentialDto]](../Models/sbpam.models.datatable_sbpam.models.managedusercredentialdto.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


