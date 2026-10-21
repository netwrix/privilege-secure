
## Gets siems sent table data by serverId and isSent flag (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdSearchAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/SiemSent/Search \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/SiemSent/Search -Headers $Headers
```

`GET /api/v1/SiemSent/Search`

<h3 id="gets-siems-sent-table-data-by-serverid-and-issent-flag-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|serverId|query|string(uuid)|false|Optional server identifier to filter by|
|serviceId|query|string(uuid)|false|Optional service identifier to filter by|
|filterText|query|string|false|Optional text to filter records|
|filterType|query|string|false|Filter type parameter|
|orderBy|query|string|false|Property name to order results by|
|orderDescending|query|boolean|false|Use descending sort order|
|skip|query|integer(int32)|false|Start at this item (default: 0)|
|take|query|integer(int32)|false|Return this number of items (default: 100)|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "message": "string",
      "sentTime": "2019-08-24T14:15:22Z",
      "sent": true,
      "host": "string",
      "siemServerId": "6e2c5d42-95a1-42f1-85ff-f34a8f6b29d7",
      "resourceName": "string",
      "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
      "managedResourceType": "Host",
      "accountName": "string",
      "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
      "activityName": "string",
      "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
      "userName": "string",
      "serviceId": "8f8bb40f-b96b-40fe-9064-5031fbe483f9",
      "azureAdTenantId": "108c7400-79f1-4372-be73-ac37f4e8912c",
      "databaseId": "d0f4f849-8ecf-4909-96bf-7953790e45f9",
      "domainConfigId": "0ef2a0ae-0442-42e8-9ed5-4a4ed3f7578e",
      "secretVaultId": "db0fd85f-8294-44b7-b903-b86ddd322de8",
      "websiteId": "eee0b185-ac19-4fd6-bb45-58b59a8988e9"
    }
  ],
  "recordsTotal": 0
}
```

<h3 id="gets-siems-sent-table-data-by-serverid-and-issent-flag-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[SbPAM.Models.SiemSentDetailView]](../Models/sbpam.models.datatable_sbpam.models.siemsentdetailview.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


