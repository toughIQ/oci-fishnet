FROM docker.io/niklasf/fishnet:2
LABEL maintainer="toughIQ@gmail.com"

# set permissions for OCP
RUN mkdir /.fishnet-stats
    chgrp -R 0 /.fishnet-stats && \
    chmod -R 775 /.fishnet-stats
