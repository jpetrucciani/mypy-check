FROM python:3.8.2-alpine

ENV REVIEWDOG_VERSION=v0.11.0

RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}

COPY requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add bash gcc musl-dev && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
