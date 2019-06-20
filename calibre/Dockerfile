FROM ubuntu:18.04
LABEL maintainer "MazeRunner70"

# to get an X11 env
RUN apt-get update && apt-get install -y \
        xauth \
        x11-apps \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
        calibre \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*


VOLUME /home/user1

RUN useradd -ms /bin/bash user1 \
    && chown -R user1:user1 /home/user1

USER user1

CMD /usr/bin/calibre

