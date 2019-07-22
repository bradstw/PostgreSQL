-- Autovacuum Settings and Stats

SELECT 
	* 
FROM 
	pg_settings 
WHERE 
	category = 'Autovacuum'
;

-- Last Vacuum and AutoVacuum Ran on Table 

SELECT 
	relname AS table_name, 
	last_vacuum, 
	last_autovacuum 
FROM 
	pg_stat_user_tables
;

-- Display if Autovacuum is On (Should be on by default)
SHOW autovacuum
;

-- Disable Autovacuum for Specific Table
ALTER TABLE TABLENAME 
SET 
	autovacuum_enabled = false, 
	toast.autovacuum_enabled = false
;

-- Enable Autovacuum for Specific Table
ALTER TABLE TABLENAME
SET 
	autovacuum_enabled = true, 
	toast.autovacuum_enabled = true
;