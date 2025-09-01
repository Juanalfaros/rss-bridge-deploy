FROM rssbridge/rss-bridge:latest

# habilita todos los bridges
RUN echo "*" > /var/www/rss-bridge/whitelist.txt

# (opcional) setea la zona horaria
ENV TZ=America/Santiago
