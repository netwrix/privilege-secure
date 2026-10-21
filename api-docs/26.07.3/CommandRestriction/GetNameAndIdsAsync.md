
## Get list of names and ids of Command Restrictions (Auth policies: MfaRequired; roles: Admin, Admin,App)

<a id="opIdGetNameAndIdsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/CommandRestriction/NameAndIds \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/CommandRestriction/NameAndIds -Headers $Headers
```

`GET /api/v1/CommandRestriction/NameAndIds`

> Example responses

> 200 Response

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "name": "string"
  }
]
```

<h3 id="get-list-of-names-and-ids-of-command-restrictions-(auth-policies:-mfarequired;-roles:-admin,-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|None|

<h3 id="get-list-of-names-and-ids-of-command-restrictions-(auth-policies:-mfarequired;-roles:-admin,-admin,app)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[SbPAM.Models.NameAndId](../Models/sbpam.models.nameandid.md)]|false|none|none|
|» id|string(uuid)|false|none|none|
|» name|string¦null|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


