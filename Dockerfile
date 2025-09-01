FROM rssbridge/rss-bridge:latest

# Crea los directorios habituales donde vive RSS-Bridge
# (según la imagen pueden variar). Ponemos whitelist.txt en todos.
RUN mkdir -p /var/www/rss-bridge /var/www/html /app \
  && echo "*" | tee /var/www/rss-bridge/whitelist.txt /var/www/html/whitelist.txt /app/whitelist.txt >/dev/null \
  && chmod 644 /var/www/rss-bridge/whitelist.txt /var/www/html/whitelist.txt /app/whitelist.txt

# (opcional) zona horaria
ENV TZ=America/Santiago
