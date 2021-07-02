FROM alpine:edge
LABEL maintainer="Daniel Rataj <daniel.rataj@centrum.cz>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-port-open"

LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-port-open"
LABEL com.whoopsmonitor.icon="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAQAAAAAYLlVAAAA7klEQVR42u3YPwrCMBzF8S/FSRT/HMGpdBcXB6UdCx30Di7dewJFzyDUwc3TqReISwdxKKmkStv33hRoyWdI4EdAURRFaVS2ZBbd1LX9AmPZeT2A2BoQ1wlImJQ0qR8Qln4TCtARQI+cG1dGAIy4ciOn9zvAtLhuAQBBsZp2CDAutvQB8IvV+JeHcEnECg8AjzURS11DAVoN6LMj44LBcC6dhs4YDBcydvTdAQ7Wo8h79+4A+VeA3C3gyaxCn+4B90p/3AUQQAABBBBAgBYCHqVPM599uAf8dSQ7fQU4ugMMSa2eKN+bMkBRFEVpQl5xxn+PyF/GbQAAAABJRU5ErkJggg=="
LABEL com.whoopsmonitor.env.WM_HOST="127.0.0.1"
LABEL com.whoopsmonitor.env.WM_PORT="22"

RUN apk add --no-cache netcat-openbsd=1.130-r2

COPY entrypoint.sh /opt/whoopsmonitor/entrypoint.sh
RUN chmod +x /opt/whoopsmonitor/entrypoint.sh

ENTRYPOINT ["/opt/whoopsmonitor/entrypoint.sh"]
