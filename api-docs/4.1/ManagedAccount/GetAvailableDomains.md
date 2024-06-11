
## GetAvailableDomains

<a id="opIdGetAvailableDomains"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/ManagedAccount/GetAvailableDomains \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Uri "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method GET -Uri "$($NPSUrl)/api/v1/ManagedAccount/GetAvailableDomains -Headers $Headers -ContentType "application/json"
```

`GET /api/v1/ManagedAccount/GetAvailableDomains`

> Example responses

> 200 Response

```
["string"]
```

```json
[
  "string"
]
```

<h3 id="getavailabledomains-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="getavailabledomains-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


