FROM python:3.8.2-alpine

LABEL "maintainer"="Jacobi Petrucciani <jacobi@hackerrank.com>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh
ADD github.py /github.py

RUN apk add gcc musl-dev && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
