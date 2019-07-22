-- Query Column Definitions from Specified Table

SELECT 
	*
FROM 
	information_schema.columns
WHERE 
	table_schema = 'SCHEMA NAME'
  AND table_name   = 'TABLE NAME'
;