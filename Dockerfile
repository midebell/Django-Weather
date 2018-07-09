FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python python-pip -y
RUN mkdir /opt/app
COPY * /opt/app/

RUN pip install -r /opt/app/requirements.txt

COPY docker-entrypoint.sh /

EXPOSE 6000
ENTRYPOINT "/docker-entrypoint.sh"