# Utiliza Alpine como base
FROM alpine:latest

# Actualiza el sistema y luego instala Apache
RUN apk update && \
    apk add apache2 

# Expone el puerto 80 para acceder a Apache
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD ["httpd", "-D", "FOREGROUND"]
