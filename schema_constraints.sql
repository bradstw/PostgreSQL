-- List All Table Constraints for a Specified Schema

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
	AND n.nspname = 'sb' -- your schema here
ORDER BY 
	conrelid::regclass::text, 
	contype DESC
;