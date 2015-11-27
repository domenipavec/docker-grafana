FROM grafana/grafana
MAINTAINER Domen Ipavec <domen@ipavec.net>

COPY init.sh /usr/bin/init.sh

EXPOSE 3000
VOLUME ["/var/lib/grafana", "/var/log/grafana", "/etc/grafana"]

CMD ["/usr/bin/init.sh"]
