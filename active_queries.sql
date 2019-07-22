-- Monitor Active Queries on System

SELECT 
	datid,
	datname,
	pid AS process_id,
	usesysid,
	usename AS user_name,
	application_name,
	client_addr,
	client_hostname,
	client_port,
	query_start,
	waiting,
	state,
	query
FROM 
	pg_stat_activity 
WHERE  
	state IN ('active', 'idle in transaction')
ORDER BY 
	query_start
;