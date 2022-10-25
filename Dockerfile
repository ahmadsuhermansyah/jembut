FROM python:latest

RUN apt update && apt upgrade -y

RUN pip3 install -U pip

COPY requirement.txt /requirement.txt
RUN cd /
RUN pip3 install -U -r requirement.txt
RUN mkdir /jembut
WORKDIR /jembut
COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
