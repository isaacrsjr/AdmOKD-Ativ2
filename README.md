# AdmOKD-Ativ2

O resultado final dessa atividade pode ser acessado:

- no [github](https://github.com/isaacrsjr/AdmOKD-Ativ2)
- no [repositório docker](https://hub.docker.com/repository/docker/isaacrsjr/adm_okd_ativ2)

## Subatividades da Semana 2

### Subatividade 1

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

### Subatividade 2

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

### Subatividade 3

Para a realização dessa tarefa, foi configurado no [docker hub](https://hub.docker.com/repository/docker/isaacrsjr/adm_okd_ativ2/builds) a regra que utiliza a regex ```/^(v\d+)$/``` que gera um build com a tab v\<numero>, baseada na tag do github.

Para a geração do novo *build* basta fazer as alterações e, em seguinda, digitar:

```bash
git add .
git commit -m '<mensagem>'
git push
git tag v<número inteiro>         # exemplo: git tab v3
git push origin v<número inteiro> # exemplo: git push origin v3
```

O *commit* no github, referente a essa atividade é [esse aqui](https://github.com/isaacrsjr/AdmOKD-Ativ2/tree/v3).

## Alteração para o Trabalho Final

Para a realização dessa tarefa, foi configurado no [docker hub](https://hub.docker.com/repository/docker/isaacrsjr/adm_okd_ativ2/builds) a regra que utiliza a regex ```/^(.*)$/``` que gera um build com a tag igual da tag do github.

Para a geração do novo *build* basta fazer as alterações e, em seguinda, digitar:

```bash
git add .
git commit -m '<mensagem>'
git push
git tag <nome da tag>         # exemplo: git tab blue
git push origin <nome da tag> # exemplo: git push origin blue
```
