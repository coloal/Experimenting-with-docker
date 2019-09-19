FROM ubuntu:16.04

RUN apt-get update -qq; \
  apt-get install -qq -y \
  gconf-service \
  lib32gcc1 \
  lib32stdc++6 \
  libasound2 \
  libc6 \
  libc6-i386 \
  libcairo2 \
  libcap2 \
  libcups2 \
  libdbus-1-3 \
  libexpat1 \
  libfontconfig1 \
  libfreetype6 \
  libgcc1 \
  libgconf-2-4 \
  libgdk-pixbuf2.0-0 \
  libgl1-mesa-glx \
  libglib2.0-0 \
  libglu1-mesa \
  libgtk2.0-0 \
  libnspr4 \
  libnss3 \
  libpango1.0-0 \
  libstdc++6 \
  libx11-6 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxi6 \
  libxrandr2 \
  libxrender1 \
  libxtst6 \
  libsoup2.4-1 \
  libarchive13 \
  zlib1g \
  debconf \
  npm \
  xdg-utils \
  lsb-release \
  libpq5 \
  xvfb \
  wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget -nv https://beta.unity3d.com/download/77a142ac9989/UnitySetup-2018.1.0b13; \
    chmod +x UnitySetup-2018.1.0b13; \
    echo y | ./UnitySetup-2018.1.0b13 --unattended --install-location=/opt/Unity --components=Unity,Windows-Mono

WORKDIR /root