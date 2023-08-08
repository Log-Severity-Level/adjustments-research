-- HBASE

-- * All adjustments
SELECT COUNT(*)
	FROM stage.changes
	WHERE system_name='HBase'
	AND changed_severity_level='Yes'
-- 1028

-- * All adjustments, excluding 'System.*'
SELECT COUNT(*)
	FROM stage.changes
	WHERE system_name='HBase'
	AND changed_severity_level='Yes'
	AND severity_level_1 NOT LIKE ('SYSTEM%')
	AND severity_level_2 NOT LIKE ('SYSTEM%')
-- 972

-- * All distinct files with adjustments
SELECT DISTINCT(CONCAT('https://github.com/apache/hbase/blob/', SUBSTRING(branch_name_2,  7), '/', filename)) as "git_url",
-- 	DISTINCT filename,
	branch_name_2 as "branch_name",
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='HBase'
	AND changed_severity_level='Yes'
	ORDER BY version_2, version2_2, version3_2
--	541

-- * All distinct files with adjustments, excluding 'System.*'
SELECT DISTINCT(CONCAT('https://github.com/apache/hbase/blob/', SUBSTRING(branch_name_2,  7), '/', filename)) as "git_url",
-- 	DISTINCT filename,
	branch_name_2 as "branch_name",
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='HBase'
	AND changed_severity_level='Yes'
	AND severity_level_1 NOT LIKE ('SYSTEM%')
	AND severity_level_2 NOT LIKE ('SYSTEM%')
	ORDER BY version_2, version2_2, version3_2
--	515
