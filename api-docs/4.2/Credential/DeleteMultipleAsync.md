
## Delete list of credentials by id (Auth policies: MfaRequired; roles: Admin)

<a id="opIdDeleteMultipleAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/Credential/DeleteMultiple \
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
Invoke-RestMethod -Method POST -Url "$($NPSUrl)/api/v1/Credential/DeleteMultiple" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/Credential/DeleteMultiple`

> Body parameter

<details><summary>JSON</summary>


```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```


</details>

<h3 id="delete-list-of-credentials-by-id-(auth-policies:-mfarequired;-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[string]|false|List of Credential ids to remove|

> Example responses

> 200 Response

<details><summary>JSON</summary>


```json
{
  "item1": 0,
  "item2": 0
}
```


</details>

<h3 id="delete-list-of-credentials-by-id-(auth-policies:-mfarequired;-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[System.TupleSystem.Int32,[System.Int32]](../Models/system.tuplesystem.int32,_system.int32.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


