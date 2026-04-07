# Usa a imagem leve do Nginx como base
FROM nginx:stable-alpine

# Remove os arquivos padrão que vêm com o Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os seus arquivos HTML para a pasta do servidor
COPY . /usr/share/nginx/html/

# Exponha a porta 80, que é o padrão do Nginx
EXPOSE 80

# Inicia o servidor
CMD ["nginx", "-g", "daemon off;"]
