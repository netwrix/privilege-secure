# Disable-EntraUser

If sessions to Entra ID fail, during provisioning or deprovisioning, with the error:
 
`Resource 'xxxxxx' does not exist or one of its queried reference-property objects are not present.`
 
Then adding this custom action to the Post-Session Actions of an activity will address the issue.
The script utilizes the Microsoft.Graph Powershell module to perform actions which can fail intermittently when using the GraphAPI

> **Note:**
A session may still fail to provision the first time it is run with this step included. However the step will run in the deprovisioning step, and clean up the offending resource references.
Subsequent attempts to launch the session will succeed
 

# Requirements

Make sure all Action Services have the `Microsoft.Graph` module installed. You will need to 
install PowerShell 7 on your NPS Application server as well as any remote Action Services that 
are running. 

> **Note:** if you are running an HA Pair, both the primary and secondary will need to have PowerShell 7 
installed.

Start PowerShell 7 as Administrator and run:

`Install-Module Microsoft.Graph -Scope AllUsers -Repository PSGallery -Force`

# Logging

| DATETIME | STATUS | MESSAGE |
| - | - | - |
| 4/29/2025 5:06:23 PM	| Info | Disable Entra User script started, SessionId: 9be676cd-df87-4945-82eb-db72c2926259. |
| 4/29/2025 5:06:24 PM	| Info | Target resource is an Entra ID Tenant ffffffff-ffff-ffff-ffff-ffffffffffff |
| 4/29/2025 5:06:28 PM	| Info | Connected to Entra ID tenant NPSlab |
| 4/29/2025 5:06:28 PM	| Info | Getting user testusrK4FHVTQTLA48E@NPS.onmicrosoft.com |
| 4/29/2025 5:06:37 PM	| Info | Found 1 Directory Roles for user testusrK4FHVTQTLA48E@NPS.onmicrosoft.com |
| 4/29/2025 5:06:45 PM	| Info | Disabling user testusrK4FHVTQTLA48E@NPS.onmicrosoft.com |
| 4/29/2025 5:06:45 PM	| Info | Restoring 1 Directory Roles for user testusrK4FHVTQTLA48E@NPS.onmicrosoft.com |
| 4/29/2025 5:06:45 PM	| Info | Disable EntraID User script finsished, SessionId: 9be676cd-df87-4945-82eb-db72c2926259. |

# Troubleshooting

```
Custom Script had errors: The term 'Connect-MgGraph' is not recognized as a name of a cmdlet, function, script file, or executable program.
Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
```

The above error will be reported if you do not have the `Microsoft.Graph` module installed on the NPS Action Service server. Follow the instructions in the Requirements section to ensure the module is installed. If you have installed the module, you may have to restart the Action Service.

Using a Administrator PowerShell prompt on the NPS server.
```powershell
Restart-Service SbPAMAction
```


# To install
1. Download the Zip file to your NPS server.
1. Unzip the file.
1. Start PowerShell as Administrator.
1. CD to the directory you unzipped to.
1. Run the Install-Addon.ps1