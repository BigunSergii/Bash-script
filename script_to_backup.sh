#! /bin/bash

dump_dir="/home/serhii/Scripts/databases_backup"
DATABASE="itstep"
dumpfile="itstep-$(date +"%Y-%m-%d:%T").sql"

mysqldump -u root -p='1' $DATABASE > $dump_dir/$dumpfile