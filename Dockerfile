FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/statusneo.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/statusneo

COPY statusneo.sh /usr/bin/statusneo.sh
RUN chmod +x /usr/bin/statusneo.sh
COPY target/statusneo.jar /usr/share/statusneo/statusneo.jar