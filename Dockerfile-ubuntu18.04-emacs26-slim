FROM theasp/userlayer:ubuntu18.04
RUN set -ex; \
    . /etc/lsb-release; \
    echo 'APT::Install-Recommends "0";' > /etc/apt/apt.conf.d/99no-recommends; \
    apt-get update -q; \
    apt-get install -q -y gnupg2; \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 873503A090750CDAEB0754D93FF0E01EEAAFC9CD; \
    echo deb http://ppa.launchpad.net/kelleyk/emacs/ubuntu ${DISTRIB_CODENAME} main >> /etc/apt/sources.list; \
    apt-get update -q; \
    apt-get install -q -y \
        emacs26 \
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
        fonts-mathjax-extras \
        fonts-noto \
        fonts-opendyslexic \
        fonts-opensymbol \
        fonts-powerline \
        fonts-roboto \
        fonts-symbola \
        git \
        gnupg2 \
        hunspell \
        hunspell-en-ca \
        hunspell-en-us \
        rsync \
        subversion \
        supervisor \
        ttf-anonymous-pro \
        ttf-bitstream-vera \
        ttf-ubuntu-font-family \
        ttf-unifont \
        ttf-xfree86-nonfree \
        w3m
COPY app/ /app/
