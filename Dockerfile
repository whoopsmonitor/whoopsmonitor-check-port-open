FROM alpine:edge
LABEL maintainer="Daniel Rataj <daniel.rataj@centrum.cz>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-port-open"

LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-port-open"
LABEL com.whoopsmonitor.env.WM_HOST="127.0.0.1"
LABEL com.whoopsmonitor.env.WM_PORT="22"

RUN apk add --no-cache netcat-openbsd=1.130-r2

COPY entrypoint.sh /opt/whoopsmonitor/entrypoint.sh
RUN chmod +x /opt/whoopsmonitor/entrypoint.sh

ENTRYPOINT ["/opt/whoopsmonitor/entrypoint.sh"]
