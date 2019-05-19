FROM debian:latest
LABEL maintainer "mazerunner70"

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
      && rm -rf /var/lib/apt/lists/*

ENV SBT_VERSION 1.2.8
ENV SCALA_VERSION 2.12.8

# Install sbt
RUN \
  curl -L -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get update && \
  apt-get install -y sbt \
    openjdk-8-jdk \
    && rm -rf /var/lib/apt/lists/* \
    && sbt sbtVersion

# Install scala binaries
RUN \
  wget -q https://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz && \
  tar xfz scala-$SCALA_VERSION.tgz && \
  rm scala-$SCALA_VERSION.tgz


# install IDEA
RUN cd / && \
    wget -q http://download.jetbrains.com/idea/ideaIC-2019.1.2.tar.gz  && \
    tar xfz ideaIC-2019.1.2.tar.gz && \ 
    rm ideaIC-2019.1.2.tar.gz && \
    mv idea-* idea

USER user

CMD [ "/idea/bin/idea.sh"]
