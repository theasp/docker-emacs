#!/bin/bash
set -ex

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 873503A090750CDAEB0754D93FF0E01EEAAFC9CD
cat >> /etc/apt/sources.list <<EOF
deb http://ppa.launchpad.net/kelleyk/emacs/ubuntu xenial main
EOF

apt-get update -q
apt-get install -q -y \
        emacs25 \
        fonts-dejavu-extra \
        fonts-droid-fallback \
        fonts-fantasque-sans \
        fonts-font-awesome \
        fonts-freefont-ttf \
        fonts-hack-otf \
        fonts-jsmath \
        fonts-jura \
        fonts-liberation \
        fonts-lmodern \
        fonts-lyx \
        fonts-materialdesignicons-webfont \
        fonts-mathjax-extras \
        fonts-noto \
        fonts-opendyslexic \
        fonts-opensymbol \
        fonts-powerline \
        fonts-roboto \
        fonts-symbola \
        git \
        gnupg2 \
        littler \
        openjdk-8-jdk \
        r-recommended \
        subversion \
        supervisor \
        texlive \
        texlive-xetex \
        ttf-anonymous-pro \
        ttf-bitstream-vera \
        ttf-ubuntu-font-family \
        ttf-unifont \
        ttf-xfree86-nonfree \
        w3m
