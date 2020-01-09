FROM fluent/fluent-bit:latest

WORKDIR /usr/src/work_fluent

# Configuration files
COPY td-agent-bit.conf \
     parsers.conf \
     plugins.conf \
     /fluent-bit/etc/

EXPOSE 2020
EXPOSE 8086

# Entry point
CMD ["/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/etc/td-agent-bit.conf"]