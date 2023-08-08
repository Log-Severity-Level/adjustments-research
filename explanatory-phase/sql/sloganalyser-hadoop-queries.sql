-- HADOOP
-- * All adjustments
SELECT COUNT(*)
	FROM stage.changes
	WHERE system_name='Hadoop'
	AND changed_severity_level='Yes'
-- 1319

-- * All adjustments, excluding 'System.*'
SELECT COUNT(*)
	FROM stage.changes
	WHERE system_name='Hadoop'
	AND changed_severity_level='Yes'
	AND severity_level_1 NOT LIKE ('SYSTEM%')
	AND severity_level_2 NOT LIKE ('SYSTEM%')
-- 1037

-- * All distinct files with adjustments
SELECT DISTINCT(CONCAT('https://github.com/apache/hadoop/blob/', SUBSTRING(branch_name_2,  8), '/', filename)) as "git_url",
	branch_name_2 as "branch_name", 	
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='Hadoop'
	AND changed_severity_level='Yes'
	ORDER BY version_2, version2_2, version3_2	
-- 580

-- * All distinct files with adjustments, excluding 'System.*'
SELECT DISTINCT(CONCAT('https://github.com/apache/hadoop/blob/', SUBSTRING(branch_name_2,  8), '/', filename)) as "git_url",
	branch_name_2 as "branch_name", 	
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='Hadoop'
	AND changed_severity_level='Yes'
	AND severity_level_1 NOT LIKE ('SYSTEM%')
	AND severity_level_2 NOT LIKE ('SYSTEM%')
	ORDER BY version_2, version2_2, version3_2	
-- 502