FROM weilbyte/box

#Install steamcmd

RUN apt update -y && apt install curl -y && apt-get install libgcc1 -y

WORKDIR /root/steam
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
RUN export DEBUGGER="/usr/local/bin/box86"
ENV DEBUGGER "/usr/local/bin/box86"
RUN ./steamcmd.sh +@sSteamCmdForcePlatformBitness 64 +@sSteamCmdForcePlatformType linux +login anonymous +force_install_dir /root/steam/steamapps/common/ +app_update 343050 validate +quit

# Specific

EXPOSE 10999-11000:10999-11000/udp
EXPOSE 12346-12347:12346-12347/udp
WORKDIR /root

COPY init.sh .
RUN chmod +x init.sh
CMD ["/bin/bash", "/root/init.sh"]

