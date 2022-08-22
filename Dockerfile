FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/testing.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/testing

COPY testing.sh /usr/bin/testing.sh
RUN chmod +x /usr/bin/testing.sh
COPY target/testing.jar /usr/share/testing/testing.jar