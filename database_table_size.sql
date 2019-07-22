-- Database Table Total Size and Index Size
SELECT
  schemaname AS "Database",
  relname AS "Table",
  pg_size_pretty(pg_total_relation_size(relid)) AS "Total Size",
  pg_size_pretty(pg_total_relation_size(relid) - pg_relation_size(relid)) AS "Index Size"
FROM 
	pg_catalog.pg_statio_user_tables 
ORDER BY 
	pg_total_relation_size(relid) DESC
;