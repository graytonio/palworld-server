FROM steamcmd/steamcmd:ubuntu-22.04

## Create User
RUN adduser --disabled-password --gecos "User" palworld && \
    adduser palworld sudo && \
    echo "palworld ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    touch ~palworld/.sudo_as_admin_successful && \
    chown -R root:sudo /usr/local
USER palworld

RUN steamcmd +login anonymous +app_update 2394010 validate +quit
WORKDIR /root/Steam/steamapps/common/PalServer

ENTRYPOINT [ "/bin/bash" ]
CMD [ "./PalServer.sh" ]