
## Get list of hosts where credential has been discovered (Auth roles: Admin)

<a id="opIdGetDistinctHostsForCredentialAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/Credential/Hosts/{credentialId} \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/Credential/Hosts/{credentialId} -Headers $Headers
```

`GET /api/v1/Credential/Hosts/{credentialId}`

<h3 id="get-list-of-hosts-where-credential-has-been-discovered-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credentialId|path|string(uuid)|true|none|

> Example responses

> 200 Response

```
["497f6eca-6276-4993-bfeb-53cbbbba6f08"]
```

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="get-list-of-hosts-where-credential-has-been-discovered-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline|

<h3 id="get-list-of-hosts-where-credential-has-been-discovered-(auth-roles:-admin)-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


