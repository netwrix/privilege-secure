
## Create a one time use token. (Auth policies: MfaRequired)

<a id="opIdCreateOneTimeUseToken"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/UserToken/OneTimeUseToken \
  -H 'Accept: text/plain'

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/UserToken/OneTimeUseToken -Headers $Headers
```

`POST /api/v1/UserToken/OneTimeUseToken`

<h3 id="create-a-one-time-use-token.-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|video|query|boolean|false|none|

> Example responses

> 201 Response

```
{"id":"497f6eca-6276-4993-bfeb-53cbbbba6f08","name":"string","activitySessionId":"c1c86d56-eacf-4833-87a3-de4e9ac6a574","managedAccountId":"98c25b84-2c06-4fcd-94c7-306443f45a3d","createdDateTimeUtc":"2019-08-24T14:15:22Z","expirationDate":"2019-08-24T14:15:22Z","revoked":true,"videoToken":true,"createdBy":"25a02396-1048-48f9-bf93-102d2fb7895e","nodeId":"959356e3-6168-4a92-b4a5-b9d462be6177","modifiedDateTimeUtc":"2019-08-24T14:15:22Z"}
```

```json
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "name": "string",
  "activitySessionId": "c1c86d56-eacf-4833-87a3-de4e9ac6a574",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "createdDateTimeUtc": "2019-08-24T14:15:22Z",
  "expirationDate": "2019-08-24T14:15:22Z",
  "revoked": true,
  "videoToken": true,
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "nodeId": "959356e3-6168-4a92-b4a5-b9d462be6177",
  "modifiedDateTimeUtc": "2019-08-24T14:15:22Z"
}
```

<h3 id="create-a-one-time-use-token.-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[SbPAM.Models.OneTimeUseToken](../Models/sbpam.models.onetimeusetoken.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


