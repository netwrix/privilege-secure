
## Create and start an activity session from a request object. (Auth policies: MfaRequired)

<a id="opIdCreateAsync"></a>

> Code samples

<details><summary>Shell</summary>


```shell
# You can also use wget
curl -X POST /api/v1/ActivitySession \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer TOKEN'

```


</details>

<details><summary>PowerShell</summary>


```powershell
# PowerShell example
$JsonBody = @"
{
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "createdByUserName": "string",
  "createdFromAddress": "string",
  "activitySessionGroupId": "d5b41c0f-8f23-44fc-a3b6-c9ebb91d68db",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "managedResourceName": "string",
  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
  "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "credentialDomain": "string",
  "credentialUsername": "string",
  "credentialName": "string",
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "activityName": "string",
  "note": "string",
  "ticket": "string",
  "customFields": [
    {
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "customFieldDataType": "Integer",
      "name": "string",
      "value": "string"
    }
  ]
}
"@

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
Invoke-RestMethod -Method POST -Uri "$($NPSUrl)/api/v1/ActivitySession" -ContentType "application/json" -Body $JsonBody -Headers $Headers -ContentType "application/json"
```


</details>

`POST /api/v1/ActivitySession`

> Body parameter

<details><summary>JSON</summary>


```json
{
  "createdBy": "25a02396-1048-48f9-bf93-102d2fb7895e",
  "createdByUserName": "string",
  "createdFromAddress": "string",
  "activitySessionGroupId": "d5b41c0f-8f23-44fc-a3b6-c9ebb91d68db",
  "managedAccountId": "98c25b84-2c06-4fcd-94c7-306443f45a3d",
  "managedResourceId": "43aaf5a7-e929-49e6-870e-49d47d9cdc2f",
  "managedResourceName": "string",
  "activityId": "bdfd0655-55e6-45e6-8bbc-6ed31d3820b5",
  "accessPolicyId": "b968355d-4dbb-453c-8c65-8fcb2d303aa7",
  "credentialId": "f568fec0-10b6-4b94-9daf-e62c50c9bf3e",
  "credentialDomain": "string",
  "credentialUsername": "string",
  "credentialName": "string",
  "startDateTimeUtc": "2019-08-24T14:15:22Z",
  "endDateTimeUtc": "2019-08-24T14:15:22Z",
  "activityName": "string",
  "note": "string",
  "ticket": "string",
  "customFields": [
    {
      "policyId": "2f5573e6-5ba4-48f2-a75d-df99c936463b",
      "customFieldDataType": "Integer",
      "name": "string",
      "value": "string"
    }
  ]
}
```


</details>

<h3 id="create-and-start-an-activity-session-from-a-request-object.-(auth-policies:-mfarequired)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SbPAM.Models.ActivitySessionRequest](../Models/sbpam.models.activitysessionrequest.md)|false|if request.StartDateTimeUtc is empty, starts now|

> Example responses

> 400 Response

<details><summary>JSON</summary>


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


</details>

<h3 id="create-and-start-an-activity-session-from-a-request-object.-(auth-policies:-mfarequired)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[Microsoft.AspNetCore.Mvc.ProblemDetails](../Models/microsoft.aspnetcore.mvc.problemdetails.md)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Server Error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


