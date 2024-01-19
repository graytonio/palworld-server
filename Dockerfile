FROM gameservermanagers/linuxgsm:ubuntu-22.04

RUN steamcmd +login anonymous +app_update 2394010 validate +quit

WORKDIR /root/Steam/steamapps/common/PalServer

ENTRYPOINT [ "/bin/bash" ]
CMD [ "./PalServer.sh" ]