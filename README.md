# AdmOKD-Ativ2

O resultado final dessa atividade pode ser acessado:
- no [github](https://github.com/isaacrsjr/AdmOKD-Ativ2)
- no [repositório docker](https://hub.docker.com/repository/docker/isaacrsjr/adm_okd_ativ2)

## Subatividade 1
Para a realização da tarefa foi criado o arquivo *index.html* e *Dockerfile*.
O *commit* no github, referente a essa atividade é [esse aqui](https://github.com/isaacrsjr/AdmOKD-Ativ2/tree/v1).

index.html:
```html
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

Dockerfile:
```dockerfile
FROM nginx
LABEL author="Isaac R. Sartori Jr. <isaac.sartori@universo.univates.br"
WORKDIR /usr/share/nginx/html/
EXPOSE 80
COPY index.html /usr/share/nginx/html/index.html
```

Comandos Executados:
```bash
docker build -t isaacrsjr/adm_okd_ativ2:v1 .
docker run --rm -p 80:80 isaacrsjr/adm_okd_ativ2:v1 #somente para testar
docker push isaacrsjr/adm_okd_ativ2:v1
```

## Subatividade 2
Para a realização dessa tarefa, foram feitas as seguintes atividades:
1. baixado o [app python](https://drive.google.com/file/d/1StZsLvNB7-9nkvI2cHlmRzZv1d2-oPlk)
2. removido o arquivo *index.html*
3. alterado o arquivo *Dockerfile*

O *commit* no github, referente a essa atividade é [esse aqui](https://github.com/isaacrsjr/AdmOKD-Ativ2/tree/v2).

Dockerfile:
```dockerfile
FROM ubuntu
LABEL author="Isaac R. Sartori Jr. <isaac.sartori@universo.univates.br"
RUN apt-get update && apt-get install python3 python3-pip -y
EXPOSE 5000
WORKDIR /app/
COPY app/ /app/
RUN pip3 install -r requirements.txt
CMD ["python3", "app.py"]
```

Comandos Executados:
```bash
docker build -t isaacrsjr/adm_okd_ativ2:v2 .
docker run --rm -p 80:5000 isaacrsjr/adm_okd_ativ2:v2 #somente para testar
docker push isaacrsjr/adm_okd_ativ2:v2
```
