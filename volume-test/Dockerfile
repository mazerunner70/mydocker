FROM ubuntu

ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME

USER user

CMD /bin/bash

