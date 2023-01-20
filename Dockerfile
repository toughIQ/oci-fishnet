FROM docker.io/niklasf/fishnet:2
LABEL maintainer="toughIQ@gmail.com"

# set permissions for OCP
RUN chgrp -R 0 /fishnet && \
    chmod -R 775 /fishnet
