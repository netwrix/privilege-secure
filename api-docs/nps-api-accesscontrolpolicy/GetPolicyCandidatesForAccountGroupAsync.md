
## Retrieve policy candidates by managed account id.

<a id="opIdGetPolicyCandidatesForAccountGroupAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates \
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

Invoke-RestMethod -Method GET -Url /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates
```

`GET /api/v1/AccessControlPolicy/ManagedAccountGroup/Candidates`

undefined

undefined

undefined

undefined

#### METHODEND Retrieve policy candidates by managed account id.

