FROM node

LABEL maintainer="Robson Carvalho"

RUN apt-get update && \
    apt-get install -y git

RUN git config --global user.name "Robson01jc"
RUN git config --global user.email "robson01jc@gmail.com"

WORKDIR "/app"
RUN git clone https://github.com/Robson01jc/watchit.git

WORKDIR "/app/watchit"
RUN npm install

CMD ["tail", "-f", "/dev/null"]
