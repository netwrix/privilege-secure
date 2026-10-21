
##  (Auth policies: MfaRequired)

<a id="opIdCreateRagGatewayRequestAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/RagGatewayRequest \
  -H 'Content-Type: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "endPoint": "string",
  "httpMethod": "string",
  "ipAddress": "string",
  "serviceId": "8f8bb40f-b96b-40fe-9064-5031fbe483f9",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "createdByUsername": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/RagGatewayRequest" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/RagGatewayRequest`

> Body parameter

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "endPoint": "string",
  "httpMethod": "string",
  "ipAddress": "string",
  "serviceId": "8f8bb40f-b96b-40fe-9064-5031fbe483f9",
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "createdByUsername": "string",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}
```

<h3 id="-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.RagGatewayRequest](../Models/sbpam.models.raggatewayrequest.md)|false|none|

<h3 id="-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


