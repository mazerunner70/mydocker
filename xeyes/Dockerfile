FROM ubuntu:18.04
LABEL maintainer "MazeRunner70"

RUN apt-get update && apt-get install -y \
        xauth \
        x11-apps \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*


ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME

USER user

CMD /usr/bin/xeyes

