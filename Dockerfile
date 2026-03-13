FROM docker.n8n.io/n8nio/n8n:latest

# Script de arranque que adapta n8n al puerto que Render asigna
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Renders suele exponer $PORT (por defecto 10000). Exponemos ese puerto
EXPOSE 10000

# Arranca n8n a traves del script 
CMD ["/start.sh"]


 

 

 

 
