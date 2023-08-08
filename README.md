# adjustments-research

## Explanatory Phase

### SLogAnalyser Queries

1. [SLogAnalyser query for Hadoop (502 git file urls)](explanatory-phase/sql/sloganalyser-hadoop-queries.sql): 
 [output (.csv)](explanatory-phase/asa-branca-extraction/input/hadoop-files-without-system.csv)  
2. [SLogAnalyser query for HBase (515 git file urls)](explanatory-phase/sql/sloganalyser-hbase-queries.sql): 
 [output (.csv)](explanatory-phase/asa-branca-extraction/input/hbase-files-without-system.csv)
3. [SLogAnalyser query for Kafka (115 git file urls)](explanatory-phase/sql/sloganalyser-kafka-queries.sql): 
 [output (.csv)](explanatory-phase/asa-branca-extraction/input/kafka-files-without-system.csv)

### AsaBranca outputs

1. Hadoop: [Jira issues (.csv)](explanatory-phase/asa-branca-extraction/output/hadoop-jira-without-system.csv) >>
      [Jira issues - null filter (.csv)](explanatory-phase/asa-branca-extraction/output/filter-null/hadoop-jira-without-system-filtered.csv) >> [Jira issues - duplicate filter (.csv)](explanatory-phase/asa-branca-extraction/output/filter-duplicate/hadoop-jira-without-duplicate.csv)
2. HBase: [Jira issues (.csv)](explanatory-phase/asa-branca-extraction/output/hbase-jira-without-system.csv) >>
      [Jira issues - null filter (.csv)](explanatory-phase/asa-branca-extraction/output/filter-null/hbase-jira-without-system-filtered.csv) >> [Jira issues - duplicate filter (.csv)](explanatory-phase/asa-branca-extraction/output/filter-duplicate/hbase-jira-without-duplicate.csv)
3. Kafka: [Jira issues (.csv)](explanatory-phase/asa-branca-extraction/output/kafka-jira-without-system.csv) >>
      [Jira issues - null filter (.csv)](explanatory-phase/asa-branca-extraction/output/filter-null/kafka-jira-without-system-filtered.csv) >> [Jira issues - duplicate filter (.csv)](explanatory-phase/asa-branca-extraction/output/filter-duplicate/kafka-jira-without-duplicate.csv)
