#!/bin/bash

if [ ! -z ${MYSQL_PORT_3306_TCP_ADDR+x} ]; then
    export GF_DATABASE_TYPE=mysql
    export GF_DATABASE_HOST=$MYSQL_PORT_3306_TCP_ADDR
fi

/usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini cfg:default.paths.data=/var/lib/grafana cfg:default.paths.logs=/var/log/grafana
