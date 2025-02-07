# ActivitySessionReport PowerShell

### Requirements
* PowerShell 7
* NPS PowerShell module 
* Machine that can access NPS (doesn't need to be NPS server)
* Admin account 

### Installation
1. Copy the script to the machine that has the required components
1. Unblock the file if required

### Run the script
1. Open PowerShell 7 command window
1. Change directory to where the script was copied
1. Run the script

```text
.\ActivitySessionReport.ps1 -NpsUrl https://192.168.77.114:6500 -StartDate (Get-Date).AddDays(-10) -Days 2
cmdlet ActivitySessionReport.ps1 at command pipeline position 1
Supply values for the following parameters:
NpsAdmin
User: sbpam\kevinh
Password for user sbpam\kevinh: **********
MfaCode: 9797973
OutFile: out.csv
Logging in to https://192.168.77.114:6500 as sbpam\kevinh 
```

When prompted for the `NpsAdmin` enter your NPS username as `domain\username` and your password. 

Enter your authenticator code when prompted for `MfaCode`
**NOTE** If your user is set as MFA Not Required enter `NA`

To search for a specific user, use the `-SearchUser` parameter and provide the name of the user you want to find sessions for as the parameter value.
 
For **Activity Session Data**:

| DataSource           | Attribute          | Description                                             |
|----------------------|--------------------|---------------------------------------------------------|
| Activity Session Data| SessionId          | The unique identifier for the Activity Session          |
| Activity Session Data| User               | The user that created the session                       |
| Activity Session Data| LoginAccount       | The account that was used during the session            |
| Activity Session Data| Resource           | The name of the resource used during the session        |
| Activity Session Data| ActivityName       | The activity name used during the session               |
| Activity Session Data| PolicyName         | The name of the access policy used for the session      |
| Activity Session Data| Ticket             | The ticket number entered by the user                   |
| Activity Session Data| Notes              | Any notes entered by the user                           |
| Activity Session Data| StartDateUtc       | The time when the user requested the session to start   |
| Activity Session Data| ActualStartDateUtc | The time the session started                            |
| Activity Session Data| EndDateUtc         | The time the session was scheduled to end               |
| Activity Session Data| ActualEndDateUtc   | The time the session actually ended                     |
| Activity Session Data| CreatedUtc         | The time the session object was created in the database |
| Activity Session Data| ModifiedUtc        | The time the session object was modified in the database |
| Activity Session Data| Status             | The status that was set on the activity session         |
| Activity Session Data| StatusDescription  | Description of the status                               |
| Activity Session Data| Url                |  API Url that can be used to fetch Activity Session data in NPS |

For **ProxySessions**:

| DataSource   | Attribute             | Description                                           |
|--------------|-----------------------|-------------------------------------------------------|
| ProxySessions| ProxySessionId        | Unique identifier for the proxy session               |
| ProxySessions| ProxySessionType      | The type of proxy session one of "RDP", "SSH" or "WebSite" |
| ProxySessions| ProxySessionStartUtc  | The start time of the proxy session                   |
| ProxySessions| ProxySessionEndUtc    | The end time of the proxy session                     |

For **Approvals**:

| DataSource  | Attribute           | Description                                   |
|-------------|---------------------|-----------------------------------------------|
| Approvals   | ApprovalState       | State of approval (Required, Approved, Denied)|
| Approvals   | Approver            | SamAccountName for the approver               |
| Approvals   | ApproverSid         | SID for the approver                          |
| Approvals   | Approver            | Display name for the approver                 |
| Approvals   | ApproverEmail       | Email Address for the approver                |
| Approvals   | ApproverUpn         | UPN for the approver                          |
| Approvals   | ApprovalNotes       | Any Notes left by the approver                |
| Approvals   | ApprovalCreatedUtc  | Date approval was created in database         |
| Approvals   | ApprovalModifiedUtc | Date approval was modified in database        |
| Approvals   | ApprovalUrl         |  API Url that can be used to fetch Approval data in NPS |
