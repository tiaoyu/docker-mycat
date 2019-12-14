# docker-mycat

docker-compose结构
```
docker-mycat
├── build.sh
├── compose
│   ├── docker-compose.yml
│   └── mycat-master
│       ├── Dockerfile
│       └── Mycat-server.tgz
├── configs
│   ├── haproxy
│   │   └── haproxy.cfg
│   ├── mycat-1
│   │   ├── autopartition-long.txt
│   │   ├── auto-sharding-long.txt
│   │   ├── auto-sharding-rang-mod.txt
│   │   ├── cacheservice.properties
│   │   ├── dbseq.sql
│   │   ├── dbseq\ -\ utf8mb4.sql
│   │   ├── dnindex.properties
│   │   ├── ehcache.xml
│   │   ├── index_to_charset.properties
│   │   ├── log4j2.xml
│   │   ├── migrateTables.properties
│   │   ├── myid.properties
│   │   ├── partition-hash-int.txt
│   │   ├── partition-range-mod.txt
│   │   ├── ruledata
│   │   ├── rule.xml
│   │   ├── schema.xml
│   │   ├── sequence_conf.properties
│   │   ├── sequence_db_conf.properties
│   │   ├── sequence_distributed_conf.properties
│   │   ├── sequence_time_conf.properties
│   │   ├── server.xml
│   │   ├── sharding-by-enum.txt
│   │   ├── wrapper.conf
│   │   ├── zkconf
│   │   └── zkdownload
│   ├── mycat-2
│   │   ├── autopartition-long.txt
│   │   ├── auto-sharding-long.txt
│   │   ├── auto-sharding-rang-mod.txt
│   │   ├── cacheservice.properties
│   │   ├── dbseq.sql
│   │   ├── dbseq\ -\ utf8mb4.sql
│   │   ├── dnindex.properties
│   │   ├── ehcache.xml
│   │   ├── index_to_charset.properties
│   │   ├── log4j2.xml
│   │   ├── migrateTables.properties
│   │   ├── myid.properties
│   │   ├── partition-hash-int.txt
│   │   ├── partition-range-mod.txt
│   │   ├── ruledata
│   │   ├── rule.xml
│   │   ├── schema.xml
│   │   ├── sequence_conf.properties
│   │   ├── sequence_db_conf.properties
│   │   ├── sequence_distributed_conf.properties
│   │   ├── sequence_time_conf.properties
│   │   ├── server.xml
│   │   ├── sharding-by-enum.txt
│   │   ├── wrapper.conf
│   │   ├── zkconf
│   │   └── zkdownload
│   ├── mycat-3
│   │   ├── autopartition-long.txt
│   │   ├── auto-sharding-long.txt
│   │   ├── auto-sharding-rang-mod.txt
│   │   ├── cacheservice.properties
│   │   ├── dbseq.sql
│   │   ├── dbseq\ -\ utf8mb4.sql
│   │   ├── dnindex.properties
│   │   ├── ehcache.xml
│   │   ├── index_to_charset.properties
│   │   ├── log4j2.xml
│   │   ├── migrateTables.properties
│   │   ├── myid.properties
│   │   ├── partition-hash-int.txt
│   │   ├── partition-range-mod.txt
│   │   ├── ruledata
│   │   ├── rule.xml
│   │   ├── schema.xml
│   │   ├── sequence_conf.properties
│   │   ├── sequence_db_conf.properties
│   │   ├── sequence_distributed_conf.properties
│   │   ├── sequence_time_conf.properties
│   │   ├── server.xml
│   │   ├── sharding-by-enum.txt
│   │   ├── wrapper.conf
│   │   ├── zkconf
│   │   └── zkdownload
│   ├── mysql-master-a
│   │   └── my.cnf
│   ├── mysql-master-b
│   │   └── my.cnf
│   ├── mysql-master-c
│   │   └── my.cnf
│   ├── mysql-slave-a1
│   │   └── my.cnf
│   ├── mysql-slave-b1
│   │   └── my.cnf
│   └── mysql-slave-c1
│       └── my.cnf
├── data
│   ├── m1platform.sql
│   ├── mysql-master-a
│   │   └── data
│   ├── mysql-master-b
│   │   └── data
│   ├── mysql-master-c
│   │   └── data
│   ├── mysql-slave-a1
│   │   └── data
│   ├── mysql-slave-b1
│   │   └── data
│   ├── mysql-slave-c1
│   │   └── data
│   └── zookeeper
│       ├── zoo1
│       ├── zoo2
│       └── zoo3
└── logs
```

启动
```
docker-compose up -d
sh build.sh
```
