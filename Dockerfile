FROM grafana/grafana
MAINTAINER Domen Ipavec <domen@ipavec.net>

COPY init.sh /usr/bin/init.sh

RUN cp -r /etc/grafana /etc/grafana-example

EXPOSE 3000
VOLUME ["/var/lib/grafana", "/var/log/grafana", "/etc/grafana"]

ENTRYPOINT []
CMD ["/usr/bin/init.sh"]
