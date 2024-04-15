## Run AD Sync for Domain, Object and Group

Allows you to run AD Sync for a specific domain from the PDC to a list of DCs you supply.
The action will execute the `Sync-ADObject` cmdlet for each DC in the list. 

There is also a `Group` parameter that allows you put in a string to match so only those groups will be synchronized.
The match is a case-insensitive match to the DN of the group. So a value of `Admin` will match `Domain Admins` and `Administrators`

This will run on the ActionService directly and not use WinRM to connect to any servers.
The action uses the service account associated with the domain to run the sync.

If you see the error:
`Sync-ADObject : Insufficient access rights to perform the operation`

To grant permission, you’ll need to launch the `ADSIEdit` tool and grant 
permission at the root of the domain for `Replication Synchronization`

## To install

1. Download the Zip file to your NPS server.
2. Unzip the file.
3. Start PowerShell as Administrator.
4. CD to the directory you unzipped to.
5. Run the `Install-Addon.ps1`