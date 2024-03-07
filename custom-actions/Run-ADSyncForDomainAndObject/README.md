## Run AD Sync for Domain

Allows you to run AD Sync for a specific domain from the PDC to a list of DCs you supply.
The action will execute the `Sync-ADObject` cmdlet for each DC in the list.

This will run on the ActionService directly and not use WinRM to connect to any servers.
The action uses the service account associated with the domain to run the sync.

If you see the error:
`Sync-ADObject : Insufficient access rights to perform the operation`

To grant permission, you’ll need to launch the `ADSIEdit` tool and grant 
permission at the root of the domain for `Replication Synchronization`

