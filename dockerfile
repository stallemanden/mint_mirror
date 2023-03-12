FROM nginx

ENV SYNC_MIRROR false
ENV SYNC_PACKAGES true

RUN apt update \
    && apt install -y rsync \
    && apt install -y cron

RUN mkdir /mint 
RUN mkdir /mint/files/
RUN mkdir /mint/mirror/ 
RUN mkdir /mint/packages/

VOLUME /mint/mirror
VOLUME /mint/packages

COPY start.sh /docker-entrypoint.d/40-setupcron.sh
COPY conf.d /etc/nginx/conf.d
COPY sync_packages.sh /mint/files
COPY sync_mirror.sh /mint/files

RUN chmod +x /mint/files/sync_packages.sh
RUN chmod +x /mint/files/sync_mirror.sh
RUN chmod +x /docker-entrypoint.d/40-setupcron.sh
