
## Remove multiple managed resources (Auth policies: MfaRequired, MfaRequired; roles: Admin,App)

<a id="opIdCandidateRemoveMultiple"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/Candidate/RemoveMultiple \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
"@

$NPSUrl = "https://localhost:6500"

$Login = @{
    Login = "User"
    Password = "Password"
}
# Cookie container for multi-factor authentication
$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signinBody" -Method POST -Body (ConvertTo-Json $Login) -WebSession $WebSession -ContentType "application/json"
$Token = Invoke-RestMethod -Url "$($NPSUrl)/signin2fa" -Method Post -Body $MfaCode -Headers @{Authorization = "Bearer $Token"} -WebSession $WebSession -ContentType "application/json"

$Headers = @{
    Authorization = "Bearer $Token"
}
Invoke-RestMethod -Method POST -Url "$($NPSUrl)/api/v1/ManagedResource/Candidate/RemoveMultiple" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/ManagedResource/Candidate/RemoveMultiple`

> Body parameter

<details><summary>JSON</summary>


```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```


</details>

<h3 id="remove-multiple-managed-resources-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[string]|false|none|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
0
```


</details>

<h3 id="remove-multiple-managed-resources-(auth-policies:-mfarequired,-mfarequired;-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|integer|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not a Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


