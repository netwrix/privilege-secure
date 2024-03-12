
<h2 id="tocS_SbPAM.License.Models.LicenseInfo">SbPAM.License.Models.LicenseInfo</h2>

<a id="schemasbpam.license.models.licenseinfo"></a>
<a id="schema_SbPAM.License.Models.LicenseInfo"></a>
<a id="tocSsbpam.license.models.licenseinfo"></a>
<a id="tocssbpam.license.models.licenseinfo"></a>

```json
{
  "credits": 0,
  "maxCredits": 0,
  "machineID": "string",
  "isTrial": true,
  "isTrialExpired": true,
  "lastActivationTime": "2019-08-24T14:15:22Z",
  "lastConsumptionTime": "2019-08-24T14:15:22Z",
  "trialExpirationDate": "2019-08-24T14:15:22Z",
  "customerInfo": {
    "companyName": "string",
    "address1": "string",
    "address2": "string",
    "city": "string",
    "stateProvince": "string",
    "country": "string",
    "postalCode": "string",
    "phone": "string",
    "fax": "string",
    "email": "string",
    "fullName": "string"
  },
  "errorMessage": "string",
  "creditInfo": [
    {
      "activationName": "string",
      "expirationDate": "2019-08-24T14:15:22Z",
      "credits": 0
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|credits|integer(int32)|false|none|none|
|maxCredits|integer(int32)|false|none|none|
|machineID|string¦null|false|none|none|
|isTrial|boolean|false|none|none|
|isTrialExpired|boolean|false|none|none|
|lastActivationTime|string(date-time)|false|none|none|
|lastConsumptionTime|string(date-time)|false|none|none|
|trialExpirationDate|string(date-time)|false|none|none|
|customerInfo|[SbPAM.License.Models.CustomerInfo](../Models/sbpam.license.models.customerinfo.md)|false|none|none|
|errorMessage|string¦null|false|none|none|
|creditInfo|[[SbPAM.License.Models.CreditInfo](../Models/sbpam.license.models.creditinfo.md)]¦null|false|none|none|


