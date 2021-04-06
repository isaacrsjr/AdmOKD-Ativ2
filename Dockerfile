FROM ubuntu
LABEL author="Isaac R. Sartori Jr. <isaac.sartori@universo.univates.br"
RUN apt-get update && apt-get install python3 python3-pip -y
EXPOSE 5000
WORKDIR /app/
COPY app/ /app/
RUN pip3 install -r requirements.txt
CMD ["python3", "app.py"]