FROM python:3.8.1-alpine

LABEL "maintainer"="Jacobi Petrucciani <jacobi@mimirhq.com>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add gcc musl-dev && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
