FROM redislabs/redisgraph:2.8.19

COPY --from=zappi/redis:6.2.6 /opt/redis/scripts/ /opt/redis/scripts/
