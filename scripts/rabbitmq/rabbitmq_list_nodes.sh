#!/bin/bash
#
#
cd "$(dirname "$0")"
. .rab.auth

if [[ -z "$HOSTNAME" ]]; then
    HOSTNAME=`hostname`
fi
if [[ -z "$NODE" ]]; then
    NODE=`hostname`
fi

./rabbitmq_api_v1.py --username=$USERNAME --password=$PASSWORD --check=list_nodes --filter="$FILTER" --conf=$CONF --hostname=$HOSTNAME --node="$NODE" --loglevel=${LOGLEVEL} --logfile=${LOGFILE} --port=$PORT --protocol=$PROTOCOL
