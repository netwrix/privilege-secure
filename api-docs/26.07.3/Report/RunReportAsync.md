
##  (Auth policies: MfaRequired)

<a id="opIdRunReportAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/Report/Run/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "skip": 0,
  "take": 0,
  "orderBy": "string",
  "orderDescending": true,
  "filterText": "string",
  "filterColumns": [
    "string"
  ]
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/Report/Run/{id}" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/Report/Run/{id}`

> Body parameter

```json
{
  "skip": 0,
  "take": 0,
  "orderBy": "string",
  "orderDescending": true,
  "filterText": "string",
  "filterColumns": [
    "string"
  ]
}
```

<h3 id="-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|
|body|body|[SbPAM.Models.SearchParams](../Models/sbpam.models.searchparams.md)|false|none|

> Example responses

> 200 Response

```json
{
  "data": [
    null
  ],
  "recordsTotal": 0
}
```

<h3 id="-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SbPAM.Models.DataTable[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]](../Models/sbpam.models.datatable_system.object, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


