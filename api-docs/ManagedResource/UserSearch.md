
## Search for resource users (Auth roles: Admin,App)

<a id="opIdUserSearch"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedResource/User/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ManagedResource/User/Search -Headers $Headers
```

`GET /api/v1/ManagedResource/User/Search`

<h3 id="search-for-resource-users-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Skip|query|integer(int32)|false|none|
|Take|query|integer(int32)|false|none|
|OrderBy|query|string|false|none|
|OrderDescending|query|boolean|false|none|
|FilterText|query|string|false|none|
|FilterColumns|query|array[string]|false|none|
|filterAppUserType|query|undefined|false|none|
|filterManagedType|query|[SbPAM.Models.ManagedUserType](../Models/sbpam.models.managedusertype.md)|false|none|
|domainConfigId|query|string(uuid)|false|ActiveDirectory domain configuration id|
|hostId|query|string(uuid)|false|Host id|
|IsCancellationRequested|query|boolean|false|none|
|CanBeCanceled|query|boolean|false|none|
|WaitHandle.Handle|query|[System.IntPtr](../Models/system.intptr.md)|false|none|
|WaitHandle.SafeWaitHandle.IsInvalid|query|boolean|false|none|
|WaitHandle.SafeWaitHandle.IsClosed|query|boolean|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|filterManagedType|NotManaged|
|filterManagedType|Manual|
|filterManagedType|Automatic|

> Example responses

> 200 Response

```json
{
  "data": [
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
  ],
  "recordsTotal": 0
}
```

<h3 id="search-for-resource-users-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[SbPAM.Models.DataTable[SbPAM.Models.ManagedResourceLocalUserView]](../Models/sbpam.models.datatable[sbpam.models.managedresourcelocaluserview].md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


