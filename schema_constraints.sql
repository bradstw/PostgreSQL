-- List All Table Constraints (primary key, foreign key) for a Specified Schema

SELECT 
	conrelid::regclass AS orig_table,
	conname AS constr_name,
	pg_get_constraintdef(c.oid) AS constr_definition
FROM   
	pg_constraint c
JOIN pg_namespace n 
	ON n.oid = c.connamespace
WHERE  
	contype IN ('f', 'p ')
	AND n.nspname = 'SCHEMA NAME'
ORDER BY 
	conrelid::regclass::text, 
	contype DESC
;