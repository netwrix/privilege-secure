
## Remove batch of managed resources (Auth roles: Admin,App)

<a id="opIdDeleteIdsAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedResource/Delete \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
"@

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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedResource/Delete" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedResource/Delete`

> Body parameter

```json
[
  "497f6eca-6276-4993-bfeb-53cbbbba6f08"
]
```

<h3 id="remove-batch-of-managed-resources-(auth-roles:-admin,app)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|removeFromDb|query|boolean|false|Completely remove record from database|
|body|body|array[string]|false|none|

> Example responses

> 400 Response

```json
{
  "type": "string",
  "title": "string",
  "status": 0,
  "detail": "string",
  "instance": "string",
  "property1": null,
  "property2": null
}
```

<h3 id="remove-batch-of-managed-resources-(auth-roles:-admin,app)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error while deleting, see Web log for details|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Administrator|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


