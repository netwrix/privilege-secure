
##  (Auth policies: MfaRequired, MfaRequired; roles: Admin,App,AuditingAndReporting)

<a id="opIdSearchHosts"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ReportAttributeTemplate/Values/SearchHosts \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ReportAttributeTemplate/Values/SearchHosts -Headers $Headers
```

`GET /api/v1/ReportAttributeTemplate/Values/SearchHosts`

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app,auditingandreporting)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
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
    "string"
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app,auditingandreporting)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[System.String, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]](../Models/sbpam.models.datatable_system.string, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


