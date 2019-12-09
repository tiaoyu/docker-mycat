#!/bin/bash
mysql_slave_user=repl_user
mysql_slave_password=repl_pwd
root_user=root
root_pwd=123456

# 定义mysql主从字典
declare -A dic_master
array_slave_a=(mysql-slave-a1)
array_slave_b=(mysql-slave-b1)
array_slave_c=(mysql-slave-c1)
dic_master=([mysql-master-a]=${array_slave_a[@]} [mysql-master-b]=${array_slave_b[@]} [mysql-master-c]=${array_slave_c[@]})

# 添加从机访问主机使用的用户名密码
for master in $(echo ${!dic_master[*]});do
  docker exec $master sh -c "export MYSQL_PWD=$root_pwd;mysql -u root -e 'GRANT REPLICATION SLAVE ON *.* TO \"$mysql_slave_user\"@\"%\" IDENTIFIED BY \"$mysql_slave_password\"; FLUSH PRIVILEGES'"
done;

# 设置主从服务器同步
for master in $(echo ${!dic_master[*]});do
  BIN_LOG=`docker exec $master sh -c 'export MYSQL_PWD=123456; mysql -u root -e "show master status"' | grep "mysql-" | awk '{print $1}'`
  BIN_POS=`docker exec $master sh -c 'export MYSQL_PWD=123456; mysql -u root -e "show master status"' | grep "mysql-" | awk '{print $2}'`
  for slave in ${dic_master[$master]};do
    master_slave_stmt="CHANGE MASTER TO
      MASTER_HOST='$master',
      MASTER_USER='$mysql_slave_user',
      MASTER_PASSWORD='$mysql_slave_password',
      MASTER_LOG_FILE='$BIN_LOG',
      MASTER_LOG_POS=$BIN_POS;"
    echo "$master_slave_stmt"
    docker exec $slave sh -c "export MYSQL_PWD='$root_pwd';mysql -u root -e \"STOP SLAVE;$master_slave_stmt START SLAVE;\""
  done;
done;
