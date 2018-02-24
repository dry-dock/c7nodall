FROM drydock/c7all:master

ADD . /c7nodall

RUN /c7nodall/install.sh && rm -rf /c7nodall
