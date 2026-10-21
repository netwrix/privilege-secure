
##  (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdGetActionJobStatistic"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ActionJob/Statistics/{days} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/ActionJob/Statistics/{days} -Headers $Headers
```

`GET /api/v1/ActionJob/Statistics/{days}`

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|days|path|integer(int32)|true|none|

> Example responses

> 200 Response

```json
[
  {
    "status": null,
    "count": 0,
    "reportedDateTimeUtc": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.ActionJobStatistic](../Models/sbpam.models.actionjobstatistic.md)]|false|none|none|
|» status|any|false|none|none|
|» count|integer(int32)|false|none|none|
|» reportedDateTimeUtc|string(date-time)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


