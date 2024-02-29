
## Test the connection to the resource (Auth roles: Admin)

<a id="opIdTestConnectionAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/TestConnection/{resourceId} \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedResource/TestConnection/{resourceId} -Headers $Headers
```

`POST /api/v1/ManagedResource/TestConnection/{resourceId}`

<h3 id="test-the-connection-to-the-resource-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|resourceId|path|string(uuid)|true|Resource id|

> Example responses

> 200 Response

```
"497f6eca-6276-4993-bfeb-53cbbbba6f08"
```

```json
"497f6eca-6276-4993-bfeb-53cbbbba6f08"
```

<h3 id="test-the-connection-to-the-resource-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|string|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


