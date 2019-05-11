FROM ubuntu:18.04
LABEL maintainer "MazeRunner70"

# to get an X11 env
RUN apt-get update && apt-get install -y \
        xauth \
        x11-apps \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# dependencies for Gramps
RUN apt-get update && apt-get install -y \
        python3-gi-cairo \
        python3-bsddb3 \
        xdg-utils \
        wget \
        gir1.2-gtk-3.0 \
        librsvg2-2 \
        gcc \
        g++ \
        python3.6 \
        python3.6-dev \
        python3.pip \
        python3-setuptools \
        libicu-dev \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*


RUN cd / && \
    wget -q --no-check-certificate https://github.com/gramps-project/gramps/releases/download/v5.0.1/gramps_5.0.1-1_all.deb && \
    dpkg -i gramps_5.0.1-1_all.deb && \
    rm gramps_5.0.1-1_all.deb

RUN pip3 install \
           wheel \
           pyICU

VOLUME /home/user1

RUN useradd -ms /bin/bash user1 \
    && chown -R user1:user1 /home/user1

RUN ls -l /home

USER user1

CMD /usr/bin/gramps

