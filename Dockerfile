FROM ubuntu
MAINTAINER Irma Carolina Ruiz - Com4 - TUIA

RUN apt-get update && apt-get upgrade -y && apt-get install bc locales -y
RUN sed -i '/es_AR.UTF-8/ s/^# //g' /etc/locale.gen && locale-gen

ADD [ "Intro.txt", "menu.sh", "/home/carolina/Documentos/TP-Entorno/" ]
ADD [ "Texto", "/home/carolina/Documentos/TP-Entorno/Texto/" ]
ADD [ "Codigos", "/home/carolina/Documentos/TP-Entorno/Codigos/" ]

WORKDIR /home/carolina/Documentos/TP-Entorno

ENTRYPOINT ["bash", "/home/carolina/Documentos/TP-Entorno/menu.sh"]

