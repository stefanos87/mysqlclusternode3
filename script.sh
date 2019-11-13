#!/bin/bash
echo "Start mysql"
/etc/init.d/mysql start -D FOREGROUND
sleep 120
mysql -uroot -proot \
  -e "GRANT ALL ON *.* TO 'root'@'%.%.%.%' identified by 'root';" \
  -e "GRANT ALL ON *.* TO 'root'@'localhost' identified by 'root';" 
  
# sleep 120

# mysql -uroot -proot \
#   -e "RESET MASTER;" \
#   -e "START GROUP_REPLICATION;" \
#   -e "SELECT * FROM performance_schema.replication_group_members;" 



