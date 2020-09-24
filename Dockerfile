FROM lklock/docker-janus

COPY ./janus.plugin.videoroom.jcfg /var/janus/etc/janus/janus.plugin.videoroom.jcfg
COPY ./janus.jcfg /var/janus/etc/janus/janus.jcfg

CMD ["/var/janus/bin/janus", "-F", "/var/janus/etc/janus",  "-r 30000-30010"]
