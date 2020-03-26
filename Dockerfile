FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install pioneers-console pioneers-console-data
RUN ln -s /usr/games/pioneers-server-console /bin
EXPOSE 5556

ENTRYPOINT [ "/usr/games/pioneers-server-console" ]