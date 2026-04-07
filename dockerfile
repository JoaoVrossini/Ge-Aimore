# Estágio 1: Servidor Web de alta performance
FROM nginx:stable-alpine

# Remove os arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os arquivos do projeto para o diretório do servidor
# Certifique-se de que o Dockerfile está na mesma pasta que os arquivos .html
COPY . /usr/share/nginx/html/

# Exponha a porta 80 (padrão HTTP)
EXPOSE 80

# Inicia o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]  