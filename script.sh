#!/bin/bash
echo "Start mysql"
/etc/init.d/mysql start -D FOREGROUND

sleep 120

mysql -uroot -proot \
  -e "RESET MASTER;" \
  -e "START GROUP_REPLICATION;" \
  -e "SELECT * FROM performance_schema.replication_group_members;" 



