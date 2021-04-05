FROM nginx
LABEL author="Isaac R. Sartori Jr. <isaac.sartori@universo.univates.br"
WORKDIR /usr/share/nginx/html/
EXPOSE 80
COPY index.html /usr/share/nginx/html/index.html