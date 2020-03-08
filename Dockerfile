FROM alpine:latest

ENV HUGO_GIT_REPOSITORY http://example.com
ENV HUGO_CONFIG_FILE config.toml
ENV HUGO_BASE_URL /

RUN apk update && \
    apk upgrade && \
    apk add hugo asciidoctor git && \
    mkdir /build && \
    mkdir /site
    
COPY ./run.sh /run.sh

WORKDIR /

CMD ["/run.sh"]
