# Utiliza Alpine como base
FROM alpine:latest

# Actualiza el sistema y luego instala Apache
RUN apk update && \
    apk add --no-cache apache2 && \
    rm -rf /var/cache/apk/*

# Copia un archivo HTML de ejemplo al directorio de documentos de Apache
COPY index.html /var/www/html

# Expone el puerto 80 para acceder a Apache
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD ["httpd", "-D", "FOREGROUND"]
