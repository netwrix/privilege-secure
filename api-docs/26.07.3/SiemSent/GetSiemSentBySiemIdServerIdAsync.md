
## Gets siem sent by siem id and siem server id (Auth policies: MfaRequired; roles: Admin,App)

<a id="opIdGetSiemSentBySiemIdServerIdAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/SiemSent/{siemId}/{serverId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/SiemSent/{siemId}/{serverId} -Headers $Headers
```

`GET /api/v1/SiemSent/{siemId}/{serverId}`

<h3 id="gets-siem-sent-by-siem-id-and-siem-server-id-(auth-policies:-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|siemId|path|string(uuid)|true|Siem identifier|
|serverId|path|string(uuid)|true|Server identifier|

> Example responses

> 404 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="gets-siem-sent-by-siem-id-and-siem-server-id-(auth-policies:-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Siem sent record found|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Siem sent record not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal server error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


