
## Provides list of SAML NamePolicyIDs supported by the application
Currently only supporting 'Transient Identifier' and 'Unspecified' but built with support for more
Only used by UI (Auth roles: Admin)

<a id="opIdGetSamlNamePolicies"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/MfaConnector/Saml/NamePolicies \
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
Invoke-RestMethod -Method GET -Url "$($Host)/api/v1/MfaConnector/Saml/NamePolicies -Headers $Headers
```

`GET /api/v1/MfaConnector/Saml/NamePolicies`

> Example responses

> 200 Response

```json
{
  "property1": "string",
  "property2": "string"
}
```

<h3 id="provides-list-of-saml-namepolicyids-supported-by-the-application
currently-only-supporting-'transient-identifier'-and-'unspecified'-but-built-with-support-for-more
only-used-by-ui-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|Inline|

<h3 id="provides-list-of-saml-namepolicyids-supported-by-the-application
currently-only-supporting-'transient-identifier'-and-'unspecified'-but-built-with-support-for-more
only-used-by-ui-(auth-roles:-admin)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» **additionalProperties**|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


