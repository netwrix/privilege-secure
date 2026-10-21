
<h1 id="nps-api-hostscanjob">HostScanJob</h1>

[Get status for all host scan jobs. (Auth roles: Admin,App)](HostScanJob/GetAsync.md)

[Create a host scan job. (Auth roles: Admin,App)](HostScanJob/PostListOfIdsAsync.md)

[Get status for a host scan job. (Auth roles: Admin,App)](HostScanJob/GetJobStatusAsync.md)

[Cancel a host scan job. (Auth roles: Admin,App)](HostScanJob/CancelJobAsync.md)

[Attempt to find a scan job and its current status for the given host (Auth roles: Admin,App)](HostScanJob/GetJobStatusForHostAsync.md)

[Schedule a scan for host (Auth roles: Admin,App)](HostScanJob/ByHostIdAsync.md)

[Scan a host now (Auth roles: Admin,App)](HostScanJob/PostIdAsync.md)

[Schedule a host scan for multiple hosts (Auth roles: Admin,App)](HostScanJob/ByHostIdMultipleAsync.md)

[Schedule host scans for hosts auto-onboarded by OU (Auth roles: Admin,App)](HostScanJob/ScheduleJobsByDnsHostNameMultipleAsync.md)

[Validate host scan requests to generate host scan jobs (Auth roles: Admin,App)](HostScanJob/ValidateImportedCsvAsync.md)

[Begins a host scan by setting scan_started_utc and updating host metadata.](HostScanJob/BeginScanAsync.md)

[Upserts a batch of host users directly without staging tables.](HostScanJob/UpsertHostUserBatchAsync.md)

[Upserts a batch of groups directly to host_group using the current scan session.](HostScanJob/UpsertHostGroupBatchAsync.md)

[Upserts a batch of user-group joins directly to host_user_group_join.](HostScanJob/UpsertHostUserGroupJoinBatchAsync.md)

[Upserts domain group memberships for multiple host groups directly to host_group_group_join.](HostScanJob/UpsertHostGroupDomainMembersBatchAsync.md)

[Upserts a batch of features directly to host_feature using the current scan session.](HostScanJob/UpsertHostFeatureBatchAsync.md)

[Upserts a batch of services directly to host_service using the current scan session.](HostScanJob/UpsertHostServiceBatchAsync.md)

[Upserts a batch of scheduled tasks directly to host_scheduled_task using the current scan session.](HostScanJob/UpsertHostScheduledTaskBatchAsync.md)

[Upserts a batch of database instances directly to host_database using the current scan session.](HostScanJob/UpsertHostDatabaseBatchAsync.md)

[Upserts a batch of database dbs directly to host_database_db using the current scan session.](HostScanJob/UpsertHostDatabaseDbBatchAsync.md)

[Upserts a batch of database roles directly to host_database_role using the current scan session.](HostScanJob/UpsertHostDatabaseRoleBatchAsync.md)

[Upserts a batch of database local user joins directly to host_database_local_user_join using the current scan session.](HostScanJob/UpsertHostDatabaseLocalUserJoinBatchAsync.md)

[Upserts a batch of database local group joins directly to host_database_local_group_join using the current scan session.](HostScanJob/UpsertHostDatabaseLocalGroupJoinBatchAsync.md)

[Upserts a batch of database db group joins directly to host_database_db_group_join using the current scan session.](HostScanJob/UpsertHostDatabaseDbGroupJoinBatchAsync.md)

[Upserts a batch of database role group joins directly to host_database_role_group_join using the current scan session.](HostScanJob/UpsertHostDatabaseRoleGroupJoinBatchAsync.md)

[Upserts a batch of database role user joins directly to host_database_local_user_join using the current scan session.](HostScanJob/UpsertHostDatabaseRoleUserJoinBatchAsync.md)

[Completes a host scan by copying scan_started_utc to last_scanned_utc](HostScanJob/CompleteScanAsync.md)

