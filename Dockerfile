FROM alpine

RUN apk update && \
    apk add --virtual build_deps build-base gcc libc-dev binutils \
    autoconf make linux-headers libffi-dev readline-dev gdbm-dev \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev curl 

COPY ruby-install.sh /
RUN sh ruby-install.sh && rm ruby-install.sh
