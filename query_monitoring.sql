-- Monitoring Number of Queries on System
-- Helpful in setting up alerts in any backend monitoring scripts

-- -- Total Number of Queries
SELECT 
    count(*) AS total_queries
FROM 
    pg_stat_activity
;

-- Count of Active Queries by State
SELECT 
    state, 
    count(*) AS total_queries
FROM 
    pg_stat_activity 
GROUP BY 
    state
;

-- Count of Queries Waiting for Lock
SELECT 
    count(distinct pid) AS total_waiting
FROM 
    pg_locks 
WHERE 
    granted = false
;

-- Max Transaction Age
SELECT 
    max(now() - xact_start) 
FROM 
    pg_stat_activity
WHERE 
    state IN ('idle in transaction', 'active')
;