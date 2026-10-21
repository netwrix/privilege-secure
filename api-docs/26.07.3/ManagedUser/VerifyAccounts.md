
##  (Auth policies: MfaRequired; roles: Admin,App,UserPlus)

<a id="opIdVerifyAccounts"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/ManagedUser/VerifyAccounts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```powershell
# PowerShell example
$JsonBody = @"
[
  {
    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
    "managedType": "NotManaged"
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
Invoke-RestMethod -Method POST -Url "$($Host)/api/v1/ManagedUser/VerifyAccounts" -ContentType "application/json" -Body $JsonBody -Headers $Headers
```

`POST /api/v1/ManagedUser/VerifyAccounts`

> Body parameter

```json
[
  {
    "userId": "2c4a230c-5085-4924-a3e1-25fb4fc5965b",
    "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
    "managedType": "NotManaged"
  }
]
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app,userplus)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.ManagedUserAddRequest](../Models/sbpam.models.manageduseraddrequest.md)|false|none|

> Example responses

> 200 Response

```json
{
  "item1": 0,
  "item2": 0
}
```

<h3 id="-(auth-policies:-mfarequired;-roles:-admin,app,userplus)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[System.TupleSystem.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e],[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]](../Models/system.tuplesystem.int32, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_,_system.int32, system.private.corelib, version=10.0.0.0, culture=neutral, publickeytoken=7cec85d7bea7798e_.md)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
None
</aside>


