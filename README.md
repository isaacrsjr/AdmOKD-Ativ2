# AdmOKD-Ativ2
## Item 1
Para a realização da tarefa foi criado o arquivo *index.html* e *Dockerfile*.

### index.html
```
<html>
    <head>
        <title>Atividade 2</title>
    </head>
    <body>
        <h1>Atividade 2 - Item 1</h1>
        <p>Cria&ccedil;&atilde;o de uma imagem docker com nginx com esse arquvo index.html</p>
        <p>Aluno: Isaac R. Sartori Jr.</p>
    </body>
</html>
```

### Dockerfile
```
FROM nginx
LABEL author="Isaac R. Sartori Jr. <isaac.sartori@universo.univates.br"
WORKDIR /usr/share/nginx/html/
EXPOSE 80
COPY index.html /usr/share/nginx/html/index.html
```
### Comandos Executados:
```
docker build -t isaacrsjr/adm_okd_ativ2:v1 .
docker run --rm -p 80:80 isaacrsjr/adm_okd_ativ2:v1
docker push isaacrsjr/adm_okd_ativ2:v1
```
