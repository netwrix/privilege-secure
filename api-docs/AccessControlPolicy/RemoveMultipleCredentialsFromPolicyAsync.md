
## Disassociate credential from a policy. (Auth roles: Admin)

<a id="opIdRemoveMultipleCredentialsFromPolicyAsync"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1/AccessControlPolicy/{policyId}/Credential/Remove \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
  }
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
Invoke-RestMethod -Method PUT -Url "$($Host)/api/v1/AccessControlPolicy/{policyId}/Credential/Remove" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`PUT /api/v1/AccessControlPolicy/{policyId}/Credential/Remove`

> Body parameter

```json
[
  {
    "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
    "entityType": "Credential"
  }
]
```

<h3 id="disassociate-credential-from-a-policy.-(auth-roles:-admin)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|policyId|path|string(uuid)|true|Access control policy id|
|body|body|[SbPAM.Models.CredentialOrHostUserId](../Models/sbpam.models.credentialorhostuserid.md)|false|none|

> Example responses

> 200 Response

```json
{
  "item1": 0,
  "item2": 0
}
```

<h3 id="disassociate-credential-from-a-policy.-(auth-roles:-admin)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[System.TupleSystem.Int32,[System.Int32]](../Models/system.tuplesystem.int32,_system.int32.md)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|User is not an Admin|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Policy was not found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


