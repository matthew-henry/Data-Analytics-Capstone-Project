CREATE EXTERNAL TABLE 'openaq_jsonfix'(
    'date' struct<utc:string, local:string> COMMENT 'from deserializer',
    'parameter' string COMMENT 'from deserializer',
    'location' string COMMENT 'from deserializer',
    'value' float COMMENT 'from deserializer',
    'unit' string COMMENT 'from deserializer',
    'city' string COMMENT 'from deserializer',
    'attribution' array<struct<name:string,url:string>> COMMENT 'from deserializer',
    'averagingperiod' struct<unti:string,value:float> COMMENT 'from deserializer',
    'coordinates' struct<latitude:float, longitude:float> COMMENT 'from deserializer',
    'country' string COMMENT 'from deserializer',
    'sourcename' string COMMENT 'from deserializer',
    'sourcetype' string COMMENT 'from deserializer',
    'mobile' string COMMENT 'from deserializer')
ROW FORMAT SERDE
    'org.openx.data.jsonserde.JsonSerDe'
WITH SERDEPROPERTIES (
    'ignore.malformed.json'='true')
STORED AS INPUTFORMAT
    'org.apahce.hadoop.mapred.TextInputFormat'
LOCATION 
    's3://openaq-fetches/realtime-gzipped'
TBLPROPERTIES (
    'transient_lastDblTime'='1518373755')