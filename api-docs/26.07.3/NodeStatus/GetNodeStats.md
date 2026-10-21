
##  (Auth roles: Admin)

<a id="opIdGetNodeStats"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/NodeStatus/Nodes/{id}/stats \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/NodeStatus/Nodes/{id}/stats -Headers $Headers
```

`GET /api/v1/NodeStatus/Nodes/{id}/stats`

<h3 id="-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|none|

> Example responses

> 200 Response

```json
[
  {
    "mem": 0.1,
    "cpu": 0.1,
    "feature": "string",
    "pid": 0,
    "ppid": 0
  }
]
```

<h3 id="-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="-(auth-roles:-admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.NodeStats](../Models/sbpam.models.nodestats.md)]|false|none|none|
|» mem|number(double)|false|none|none|
|» cpu|number(float)|false|none|none|
|» feature|string¦null|false|none|none|
|» pid|integer(int32)|false|none|none|
|» ppid|integer(int32)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


