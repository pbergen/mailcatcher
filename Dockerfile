FROM ruby:2.5.3-alpine3.8

RUN set -xe \
        && apk add --no-cache \
            libstdc++ \
            sqlite-libs \
        && apk add --no-cache --virtual .build-deps \
            build-base \
            sqlite-dev \
        && gem install mailcatcher -v 0.6.5 --no-ri --no-rdoc \
        && apk del .build-deps

# smtp port
EXPOSE 25

# webserver port
EXPOSE 80

CMD ["mailcatcher", "--foreground", "--ip=0.0.0.0", "--smtp-port=25", "--http-port=80"]