# DoNotStarveTogether-Docker-ARM

Docker file to build an image with steamcmd, box64, box86, and DoNotstraveTogether server for ARM

image uses Weilbyte/box [here](https://github.com/Weilbyte/box)  as base, then installs steamcmd with the DoNotstraveTogether server and exposes default port of 10999-11000:10999-11000/udp   12346-12347:12346-12347/udp

The custom init.sh script launches the server

### Build

`sudo docker build --no-cache -f Dockerfile  -t donotstravetogether-arm .`

then you should have an image with the tag donotstravetogether-arm! Enjoy.
