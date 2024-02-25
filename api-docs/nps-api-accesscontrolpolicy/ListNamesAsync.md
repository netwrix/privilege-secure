
## List the names and ids for the access policies. Administrators are able to view all policies.
Access policy permissions can limit non-administrator access to specific policies for non-administrator users.

<a id="opIdListNamesAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/Names \
  -H 'Accept: text/plain' \
  -H 'Authorization: API_KEY'

```

```powershell

$Login = @{
    Login = "User",
    Password = "Password"
}
$Token = Invoke-RestMethod -Url /signinBody -Method POST -Body (ConvertTo-Json $Login)
$Token = Invoke-RestMethod -Url /sigin2fa -Method Post -Body $MfaCode -Headers @{Authorization: "Bearer $Token"}

$Headers = @{

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/Names
```

`GET /api/v1/AccessControlPolicy/Names`

undefined

undefined

undefined

#### METHODEND List the names and ids for the access policies. Administrators are able to view all policies.
Access policy permissions can limit non-administrator access to specific policies for non-administrator users.

