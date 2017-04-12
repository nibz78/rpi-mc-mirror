FROM armhf/alpine:latest

WORKDIR /root/

RUN apk add --update curl mysql-client &&  \
    curl https://dl.minio.io/client/mc/release/linux-arm/mc > /usr/local/bin/mc && \
    chmod +x /usr/local/bin/mc

ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ["/root/entrypoint.sh"]

