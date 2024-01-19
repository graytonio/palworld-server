FROM steamcmd/steamcmd:ubuntu-22

RUN steamcmd +login anonymous +app_update 2394010 validate +quit

WORKDIR /root/Steam/steamapps/common/PalServer

ENTRYPOINT [ "/bin/bash" ]
CMD [ "./PalServer.sh" ]