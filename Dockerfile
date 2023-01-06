FROM docker.io/alpine:latest
LABEL maintainer="toughIQ@gmail.com"

RUN mkdir /fishnet && \
    useradd -r -s /bin/bash -g root -G root -u 1000 fishnet

WORKDIR /fishnet

RUN wget https://fishnet-releases.s3.dualstack.eu-west-3.amazonaws.com/v2.6.7/fishnet-v2.6.7-x86_64-unknown-linux-musl && \
    mv fishnet-v2.6.5-x86_64-unknown-linux-musl fishnet && \
    chmod +x fishnet
#    ./fishnet --auto-update

RUN chgrp -R 0 /fishnet && \
    chmod -R 775 /fishnet

USER fishnet
    
CMD ["./fishnet","--auto-update"]
