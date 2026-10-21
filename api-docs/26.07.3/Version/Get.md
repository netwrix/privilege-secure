
## Gets the <seealso cref="T:System.Version" /> as a string of the executing assembly.

<a id="opIdGet"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Version \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Version -Headers $Headers
```

`GET /api/v1/Version`

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="gets-the-<seealso-cref="t:system.version"-/>-as-a-string-of-the-executing-assembly.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|string|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


