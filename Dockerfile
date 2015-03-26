FROM scoutapp/docker-scout
MAINTAINER Oliver Soell <oliver@soell.net>

ADD scoutd.yml.tmpl /etc/scout/scoutd.yml.tmpl

ENTRYPOINT ["/bin/bash", "-c", "cat /etc/scout/scoutd.yml.tmpl | envsubst > /etc/scout/scoutd.yml"]
CMD ["/usr/bin/scoutd", "start"]