FROM alpine:latest

COPY ./etc/timezone /etc/timezone

COPY ./etc/localtime /etc/localtime

COPY ./main /bin/kk-app

RUN chmod +x /bin/kk-app

COPY ./config /config

ENV KK_ENV_CONFIG /config/env.yaml

VOLUME /config

EXPOSE 80

CMD kk-app $KK_ENV_CONFIG

