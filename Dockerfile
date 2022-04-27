FROM alpine:3

ADD --chown=nobody:nogroup https://github.com/fluxcd/flux/releases/download/1.25.0/fluxctl_linux_amd64 /opt/

RUN apk update && apk upgrade && \
    rm -rf /var/cache/apk/* && \
    chmod 755 /opt/fluxctl_linux_amd64

USER nobody

ENTRYPOINT /opt/fluxctl_linux_amd64
