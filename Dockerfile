FROM ubuntu:18.04

RUN apt update && apt upgrade -y 

RUN apt install -y apt-utils

RUN apt install -y \ 
  libxrender1 \
  libxkbcommon0 \
  libice6 \
  libsm6 \
  libxi6 \
  libfreetype6 \
  libfontconfig1 \
  libbsd0 \
  libdrm2 \
  libxxf86vm1 \
  libxdmcp6 \
  libxau6 \
  libx11-6 \
  libx11-xcb1 \
  libxfixes3 \
  libxdamage1 \
  libxext6 \
  libglapi-mesa \
  libxshmfence1 \
  libxcb-dri2-0 \
  libxcb-glx0 \
  libxcb-sync1 \
  libxcb-present0 \
  libxcb-dri3-0 \
  libxcb1 \
  libexpat1 \
  libgl1-mesa-glx \
  libdbus-1-3 \
  libglib2.0-0 \
  libquadmath0 \
  libgomp1 \
  libharfbuzz0b \
  libssl1.1 \
  libpng16-16 \
  libgfortran3 \
  libreadline7

RUN apt install -y freeglut3-dev

COPY cura-lulzbot_3.6.21_amd64.deb .

RUN dpkg -i cura-lulzbot_3.6.21_amd64.deb

CMD /usr/bin/cura-lulzbot