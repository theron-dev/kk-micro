FROM alpine:latest

COPY ./etc/timezone /etc/timezone

COPY ./etc/localtime /etc/localtime

COPY ./config /config

ENV KK_ENV_CONFIG /config/env.yaml

VOLUME /config

EXPOSE 80

COPY ./main /bin/kk-app

RUN chmod +x /bin/kk-app

CMD kk-app $KK_ENV_CONFIG

