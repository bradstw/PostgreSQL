-- Database Total Size
-- Replace SCHEMA NAME with Real Schema Name on System

SELECT 
	pg_size_pretty(pg_database_size('SCHEMA NAME')) AS db_size