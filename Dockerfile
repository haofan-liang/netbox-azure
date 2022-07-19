FROM netboxcommunity/netbox:v3.0.11
WORKDIR /opt/netbox/netbox

RUN apk add --no-cache \
      bash \
      build-base \
      cargo \
      ca-certificates \
      cmake \
      cyrus-sasl-dev \
      git \
      graphviz \
      jpeg-dev \
      libevent-dev \
      libffi-dev \
      libxslt-dev \
      make \
      musl-dev \
      openldap-dev \
      postgresql-dev \
      py3-pip \
      python3-dev

ENTRYPOINT [ "/opt/netbox/docker-entrypoint.sh"]
CMD [ "python3", "./manage.py", "runserver", "0.0.0.0:80", "--insecure" ]
