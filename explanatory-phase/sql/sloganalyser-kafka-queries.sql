-- Kafka
-- * All adjustments
SELECT COUNT(*)
	FROM stage.changes
	WHERE system_name='Kafka'
	AND changed_severity_level='Yes'
-- 223

-- * All adjustments, excluding 'System.*'
SELECT COUNT(*)
	FROM stage.changes
	WHERE system_name='Kafka'
	AND changed_severity_level='Yes'
	AND severity_level_1 NOT LIKE ('SYSTEM%')
	AND severity_level_2 NOT LIKE ('SYSTEM%')
-- 219

-- * All distinct files with adjustments
SELECT DISTINCT(CONCAT('https://github.com/apache/kafka/blob/', SUBSTRING(branch_name_2,  7), '/', filename)) as "git_url",
-- 	DISTINCT filename,
	branch_name_2 as "branch_name",
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='Kafka'
	AND changed_severity_level='Yes'
	ORDER BY version_2, version2_2, version3_2
-- 118

-- * All distinct files with adjustments, excluding 'System.*'
SELECT DISTINCT(CONCAT('https://github.com/apache/kafka/blob/', SUBSTRING(branch_name_2,  7), '/', filename)) as "git_url",
-- 	DISTINCT filename,
	branch_name_2 as "branch_name",
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='Kafka'
	AND changed_severity_level='Yes'
	AND severity_level_1 NOT LIKE ('SYSTEM%')
	AND severity_level_2 NOT LIKE ('SYSTEM%')
	ORDER BY version_2, version2_2, version3_2
-- 115
