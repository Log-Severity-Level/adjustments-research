-- HADOOP
SELECT DISTINCT(CONCAT('https://github.com/apache/hadoop/blob/', SUBSTRING(branch_name_2,  8), '/', filename)) as "url",
	branch_name_2 as "branch_name",
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='Hadoop'
	AND changed_severity_level='Yes' 
	ORDER BY version_2, version2_2, version3_2	
-- 580 results

-- HBASE
SELECT DISTINCT(CONCAT('https://github.com/apache/hbase/blob/', SUBSTRING(branch_name_2,  7), '/', filename)) as "url",
-- 	DISTINCT filename,
	branch_name_2 as "branch_name",
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='HBase'
	AND changed_severity_level='Yes'
	ORDER BY version_2, version2_2, version3_2
--	541 results
	
-- Kafka
SELECT DISTINCT(CONCAT('https://github.com/apache/kafka/blob/', SUBSTRING(branch_name_2,  7), '/', filename)) as "url",
-- 	DISTINCT filename,
	branch_name_2 as "branch_name",
	version_2, version2_2, version3_2
	FROM stage.changes
	WHERE system_name='Kafka'
	AND changed_severity_level='Yes'
	ORDER BY version_2, version2_2, version3_2
-- 118 results

