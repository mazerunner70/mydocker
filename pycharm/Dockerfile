FROM ubuntu:18.04 
LABEL maintainer "Jessie Frazelle <jess@linux.com>"

RUN apt-get update && apt-get install -y \
	ca-certificates \
	curl \
	dirmngr \
	gnupg \
	libasound2 \
	libdbus-glib-1-2 \
	libgtk-3-0 \
	libxrender1 \
	libx11-xcb-dev \
	libx11-xcb1 \
	libxt6 \
	xz-utils \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y python-pip \
      vim \
      wget \
      x11-utils \
	xfonts-base \
      xpra \
      software-properties-common \
      python3-pip

RUN pip3 install setuptools --upgrade      

#Install python3.6
# (first line is workaround: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199)
#RUN add-apt-repository 'deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu bionic main' && \
#    apt-get update && \
#    apt-get install -y python3.6

# install PyCharm
RUN cd / && \
    wget -q http://download.jetbrains.com/python/pycharm-community-2019.1.1.tar.gz && \
    tar xvfz pycharm-community-2019.1.1.tar.gz && \ 
    rm pycharm-community-2019.1.1.tar.gz 

USER user

CMD [ "/pycharm-community-2019.1.1/bin/pycharm.sh"]
