
## SamlSignoutRequestAsync

<a id="opIdSamlSignoutRequestAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /samlSignin/Signout/{connectorId}

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
Invoke-RestMethod -Method GET -Url "$($Host)/samlSignin/Signout/{connectorId} -Headers $Headers
```

`GET /samlSignin/Signout/{connectorId}`

<h3 id="samlsignoutrequestasync-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|connectorId|path|string(uuid)|true|none|

<h3 id="samlsignoutrequestasync-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


