FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install pioneers-console pioneers-console-data
RUN ln -s /usr/games/pioneers-server-console /bin && ln -s /usr/games/pioneersai /bin

#Expose standard port used by server
EXPOSE 5556

# Use trap in entrypoint overload to catch the ctrl+c and stop signals
COPY signal-listener.sh /run.sh
ENTRYPOINT ["/bin/bash", "/run.sh"]