## Remove user profile from remote computer

Always remove the Activity Session user's profile from the target resource. 
This will remove Managed and Activity Token accounts from the target resource.
An "In Use" count is checked to ensure the profile is not deleted if there are multiple sessions`
using the same account.

It is recommended that you use the `Logoff User` step in your activity before this step.

## Sample entries from Activity Log

| LINE | DATETIME | STATUS | MESSAGE |
| --   | --       | --     | --      | 
| 33   | 7/26/2024 2:54:23 PM	| Info	| Remove user profile from remote computer script finsished, SessionId: 70074940-ee2d-4304-a87d-e5530c74c27f. |
| 32   | 7/26/2024 2:54:22 PM	| Info	| Removed User Profile for atuserI582JB11KVHWVJ  |
| 31   | 7/26/2024 2:54:22 PM	| Info	| Finding User Profile using Username: atuserI582JB11KVHWVJ |
| 30   | 7/26/2024 2:53:55 PM	| Info	| Remove user profile from remote computer script started, SessionId: 70074940-ee2d-4304-a87d-e5530c74c27f. |

## Warnings/Errors

`Remove-UserProfile: User profile removal skipped for Requester activities.`

This action will only remove user profiles for Managed Account and Activity Token activity login types.
Please note that "Delete" checkbox for account does not stop the removal of the profile. 

`User profile on $($Computer.DnsHostName) for USER [SID_VALUE] is in use by other sessions`

The custom action checks to see if the account is in use, please note that if you start/stop many Managed account activities
close together there is a possibility that the "In Use" counts may skip the removal of the User Profile.

`NPS resource settings WinRM connections are disabled for RESOURCENAME - Unable to connect. Check NPS resorce page /resources/Id for more details`

This message is displayed if the `Disable WinRM` setting is checked in NPS for the managed resource.
An NPS Administrator can change this setting on the resource detail page.

`Unable to remove user profile on DNSHOSTNAME for USERNAME [SID_VALUE] because action service is unable to connect with PowerShell Remoting.`

Check the Action Service worker log for more details. Verify that the target resource is online and reachable via WinRM by
the NPS hosts.

`Unable to remove User Profile for ...`

If there is an issue removing the user profile, a detailed error will be displayed.


# To install
1. Download the Zip file to your NPS server.
1. Unzip the file.
1. Start PowerShell as Administrator.
1. CD to the directory you unzipped to.
1. Run the Install-Addon.ps1
