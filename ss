hive --service metastore-----------Startup Hive Embedded
hive --service hiveserver-----------Startup Hive Standalone



./schematool -initSchema -dbType derby

hive --service hiveserver2 启动hive服务

CREATE EXTERNAL TABLE cs_rec_dzqmanoperationhis(key int, info map<string,string>) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' 
WITH SERDEPROPERTIES ("hbase.columns.mapping" ="info:")  
TBLPROPERTIES  ("hbase.table.name" = "cs_rec_dzqmanoperationhis");

CREATE EXTERNAL TABLE cs_rec_dzqcleanhis(key int, info map<string,string>) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' 
WITH SERDEPROPERTIES ("hbase.columns.mapping" ="info:")  
TBLPROPERTIES  ("hbase.table.name" = "cs_rec_dzqcleanhis");



http://www.centoscn.com/image-text/install/2016/0504/7167.html

http://blog.csdn.net/cuihaolong/article/details/52064824

http://www.tuicool.com/articles/7feqMri




export HIVE_HOME=/data1/hive

export PATH=$PATH:$HIVE_HOME/bin

export HBASE_HOME=/data1/hbase-1.0.3

export PATH=$PATH:$HBASE_HOME/bin
