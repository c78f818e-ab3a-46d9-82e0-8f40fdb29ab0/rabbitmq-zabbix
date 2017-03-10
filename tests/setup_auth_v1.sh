#!/bin/sh
echo "Setting up rabbit auth file"

cat<<EOF>/srv/zabbix/libexec/.rab.auth
USERNAME=guest
PASSWORD=guest
LOGFILE=/var/log/zabbix/rabbitmq_zabbix.log
LOGLEVEL=DEBUG
HOSTNAME=localhost
PORT=15672
EOF
