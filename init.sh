#!/bin/bash

if [ ! -z ${MYSQL_PORT_3306_TCP_ADDR+x} ]; then
    export GF_DATABASE_TYPE=mysql
    export GF_DATABASE_HOST=$MYSQL_PORT_3306_TCP_ADDR:$MYSQL_PORT_3306_TCP_PORT
fi

if [ ! -f /etc/grafana/grafana.ini  ]; then
    cp /etc/grafana-example/grafana.ini /etc/grafana/grafana.ini
fi

if [ ! -f /etc/grafana/ldap.toml  ]; then
    cp /etc/grafana-example/ldap.toml /etc/grafana/ldap.toml
fi

/usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini cfg:default.paths.data=/var/lib/grafana cfg:default.paths.logs=/var/log/grafana
