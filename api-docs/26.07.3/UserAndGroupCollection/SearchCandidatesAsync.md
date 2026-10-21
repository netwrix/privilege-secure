
##  (Auth policies: MfaRequired; roles: Admin, Admin,App)

<a id="opIdSearchCandidatesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/UserAndGroupCollection/SearchCandidates \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/UserAndGroupCollection/SearchCandidates -Headers $Headers
```

`GET /api/v1/UserAndGroupCollection/SearchCandidates`

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|query|string(uuid)|false|none|
|Skip|query|integer(int32)|false|Start at this item (default: 0)|
|Take|query|integer(int32)|false|Return this number of items (default: 100)|
|OrderBy|query|string|false|Property name to order results by|
|OrderDescending|query|boolean|false|Use descending sort order (default: false)|
|FilterText|query|string|false|Filter by entries that contain this text. Properties match vary by endpoint.|
|FilterColumns|query|array[string]|false|Columns to include in filter|
|entityType|query|[SbPAM.Models.ManagedAccountViewEntityTypeEnum](../Models/sbpam.models.managedaccountviewentitytypeenum.md)|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|entityType|ManagedAccount|
|entityType|ManagedAccountGroup|
|entityType|Application|
|entityType|Collection|
|entityType|Local|

> Example responses

> 200 Response

```json
{
  "data": [
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
      "licenseCount": 0,
      "isReviewer": true,
      "isDeleted": true
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.ManagedAccountView]](../Models/sbpam.models.datatable_sbpam.models.managedaccountview.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


