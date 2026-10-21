
<h1 id="nps-api-activitysession">ActivitySession</h1>

[Get Activity Session Configuration (Auth policies: MfaRequired, MfaRequired; roles: Admin,App,AuditingAndReporting)](ActivitySession/GetActivityConfigurationAsync.md)

[Get the session counts by status (Auth policies: MfaRequired, MfaRequired; roles: App)](ActivitySession/GetActivitySessionCountAsync.md)

[Get all sessions for a resource (Auth policies: MfaRequired, MfaRequired; roles: Admin,AuditingAndReporting)](ActivitySession/GetSessionSummaryByHostAsync.md)

[Get all sessions by status (Auth policies: MfaRequired)](ActivitySession/GetHistoricalSessionSummaryAsync.md)

[Get all sessions by status for the logged on user](ActivitySession/GetHistoricalSessionSummaryForUserAsync.md)

[Get all sessions by category, if no category given, then return all. (Auth policies: MfaRequired, MfaRequired; roles: Admin,AuditingAndReporting)](ActivitySession/GetAllActivitySessionsByStatusAsync.md)

[Create and start an activity session from a request object. (Auth policies: MfaRequired)](ActivitySession/CreateAsync.md)

[Approval of session is affirmed by this user (Auth policies: MfaRequired)](ActivitySession/ApproveAsync.md)

[Approval of session is denied by this user (Auth policies: MfaRequired)](ActivitySession/DenyAsync.md)

[Check whether the active session user can view password (Auth policies: MfaRequired)](ActivitySession/ViewPasswordAsync.md)

[Display password to be copied to clipboard (Auth policies: MfaRequired)](ActivitySession/CopyPasswordAsync.md)

[Extend the given activity session by some number of minutes (Auth policies: MfaRequired)](ActivitySession/ExtendAsync.md)

[Get Activity Session Summary by Session Id (Auth policies: MfaRequired)](ActivitySession/GetActivitySessionSummaryByIdAsync.md)

[Gets a session by id (Auth policies: MfaRequired)](ActivitySession/GetByIdAsync.md)

[Ends an activity session ASAP. (Auth policies: MfaRequired)](ActivitySession/DeleteAsync.md)

[Gets logs for session by id (Auth policies: MfaRequired)](ActivitySession/GetSessionLogsAsync.md)

[Updates a Activity Session (Auth policies: MfaRequired, MfaRequired; roles: App)](ActivitySession/UpdateAsync.md)

[Updates a Activity Session Login Account (Auth policies: MfaRequired; roles: App)](ActivitySession/UpdateSessionLoginAccountAsync.md)

[Create and start an activity session group from a list of request objects. (Auth policies: MfaRequired)](ActivitySession/CreateActivitySessionGroupAsync.md)

[Get the count of managed users and groups that have been flipped. (Auth policies: MfaRequired; roles: Admin,AuditingAndReporting)](ActivitySession/GetFlippedManagedUserGroupCountAsync.md)

[Get the count of unique resources that have been flipped. (Auth policies: MfaRequired)](ActivitySession/GetFlippedResourceCountAsync.md)

[Get the SSH URL of an Activity Session (Auth policies: MfaRequired)](ActivitySession/GetSshUrlAsync.md)

[Get the RDP File of an Activity Session (Auth policies: MfaRequired)](ActivitySession/GetRdpFileAsync.md)

[Encrypted File Download (Auth policies: MfaRequired)](ActivitySession/DownloadAsync.md)

[Search Activity Sessions (Auth policies: MfaRequired; roles: Admin,AuditingAndReporting)](ActivitySession/SearchAsync.md)

[Check the Approval State of an Activity Session (internal service API) (Auth policies: MfaRequired; roles: App)](ActivitySession/CheckApprovalStateAsync.md)

[Cancels any hanging Activity Sessions (internal service API) (Auth policies: MfaRequired; roles: App)](ActivitySession/CancelHangingSessionsAsync.md)

[Locks/Unlocks Activity Sessions (Auth policies: MfaRequired; roles: Admin,App,UserPlus)](ActivitySession/LockAsync.md)

[ (Auth policies: MfaRequired)](ActivitySession/GetActivitySessionConnectionProfileAsync.md)

